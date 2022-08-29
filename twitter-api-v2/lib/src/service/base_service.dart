// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert' as converter;

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import '../client/client_context.dart';
import '../client/stream_request.dart';
import '../client/user_context.dart';
import '../exception/rate_limit_exceeded_exception.dart';
import '../exception/twitter_exception.dart';
import '../exception/unauthorized_exception.dart';
import 'common/includes.dart';
import 'common/serializable.dart';
import 'response_field.dart';
import 'twitter_response.dart';

abstract class Service {
  Future<http.Response> get(UserContext userContext, String unencodedPath);

  Future<Stream<Map<String, dynamic>>> getStream(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<http.Response> post(
    UserContext userContext,
    String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    Map<String, String> body = const {},
  });

  Future<http.Response> delete(UserContext userContext, String unencodedPath);

  Future<http.Response> put(
    UserContext userContext,
    String unencodedPath, {
    Map<String, String> body = const {},
  });

  TwitterResponse<D, M> transformSingleDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  });

  TwitterResponse<List<D>, M> transformMultiDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  });

  bool evaluateResponse(final http.Response response);
}

abstract class BaseService implements Service {
  /// Returns the new instance of [BaseService].
  BaseService({required ClientContext context}) : _context = context;

  /// The base url
  static const _authority = 'codercampapi.azure-api.net';

  /// The twitter client
  final ClientContext _context;

