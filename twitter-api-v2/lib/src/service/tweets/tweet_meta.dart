// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_meta.freezed.dart';
part 'tweet_meta.g.dart';

@freezed
class TweetMeta with _$TweetMeta {
  const factory TweetMeta({
    /// The Tweet ID of the most recent Tweet returned in the response.
    String? newestId,

    /// The Tweet ID of the oldest Tweet returned in the response.
    String? oldestId,

    /// The number of Tweet results returned in the response.
    int? resultCount,

    /// A value that encodes the next 'page' of results that can be requested,
    /// via the `pagination_token` request parameter.
    String? nextToken,

    /// A value that encodes the previous 'page' of results that can be
    /// requested, via the `pagination_token` request parameter.
    String? previousToken,
  }) = _TweetMeta;

  factory TweetMeta.fromJson(Map<String, Object?> json) =>
      _$TweetMetaFromJson(json);
}
