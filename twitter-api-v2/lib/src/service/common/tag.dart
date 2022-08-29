// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    /// The start position (zero-based) of the recognized tag within the object.
    /// All start indices are inclusive.
    required int start,

    /// The end position (zero-based) of the recognized tag within the object.
    /// This end index is exclusive.
    required int end,

    /// The text of the tag.
    required String tag,
  }) = _Tag;

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
}
