// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/tweet_field.dart';

void main() {
  test('.name', () {
    expect(TweetField.attachments.name, 'attachments');
    expect(TweetField.authorId.name, 'authorId');
    expect(TweetField.contextAnnotations.name, 'contextAnnotations');
    expect(TweetField.conversationId.name, 'conversationId');
    expect(TweetField.createdAt.name, 'createdAt');
    expect(TweetField.entities.name, 'entities');
    expect(TweetField.geo.name, 'geo');
    expect(TweetField.id.name, 'id');
    expect(TweetField.inReplyToUserId.name, 'inReplyToUserId');
    expect(TweetField.lang.name, 'lang');
    expect(TweetField.publicMetrics.name, 'publicMetrics');
    expect(TweetField.possiblySensitive.name, 'possiblySensitive');
    expect(TweetField.referencedTweets.name, 'referencedTweets');
    expect(TweetField.replySettings.name, 'replySettings');
    expect(TweetField.source.name, 'source');
    expect(TweetField.text.name, 'text');
    expect(TweetField.withheld.name, 'withheld');
  });

  test('.value', () {
    expect(TweetField.attachments.value, 'attachments');
    expect(TweetField.authorId.value, 'author_id');
    expect(TweetField.contextAnnotations.value, 'context_annotations');
    expect(TweetField.conversationId.value, 'conversation_id');
    expect(TweetField.createdAt.value, 'created_at');
    expect(TweetField.entities.value, 'entities');
    expect(TweetField.geo.value, 'geo');
    expect(TweetField.id.value, 'id');
    expect(TweetField.inReplyToUserId.value, 'in_reply_to_user_id');
    expect(TweetField.lang.value, 'lang');
    expect(TweetField.publicMetrics.value, 'public_metrics');
    expect(TweetField.possiblySensitive.value, 'possibly_sensitive');
    expect(TweetField.referencedTweets.value, 'referenced_tweets');
    expect(TweetField.replySettings.value, 'reply_settings');
    expect(TweetField.source.value, 'source');
    expect(TweetField.text.value, 'text');
    expect(TweetField.withheld.value, 'withheld');
  });
}
