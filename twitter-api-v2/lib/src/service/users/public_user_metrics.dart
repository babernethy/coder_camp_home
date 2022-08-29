// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_metrics.freezed.dart';
part 'public_user_metrics.g.dart';

@freezed
class PublicUserMetrics with _$PublicUserMetrics {
  const factory PublicUserMetrics({
    /// Number of users who follow this user.
    required int followersCount,

    /// Number of users this user is following.
    required int followingCount,

    /// Number of Tweets (including Retweets) posted by this user.
    required int tweetCount,

    /// Number of lists that include this user.
    required int listedCount,
  }) = _PublicUserMetrics;

  factory PublicUserMetrics.fromJson(Map<String, Object?> json) =>
      _$PublicUserMetricsFromJson(json);
}