  @override
  Future<http.Response> get(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async =>
      _checkResponse(
        await _context.get(
          userContext,
          Uri.https(
            _authority,
            unencodedPath,
            _convertQueryParameters(queryParameters),
          ),
        ),
      );

  @override
  Future<Stream<Map<String, dynamic>>> getStream(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final streamedResponse = await _context.getStream(
      userContext,
      StreamRequest(
        Uri.https(
          _authority,
          unencodedPath,
          _convertQueryParameters(queryParameters),
        ),
      ),
    );

    return streamedResponse.stream
        .transform(converter.utf8.decoder)
        .map((event) => _checkStreamedResponse(streamedResponse, event));
  }

  @override
  Future<http.Response> post(
    final UserContext userContext,
    final String unencodedPath, {
    Map<String, dynamic> queryParameters = const {},
    dynamic body = const {},
  }) async =>
      _checkResponse(
        await _context.post(
          userContext,
          Uri.https(
            _authority,
            unencodedPath,
            _convertQueryParameters(queryParameters),
          ),
          headers: {'Content-type': 'application/json'},
          body: converter.jsonEncode(_removeNullParameters(body)),
        ),
      );

  @override
  Future<http.Response> delete(
    final UserContext userContext,
    final String unencodedPath,
  ) async =>
      _checkResponse(
        await _context.delete(
          userContext,
          Uri.https(_authority, unencodedPath),
        ),
      );

  @override
  Future<http.Response> put(
    final UserContext userContext,
    final String unencodedPath, {
    dynamic body = const {},
  }) async =>
      _checkResponse(
        await _context.put(
          userContext,
          Uri.https(_authority, unencodedPath),
          headers: {'Content-type': 'application/json'},
          body: converter.jsonEncode(_removeNullParameters(body)),
        ),
      );

  @override
  TwitterResponse<D, M> transformSingleDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  }) {
    final jsonBody = _checkResponseBody(response);
    return TwitterResponse(
      data: dataBuilder(jsonBody[ResponseField.data.value]),
      includes: jsonBody.containsKey(ResponseField.includes.value)
          ? Includes.fromJson(jsonBody[ResponseField.includes.value])
          : null,
      meta:
          jsonBody.containsKey(ResponseField.meta.value) && metaBuilder != null
              ? metaBuilder(jsonBody[ResponseField.meta.value])
              : null,
    );
  }

  @override
  TwitterResponse<List<D>, M> transformMultiDataResponse<D, M>(
    http.Response response, {
    required D Function(Map<String, Object?> json) dataBuilder,
    M Function(Map<String, Object?> json)? metaBuilder,
  }) {
    final jsonBody = _checkResponseBody(response);
    return TwitterResponse(
      data: jsonBody[ResponseField.data.value]
          .map<D>((tweet) => dataBuilder(tweet))
          .toList(),
      includes: jsonBody.containsKey(ResponseField.includes.value)
          ? Includes.fromJson(jsonBody[ResponseField.includes.value])
          : null,
      meta:
          jsonBody.containsKey(ResponseField.meta.value) && metaBuilder != null
              ? metaBuilder(jsonBody[ResponseField.meta.value])
              : null,
    );
  }

  @override
  bool evaluateResponse(final http.Response response) =>
      !_tryJsonDecode(response, response.body)
          .containsKey(ResponseField.errors.value);

  dynamic _tryJsonDecode(
    final http.BaseResponse response,
    final String body,
  ) {
    try {
      return converter.jsonDecode(body);
    } on FormatException {
      throw TwitterException(
        'Failed to decode the response body as JSON.',
        response,
      );
    }
  }

  Map<String, dynamic> _checkResponseBody(final http.Response response) {
    final jsonBody = _tryJsonDecode(response, response.body);

    if (!jsonBody.containsKey(ResponseField.data.value)) {
      //! This occurs when the tweet to be processed has been deleted or
      //! when the target data does not exist at the time of search.
      throw TwitterException(
        'No response data exists for the request.',
        response,
      );
    }

    return jsonBody;
  }

  dynamic _removeNullParameters(final dynamic object) {
    if (object is! Map) {
      return object;
    }

    final parameters = <String, dynamic>{};
    object.forEach((key, value) {
      final newObject = _removeNullParameters(value);
      if (newObject != null) {
        parameters[key] = newObject;
      }
    });

    return parameters.isNotEmpty ? parameters : null;
  }

  http.Response _checkResponse(
    final http.Response response,
  ) {
    if (response.statusCode == 401) {
      throw UnauthorizedException('The specified access token is invalid.');
    }

    final jsonBody = _tryJsonDecode(response, response.body);

    if (jsonBody.containsKey(ResponseField.errors.value)) {
      final errors = jsonBody[ResponseField.errors.value];
      for (final error in errors) {
        if (error['code'] == 88) {
          throw RateLimitExceededException(error['message'] ?? '');
        }
      }
    }

    return response;
  }

  http.StreamedResponse _checkStreamedResponseError(
    final http.StreamedResponse response,
    final String event,
  ) {
    if (response.statusCode == 401) {
      throw UnauthorizedException('The specified access token is invalid.');
    }

    final jsonBody = _tryJsonDecode(response, event);

    if (jsonBody.containsKey(ResponseField.errors.value)) {
      final errors = jsonBody[ResponseField.errors.value];
      for (final error in errors) {
        if (error['code'] == 88) {
          throw RateLimitExceededException(error['message'] ?? '');
        }
      }
    }

    return response;
  }

  Map<String, dynamic> _checkStreamedResponse(
    final http.StreamedResponse response,
    final String event,
  ) {
    final jsonBody = _tryJsonDecode(
      _checkStreamedResponseError(response, event),
      event,
    );

    if (!jsonBody.containsKey(ResponseField.data.value)) {
      throw TwitterException(
        'No response data exists for the request.',
        response,
        event,
      );
    }

    return jsonBody;
  }

  Map<String, String> _convertQueryParameters(
    final Map<String, dynamic> queryParameters,
  ) {
    final serializedParameters = queryParameters.map((key, value) {
      if (value is List<Serializable>?) {
        return MapEntry(
          key,
          value?.toSet().map((e) => e.value).toList().join(','),
        );
      } else if (value is List<Enum>?) {
        return MapEntry(
          key,
          value?.toSet().map((e) => e.name).join(','),
        );
      } else if (value is List?) {
        return MapEntry(
          key,
          value?.toSet().join(','),
        );
      }

      return MapEntry(key, value);
    });

    return Map.from(_removeNullParameters(serializedParameters) ?? {}).map(
      //! Uri.https(...) needs iterable in the value for query params by
      //! which it means a String in the value of the Map too. So you need
      //! to convert it from Map<String, dynamic> to Map<String, String>
      (key, value) {
        if (value is DateTime) {
          return MapEntry(key, value.toUtc().toIso8601String());
        }

        return MapEntry(key, value.toString());
      },
    );
  }
}
