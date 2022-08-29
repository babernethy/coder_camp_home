// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organic_media_metrics.freezed.dart';
part 'organic_media_metrics.g.dart';

@freezed
class OrganicMediaMetrics with _$OrganicMediaMetrics {
  const factory OrganicMediaMetrics({
    /// The number of users who played through to each quartile in a video.
    ///
    /// This reflects the number of quartile views across all Tweets in which
    /// the given video has been posted.
    @JsonKey(name: 'playback_0_count') required int playback0Count,

    /// The number of users who played through to each quartile in a video.
    ///
    /// This reflects the number of quartile views across all Tweets in which
    /// the given video has been posted.
    @JsonKey(name: 'playback_25_count') required int playback25Count,

    /// The number of users who played through to each quartile in a video.
    ///
    /// This reflects the number of quartile views across all Tweets in which
    /// the given video has been posted.
    @JsonKey(name: 'playback_50_count') required int playback50Count,

    /// The number of users who played through to each quartile in a video.
    ///
    /// This reflects the number of quartile views across all Tweets in which
    /// the given video has been posted.
    @JsonKey(name: 'playback_75_count') required int playback75Count,

    /// The number of users who played through to each quartile in a video.
    ///
    /// This reflects the number of quartile views across all Tweets in which
    /// the given video has been posted.
    @JsonKey(name: 'playback_100_count') required int playback100Count,

    /// A count of how many times the video included in the Tweet has been
    /// viewed.
    ///
    /// This is the number of video views aggregated across all Tweets in which
    /// the given video has been posted. That means that the metric includes
    /// the combined views from any instance where the video has been Retweeted
    /// or re-posted in separate Tweets.
    required int viewCount,
  }) = _OrganicMediaMetrics;

  factory OrganicMediaMetrics.fromJson(Map<String, Object?> json) =>
      _$OrganicMediaMetricsFromJson(json);
}
