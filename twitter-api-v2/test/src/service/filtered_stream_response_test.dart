// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/filtered_stream_response.dart';
import 'package:twitter_api_v2/src/service/tweets/matching_rule.dart';
import 'package:twitter_api_v2/src/service/tweets/tweet_data.dart';

void main() {
  test('.toString', () {
    final response = FilteredStreamResponse(
      data: TweetData(id: '123', text: 'test'),
      matchingRules: [
        MatchingRule(id: '456', tag: 'test'),
      ],
    );

    expect(
        response.toString(),
        'FilteredStreamResponse(data: TweetData(id: 123, text: test, '
        'authorId: null, inReplyToUserId: null, conversationId: null, '
        'referencedTweets: null, contextAnnotations: null, entities: null, '
        'attachments: null, privateMetrics: null, organicMetrics: null, '
        'promotedMetrics: null, publicMetrics: null, geo: null, lang: null, '
        'isPossiblySensitive: null, replySetting: null, source: null, '
        'withheld: null, createdAt: null), includes: null, meta: null, '
        'matchingRules: [MatchingRule(id: 456, tag: test)])');
  });
}
