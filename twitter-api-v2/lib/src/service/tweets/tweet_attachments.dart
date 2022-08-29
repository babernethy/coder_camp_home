// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_attachments.freezed.dart';
part 'tweet_attachments.g.dart';

@freezed
class TweetAttachments with _$TweetAttachments {
  const factory TweetAttachments({
    /// List of unique identifiers of media attached to this Tweet. These
    /// identifiers use the same media key format as those returned by the
    /// Media Library.
    ///
    /// You can obtain the expanded object in includes.media by adding
    /// `TweetExpansion.attachmentsMediaKeys` in the request's query parameter.
    List<String>? mediaKeys,

    /// List of unique identifiers of polls present in the Tweets returned.
    /// These are returned as a string in order to avoid complications with
    /// languages and tools that cannot handle large integers.
    ///
    /// You can obtain the expanded object in includes.polls by adding
    /// `TweetExpansion.attachmentsPollIds` in the request's query parameter.
    List<String>? pollIds,
  }) = _TweetAttachments;

  factory TweetAttachments.fromJson(Map<String, Object?> json) =>
      _$TweetAttachmentsFromJson(json);
}
