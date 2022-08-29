// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/common/includes.dart';
import 'package:twitter_api_v2/src/service/tweets/tweet_data.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';

void main() {
  test('.hasIncludes', () {
    final response = TwitterResponse<bool, bool>(
      data: true,
      includes: Includes(),
      meta: false,
    );

    expect(response.hasIncludes, isTrue);
    expect(response.hasNotIncludes, isFalse);
  });

  test('.hasNotIncludes', () {
    final response = TwitterResponse<bool, bool>(data: true, meta: null);

    expect(response.hasNotIncludes, isTrue);
    expect(response.hasIncludes, isFalse);
  });

  test('.hasMeta', () {
    final response = TwitterResponse<bool, bool>(data: true, meta: false);

    expect(response.hasMeta, isTrue);
    expect(response.hasNotMeta, isFalse);
  });

  test('.hasNotMeta', () {
    final response = TwitterResponse<bool, bool>(data: true, meta: null);

    expect(response.hasNotMeta, isTrue);
    expect(response.hasMeta, isFalse);
  });

  group('.toJson', () {
    test('with multiple data', () {
      final response = TwitterResponse<TweetData, void>(
        data: TweetData(id: 'test1', text: 'test2'),
        includes: Includes(
          tweets: [
            TweetData(id: 'test1', text: 'test2'),
            TweetData(id: 'test3', text: 'test4')
          ],
        ),
      );

      expect(response.toJson(), {
        'data': {
          'id': 'test1',
          'text': 'test2',
          'author_id': null,
          'in_reply_to_user_id': null,
          'conversation_id': null,
          'referenced_tweets': null,
          'context_annotations': null,
          'entities': null,
          'attachments': null,
          'non_public_metrics': null,
          'organic_metrics': null,
          'promoted_metrics': null,
          'public_metrics': null,
          'geo': null,
          'lang': null,
          'possibly_sensitive': null,
          'reply_settings': null,
          'source': null,
          'withheld': null,
          'created_at': null
        },
        'includes': {
          'tweets': [
            {
              'id': 'test1',
              'text': 'test2',
              'author_id': null,
              'in_reply_to_user_id': null,
              'conversation_id': null,
              'referenced_tweets': null,
              'context_annotations': null,
              'entities': null,
              'attachments': null,
              'non_public_metrics': null,
              'organic_metrics': null,
              'promoted_metrics': null,
              'public_metrics': null,
              'geo': null,
              'lang': null,
              'possibly_sensitive': null,
              'reply_settings': null,
              'source': null,
              'withheld': null,
              'created_at': null
            },
            {
              'id': 'test3',
              'text': 'test4',
              'author_id': null,
              'in_reply_to_user_id': null,
              'conversation_id': null,
              'referenced_tweets': null,
              'context_annotations': null,
              'entities': null,
              'attachments': null,
              'non_public_metrics': null,
              'organic_metrics': null,
              'promoted_metrics': null,
              'public_metrics': null,
              'geo': null,
              'lang': null,
              'possibly_sensitive': null,
              'reply_settings': null,
              'source': null,
              'withheld': null,
              'created_at': null
            }
          ],
          'users': null,
          'media': null,
          'places': null,
          'polls': null,
          'topics': null
        },
        'meta': null,
      });
    });

    test('with multiple data', () {
      final response = TwitterResponse<List<TweetData>, void>(
        data: [
          TweetData(id: 'test1', text: 'test2'),
          TweetData(id: 'test3', text: 'test4')
        ],
        includes: null,
      );

      expect(response.toJson(), {
        'data': [
          {
            'id': 'test1',
            'text': 'test2',
            'author_id': null,
            'in_reply_to_user_id': null,
            'conversation_id': null,
            'referenced_tweets': null,
            'context_annotations': null,
            'entities': null,
            'attachments': null,
            'non_public_metrics': null,
            'organic_metrics': null,
            'promoted_metrics': null,
            'public_metrics': null,
            'geo': null,
            'lang': null,
            'possibly_sensitive': null,
            'reply_settings': null,
            'source': null,
            'withheld': null,
            'created_at': null
          },
          {
            'id': 'test3',
            'text': 'test4',
            'author_id': null,
            'in_reply_to_user_id': null,
            'conversation_id': null,
            'referenced_tweets': null,
            'context_annotations': null,
            'entities': null,
            'attachments': null,
            'non_public_metrics': null,
            'organic_metrics': null,
            'promoted_metrics': null,
            'public_metrics': null,
            'geo': null,
            'lang': null,
            'possibly_sensitive': null,
            'reply_settings': null,
            'source': null,
            'withheld': null,
            'created_at': null
          }
        ],
        'includes': null,
        'meta': null,
      });
    });
  });

  test('.toString', () {
    final response = TwitterResponse<bool, bool>(
      data: true,
      includes: Includes(),
      meta: false,
    );

    expect(
        response.toString(),
        'TwitterResponse(data: true, '
        'includes: Includes(tweets: null, users: null, '
        'media: null, places: null, polls: null, topics: null), '
        'meta: false)');
  });
}
