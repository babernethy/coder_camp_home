// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/reply_setting.dart';

void main() {
  test('.name', () {
    expect(ReplySetting.everyone.name == 'everyone', isTrue);
    expect(ReplySetting.following.name == 'following', isTrue);
    expect(ReplySetting.mentionedUsers.name == 'mentionedUsers', isTrue);
  });
}
