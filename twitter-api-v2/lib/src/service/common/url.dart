// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'url.freezed.dart';
part 'url.g.dart';

@freezed
class Url with _$Url {
  const factory Url({
    /// The start position (zero-based) of the recognized URL within the object.
    /// All start indices are inclusive.
    required int start,

    /// The end position (zero-based) of the recognized URL within the object.
    /// This end index is exclusive.
    required int end,

    /// The URL in the format posted by the user.
    required String url,

    /// The fully resolved URL.
    required String expandedUrl,

    /// The URL as displayed in the Twitter client.
    required String displayUrl,

    /// The full destination URL.
    String? unwoundUrl,

    /// The unique key to the media.
    String? mediaKey,
  }) = _Url;

  factory Url.fromJson(Map<String, Object?> json) => _$UrlFromJson(json);
}
