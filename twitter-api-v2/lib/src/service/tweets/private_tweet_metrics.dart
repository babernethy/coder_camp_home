// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_tweet_metrics.freezed.dart';
part 'private_tweet_metrics.g.dart';

@freezed
class PrivateTweetMetrics with _$PrivateTweetMetrics {
  const factory PrivateTweetMetrics({
    /// A count of how many times the Tweet has been viewed
    /// (not unique by user). A view is counted if any part of the Tweet is
    /// visible on the screen.
    required int impressionCount,

    /// A count of the number of times a user clicks the following portions of
    /// a Tweet: display name, user name, profile picture.
    @JsonKey(name: 'user_profile_clicks') required int profileClickCount,

    /// A count of the number of times a user clicks on a URL link or URL
    /// preview card in a Tweet.
    @JsonKey(name: 'url_link_clicks') required int linkClickCount,
  }) = _PrivateTweetMetrics;

  factory PrivateTweetMetrics.fromJson(Map<String, Object?> json) =>
      _$PrivateTweetMetricsFromJson(json);
}
