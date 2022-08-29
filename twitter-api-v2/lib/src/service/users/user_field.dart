// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../common/serializable.dart';

enum UserField implements Serializable {
  /// `id`
  id('id'),

  /// `description`
  description('description'),

  /// `name`
  name('name'),

  /// `username`
  username('username'),

  /// `url`
  url('url'),

  /// `profile_image_url`
  profileImageUrl('profile_image_url'),

  /// `location`
  location('location'),

  /// `pinned_tweet_id`
  pinnedTweetId('pinned_tweet_id'),

  /// `protected`
  protected('protected'),

  /// `verified`
  verified('verified'),

  /// `public_metrics`
  publicMetrics('public_metrics'),

  /// `entities`
  entities('entities'),

  /// `created_at`
  createdAt('created_at'),

  /// `withheld`
  withheld('withheld');

  @override
  final String value;

  const UserField(this.value);
}
