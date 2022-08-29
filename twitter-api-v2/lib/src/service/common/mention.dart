// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mention.freezed.dart';
part 'mention.g.dart';

@freezed
class Mention with _$Mention {
  const factory Mention({
    /// The user id that created the mentions.
    String? id,

    /// The part of text recognized as a user mention.
    ///
    /// You can obtain the expanded object in includes.users by adding
    /// `TweetExpansion.entitiesMentionsUsername` in the request's query
    /// parameter.
    required String username,

    /// The start position (zero-based) of the recognized user mention within
    /// the Tweet. All start indices are inclusive.
    required int start,

    /// The end position (zero-based) of the recognized user mention within t
    /// he Tweet. This end index is exclusive.
    required int end,
  }) = _Mention;

  factory Mention.fromJson(Map<String, Object?> json) =>
      _$MentionFromJson(json);
}
