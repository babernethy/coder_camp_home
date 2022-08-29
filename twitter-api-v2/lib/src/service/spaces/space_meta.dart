// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_meta.freezed.dart';
part 'space_meta.g.dart';

@freezed
class SpaceMeta with _$SpaceMeta {
  const factory SpaceMeta({
    /// The number of spaces returned in this request.
    required int? resultCount,
  }) = _SpaceMeta;

  factory SpaceMeta.fromJson(Map<String, Object?> json) =>
      _$SpaceMetaFromJson(json);
}
