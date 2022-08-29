// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_media_metrics.freezed.dart';
part 'public_media_metrics.g.dart';

@freezed
class PublicMediaMetrics with _$PublicMediaMetrics {
  const factory PublicMediaMetrics({
    /// A count of how many times the video included in the Tweet has been
    /// viewed.
    ///
    /// This is the number of video views aggregated across all Tweets in which
    /// the given video has been posted. That means that the metric includes
    /// the combined views from any instance where the video has been Retweeted
    /// or re-posted in separate Tweets.
    required int viewCount,
  }) = _PublicMediaMetrics;

  factory PublicMediaMetrics.fromJson(Map<String, Object?> json) =>
      _$PublicMediaMetricsFromJson(json);
}
