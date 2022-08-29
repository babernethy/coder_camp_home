// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'media_type.dart';
import 'organic_media_metrics.dart';
import 'private_media_metrics.dart';
import 'promoted_media_metrics.dart';
import 'public_media_metrics.dart';
import 'variant.dart';

part 'media_data.freezed.dart';
part 'media_data.g.dart';

/// Media refers to any image, GIF, or video attached to a Tweet. The media
/// object is not a primary object on any endpoint, but can be found and
/// expanded in the Tweet object.
///
/// The object is available for expansion with
/// `expansions=attachments.media_keys` to get the condensed object with only
/// default fields. Use the expansion with the field parameter: `media.fields`
/// when requesting additional fields to complete the object.
///
///  Note that video URLs are not currently available, only static images.
@freezed
class MediaData with _$MediaData {
  const factory MediaData({
    /// Unique identifier of the expanded media content.
    ///
    /// ## How It Can Be Used
    ///
    /// - Can be used to programmatically retrieve media.
    @JsonKey(name: 'media_key') required String key,

    /// Type of content (animated_gif, photo, video).
    ///
    /// ## How It Can Be Used
    ///
    /// - Classify the media as a photo, GIF, or video.
    required MediaType type,

    /// A direct URL to the media file on Twitter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Returns a Media object with a URL field for photos.
    String? url,

    /// A description of an image to enable and support accessibility. Can be
    /// up to 1000 characters long. Alt text can only be added to images at
    /// the moment.
    ///
    /// ## How It Can Be Used
    ///
    /// - Can be used to provide a written description of an image in case a
    ///   user is visually impaired.
    String? altText,

    /// Available when type is video. Duration in milliseconds of the video.
    @JsonKey(name: 'duration_ms') int? durationMilliseconds,

    /// Height of this content in pixels.
    int? height,

    /// Width of this content in pixels.
    int? width,

    /// Non-public engagement metrics for the media content at the time of the
    /// request. Requires user context authentication.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine video engagement: how many users played through to each
    ///   quarter of the video.
    @JsonKey(name: 'non_public_metrics') PrivateMediaMetrics? privateMetrics,

    /// Engagement metrics for the media content, tracked in an organic context,
    /// at the time of the request. Requires user context authentication.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine organic media engagement.
    OrganicMediaMetrics? organicMetrics,

    /// URL to the static placeholder preview of this content.
    String? previewImageUrl,

    /// Engagement metrics for the media content, tracked in a promoted context,
    /// at the time of the request. Requires user context authentication.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine media engagement when the Tweet was promoted.
    PromotedMediaMetrics? promotedMetrics,

    /// Public engagement metrics for the media content at the time of the
    /// request.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine total number of views for the video attached to the Tweet.
    PublicMediaMetrics? publicMetrics,

    /// Variants of media attached in the MediaObject.
    ///
    /// ## How It Can Be Used
    ///
    /// - Each media object may have multiple display or playback variants,
    ///   with different resolutions or formats.
    List<Variant>? variants,
  }) = _MediaData;

  factory MediaData.fromJson(Map<String, Object?> json) =>
      _$MediaDataFromJson(json);
}
