// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../common/serializable.dart';

enum MediaField implements Serializable {
  /// `media_key`
  mediaKey('media_key'),

  /// `type`
  type('type'),

  /// `url`
  url('url'),

  /// `duration_ms`
  durationMilliseconds('duration_ms'),

  /// `height`
  height('height'),

  /// `non_public_metrics`
  privateMetrics('non_public_metrics'),

  /// `organic_metrics`
  organicMetrics('organic_metrics'),

  /// `preview_image_url`
  previewImageUrl('preview_image_url'),

  /// `promoted_metrics`
  promotedMetrics('promoted_metrics'),

  /// `public_metrics`
  publicMetrics('public_metrics'),

  /// `width`
  width('width'),

  /// `altText`
  altText('alt_text'),

  /// `variants`
  variants('variants');

  @override
  final String value;

  const MediaField(this.value);
}
