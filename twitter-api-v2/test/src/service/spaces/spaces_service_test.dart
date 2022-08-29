// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/spaces/space_data.dart';
import 'package:twitter_api_v2/src/service/spaces/space_meta.dart';
import 'package:twitter_api_v2/src/service/spaces/space_state.dart';
import 'package:twitter_api_v2/src/service/spaces/spaces_service.dart';
import 'package:twitter_api_v2/src/service/spaces/topic_data.dart';
import 'package:twitter_api_v2/src/service/tweets/tweet_data.dart';
import 'package:twitter_api_v2/src/service/tweets/tweet_meta.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';
import 'package:twitter_api_v2/src/service/users/user_data.dart';
import '../../../mocks/client_context_stubs.dart' as context;
import '../common_expectations.dart';

void main() {
  group('.search', () {
    test('normal case', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/search',
          'test/src/service/spaces/data/search.json',
          {'query': 'Hello, World!'},
        ),
      );

      final response = await spacesService.search(query: 'Hello, World!');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<SpaceData>>());
      expect(response.meta, isA<SpaceMeta>());
      expect(response.data.length, 2);
      expect(response.data.first.id, '1DXxyRYNejbKM');
      expect(response.data.first.state, SpaceState.live);
      expect(response.data[1].state, SpaceState.scheduled);
      expect(response.meta!.resultCount, 2);
    });

    test('with invalid access token', () async {
      final spacesService = SpacesService(
        context: ClientContext(
          bearerToken: '',
          timeout: const Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await spacesService.search(query: 'Hello, World!'),
      );
    });

    test('with rate limit exceeded error', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/search',
          'test/src/service/spaces/data/rate_limit_exceeded_error.json',
          {'query': 'Hello, World!'},
        ),
      );

      expectRateLimitExceededException(
        () async => await spacesService.search(query: 'Hello, World!'),
      );
    });

    test('with errors', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/search',
          'test/src/service/spaces/data/no_data.json',
          {'query': 'Hello, World!'},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await spacesService.search(query: 'Hello, World!'),
      );
    });

    test('with no json', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/search',
          'test/src/service/spaces/data/no_json.json',
          {'query': 'Hello, World!'},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await spacesService.search(query: 'Hello, World!'),
      );
    });
  });

  group('.lookupById', () {
    test('normal case', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222',
          'test/src/service/spaces/data/lookup_by_id.json',
          {},
        ),
      );

      final response = await spacesService.lookupById(spaceId: '2222');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<SpaceData>());
      expect(response.data.id, '1DXxyRYNejbKM');
      expect(response.data.state, SpaceState.live);
    });

    test('with invalid access token', () async {
      final spacesService = SpacesService(
        context: ClientContext(
          bearerToken: '',
          timeout: const Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await spacesService.lookupById(spaceId: '2222'),
      );
    });

    test('with rate limit exceeded error', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222',
          'test/src/service/spaces/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await spacesService.lookupById(spaceId: '2222'),
      );
    });

    test('with errors', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222',
          'test/src/service/spaces/data/no_data.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await spacesService.lookupById(spaceId: '2222'),
      );
    });

    test('with no json', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222',
          'test/src/service/spaces/data/no_json.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await spacesService.lookupById(spaceId: '2222'),
      );
    });
  });

  group('.lookupByIds', () {
    test('normal case', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces',
          'test/src/service/spaces/data/lookup_by_ids.json',
          {'ids': '1DXxyRYNejbKM,2DXxyRYNejbKM'},
        ),
      );

      final response = await spacesService.lookupByIds(
        spaceIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<SpaceData>>());
      expect(response.data.first.id, '1DXxyRYNejbKM');
      expect(response.data.first.state, SpaceState.live);
    });

    test('with topic objects', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces',
          'test/src/service/spaces/data/lookup_by_ids_with_topics.json',
          {'ids': '1DXxyRYNejbKM,2DXxyRYNejbKM'},
        ),
      );

      final response = await spacesService.lookupByIds(
        spaceIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<SpaceData>>());
      expect(response.includes?.topics, isNotNull);
      expect(response.includes?.topics, isA<List<TopicData>>());
      expect(response.includes!.topics!.first.id, '847527650667094017');
      expect(response.includes!.topics!.first.name, 'Gaming');
      expect(response.includes!.topics!.first.description, 'All about gaming');
    });

    test('with invalid access token', () async {
      final spacesService = SpacesService(
        context: ClientContext(
          bearerToken: '',
          timeout: const Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await spacesService.lookupByIds(
          spaceIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces',
          'test/src/service/spaces/data/rate_limit_exceeded_error.json',
          {'ids': '1DXxyRYNejbKM,2DXxyRYNejbKM'},
        ),
      );

      expectRateLimitExceededException(
        () async => await spacesService.lookupByIds(
          spaceIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
        ),
      );
    });

    test('with errors', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces',
          'test/src/service/spaces/data/no_data.json',
          {'ids': '1DXxyRYNejbKM,2DXxyRYNejbKM'},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await spacesService.lookupByIds(
          spaceIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
        ),
      );
    });

    test('with no json', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces',
          'test/src/service/spaces/data/no_json.json',
          {'ids': '1DXxyRYNejbKM,2DXxyRYNejbKM'},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await spacesService.lookupByIds(
          spaceIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
        ),
      );
    });
  });

  group('.lookupBuyers', () {
    test('normal case', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222/buyers',
          'test/src/service/spaces/data/lookup_buyers.json',
          {},
        ),
      );

      final response = await spacesService.lookupBuyers(spaceId: '2222');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<UserData>>());
      expect(response.data.length, 2);
    });

    test('with invalid access token', () async {
      final spacesService = SpacesService(
        context: ClientContext(
          bearerToken: '',
          timeout: const Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await spacesService.lookupBuyers(spaceId: '2222'),
      );
    });

    test('with rate limit exceeded error', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222/buyers',
          'test/src/service/spaces/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await spacesService.lookupBuyers(spaceId: '2222'),
      );
    });

    test('with errors', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222/buyers',
          'test/src/service/spaces/data/no_data.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await spacesService.lookupBuyers(spaceId: '2222'),
      );
    });

    test('with no json', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222/buyers',
          'test/src/service/spaces/data/no_json.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await spacesService.lookupBuyers(spaceId: '2222'),
      );
    });
  });

  group('.lookupTweets', () {
    test('normal case', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222/tweets',
          'test/src/service/spaces/data/lookup_tweets.json',
          {},
        ),
      );

      final response = await spacesService.lookupTweets(spaceId: '2222');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<TweetData>>());
      expect(response.meta, isA<TweetMeta>());
      expect(response.data.length, 3);
      expect(response.meta!.resultCount, 3);
    });

    test('with invalid access token', () async {
      final spacesService = SpacesService(
        context: ClientContext(
          bearerToken: '',
          timeout: const Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await spacesService.lookupTweets(spaceId: '2222'),
      );
    });

    test('with rate limit exceeded error', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222/tweets',
          'test/src/service/spaces/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await spacesService.lookupTweets(spaceId: '2222'),
      );
    });

    test('with errors', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222/tweets',
          'test/src/service/spaces/data/no_data.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await spacesService.lookupTweets(spaceId: '2222'),
      );
    });

    test('with no json', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/2222/tweets',
          'test/src/service/spaces/data/no_json.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await spacesService.lookupTweets(spaceId: '2222'),
      );
    });
  });

  group('.lookupByCreatorIds', () {
    test('normal case', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/by/creator_ids',
          'test/src/service/spaces/data/lookup_by_creator_ids.json',
          {'user_ids': '1DXxyRYNejbKM,2DXxyRYNejbKM'},
        ),
      );

      final response = await spacesService.lookupByCreatorIds(
        userIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<SpaceData>>());
      expect(response.meta, isA<SpaceMeta>());
      expect(response.data.length, 2);
      expect(response.meta!.resultCount, 2);
    });

    test('with invalid access token', () async {
      final spacesService = SpacesService(
        context: ClientContext(
          bearerToken: '',
          timeout: const Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await spacesService.lookupByCreatorIds(
          userIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/by/creator_ids',
          'test/src/service/spaces/data/rate_limit_exceeded_error.json',
          {'user_ids': '1DXxyRYNejbKM,2DXxyRYNejbKM'},
        ),
      );

      expectRateLimitExceededException(
        () async => await spacesService.lookupByCreatorIds(
          userIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
        ),
      );
    });

    test('with errors', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/by/creator_ids',
          'test/src/service/spaces/data/no_data.json',
          {'user_ids': '1DXxyRYNejbKM,2DXxyRYNejbKM'},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await spacesService.lookupByCreatorIds(
          userIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
        ),
      );
    });

    test('with no json', () async {
      final spacesService = SpacesService(
        context: context.buildGetStub(
          UserContext.oauth2Only,
          '/twitterv2/2/spaces/by/creator_ids',
          'test/src/service/spaces/data/no_json.json',
          {'user_ids': '1DXxyRYNejbKM,2DXxyRYNejbKM'},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await spacesService.lookupByCreatorIds(
          userIds: ['1DXxyRYNejbKM', '2DXxyRYNejbKM'],
        ),
      );
    });
  });
}
