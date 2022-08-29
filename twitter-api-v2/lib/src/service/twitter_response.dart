// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'common/includes.dart';

/// The class represents the response from Twitter API v2.
class TwitterResponse<D, M> {
  /// Returns the new instance of [TwitterResponse].
  TwitterResponse({required this.data, this.includes, this.meta});

  /// The data field
  final D data;

  /// The includes field
  final Includes? includes;

  /// The meta field
  final M? meta;

  /// Returns true if this response has [includes], otherwise false.
  bool get hasIncludes => includes != null;

  /// Returns true if this response has not [includes], otherwise false.
  bool get hasNotIncludes => !hasIncludes;

  /// Returns true if this response has [meta], otherwise false.
  bool get hasMeta => meta != null;

  /// Returns true if this response has not [meta], otherwise false.
  bool get hasNotMeta => !hasMeta;

  Map<String, dynamic> toJson() => {
        'data': data is List
            ? (data as List).map((e) => e.toJson()).toList()
            : (data as dynamic).toJson(),
        'includes': includes?.toJson(),
        'meta': (meta as dynamic)?.toJson(),
      };

  @override
  String toString() =>
      'TwitterResponse(data: $data, includes: $includes, meta: $meta)';
}
