// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

// Project imports:
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'mock.mocks.dart';

MockClientContext buildGetStub(
  final UserContext userContext,
  final String unencodedPath,
  final String resourcePath,
  final Map<String, String> queryParameters,
) {
  final mockClientContext = MockClientContext();

  when(mockClientContext.get(
    userContext,
    Uri.https('codercampapi.azure-api.net', unencodedPath, queryParameters),
  )).thenAnswer(
    (_) async => http.Response(
      await File(resourcePath).readAsString(),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    ),
  );

  return mockClientContext;
}

MockClientContext buildPostStub(
  final UserContext userContext,
  final String unencodedPath,
  final String resourcePath, {
  Map<String, String> queryParameters = const {},
}) {
  final mockClientContext = MockClientContext();

  when(mockClientContext.post(
    userContext,
    Uri.https('codercampapi.azure-api.net', unencodedPath, queryParameters),
    headers: anyNamed('headers'),
    body: anyNamed('body'),
  )).thenAnswer(
    (_) async => http.Response(
      await File(resourcePath).readAsString(),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    ),
  );

  return mockClientContext;
}

MockClientContext buildDeleteStub(
  final String unencodedPath,
  final String resourcePath,
) {
  final mockClientContext = MockClientContext();

  when(mockClientContext.delete(
    UserContext.oauth2OrOAuth1,
    Uri.https('codercampapi.azure-api.net', unencodedPath),
  )).thenAnswer(
    (_) async => http.Response(
      await File(resourcePath).readAsString(),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    ),
  );

  return mockClientContext;
}

MockClientContext buildPutStub(
  final String unencodedPath,
  final String resourcePath,
) {
  final mockClientContext = MockClientContext();

  when(mockClientContext.put(
    UserContext.oauth2OrOAuth1,
    Uri.https('codercampapi.azure-api.net', unencodedPath),
    headers: anyNamed('headers'),
    body: anyNamed('body'),
  )).thenAnswer(
    (_) async => http.Response(
      await File(resourcePath).readAsString(),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    ),
  );

  return mockClientContext;
}

MockClientContext buildSendStub(
  final UserContext userContext,
  final String resourcePath, [
  final Map<String, String>? queryParameters,
]) {
  final mockClientContext = MockClientContext();

  Stream<List<int>> responseStream() async* {
    final converter = JsonUtf8Encoder();
    final responsesString = await File(resourcePath).readAsString();
    final responses = jsonDecode(responsesString) as List<dynamic>;

    for (final response in responses) {
      yield converter.convert(response);
    }
  }

  when(mockClientContext.getStream(
    userContext,
    any,
  )).thenAnswer(
    (_) async {
      return http.StreamedResponse(
        responseStream(),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    },
  );

  return mockClientContext;
}
