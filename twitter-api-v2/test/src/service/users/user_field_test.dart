// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/users/user_field.dart';

void main() {
  test('.name', () {
    expect(UserField.id.name, 'id');
    expect(UserField.description.name, 'description');
    expect(UserField.name.name, 'name');
    expect(UserField.username.name, 'username');
    expect(UserField.url.name, 'url');
    expect(UserField.profileImageUrl.name, 'profileImageUrl');
    expect(UserField.location.name, 'location');
    expect(UserField.pinnedTweetId.name, 'pinnedTweetId');
    expect(UserField.protected.name, 'protected');
    expect(UserField.verified.name, 'verified');
    expect(UserField.publicMetrics.name, 'publicMetrics');
    expect(UserField.entities.name, 'entities');
    expect(UserField.createdAt.name, 'createdAt');
    expect(UserField.withheld.name, 'withheld');
  });

  test('.value', () {
    expect(UserField.id.value, 'id');
    expect(UserField.description.value, 'description');
    expect(UserField.name.value, 'name');
    expect(UserField.username.value, 'username');
    expect(UserField.url.value, 'url');
    expect(UserField.profileImageUrl.value, 'profile_image_url');
    expect(UserField.location.value, 'location');
    expect(UserField.pinnedTweetId.value, 'pinned_tweet_id');
    expect(UserField.protected.value, 'protected');
    expect(UserField.verified.value, 'verified');
    expect(UserField.publicMetrics.value, 'public_metrics');
    expect(UserField.entities.value, 'entities');
    expect(UserField.createdAt.value, 'created_at');
    expect(UserField.withheld.value, 'withheld');
  });
}
