// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/client/client_context.dart';
import 'package:twitter_api_v2/src/client/user_context.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';
import 'package:twitter_api_v2/src/service/users/user_data.dart';
import 'package:twitter_api_v2/src/service/users/user_meta.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';
import '../../../mocks//client_context_stubs.dart' as context;
import '../common_expectations.dart';

void main() {
  group('.createFollow', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/following',
          'test/src/service/users/data/create_follow.json',
        ),
      );

      final response = await usersService.createFollow(
        userId: '0000',
        targetUserId: '1111',
      );

      expect(response, isA<bool>());
      expect(response, isTrue);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.createFollow(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/following',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.createFollow(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/following',
          'test/src/service/users/data/no_data.json',
        ),
      );

      final response = await usersService.createFollow(
        userId: '0000',
        targetUserId: '1111',
      );

      expect(response, isA<bool>());
      expect(response, isFalse);
    });
  });

  group('.destroyFollow', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildDeleteStub(
          '/twitterv2/2/users/0000/following/1111',
          'test/src/service/users/data/destroy_follow.json',
        ),
      );

      final response = await usersService.destroyFollow(
        userId: '0000',
        targetUserId: '1111',
      );

      expect(response, isA<bool>());
      expect(response, isTrue);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.destroyFollow(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildDeleteStub(
          '/twitterv2/2/users/0000/following/1111',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.destroyFollow(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildDeleteStub(
          '/twitterv2/2/users/0000/following/1111',
          'test/src/service/users/data/no_data.json',
        ),
      );

      final response = await usersService.destroyFollow(
        userId: '0000',
        targetUserId: '1111',
      );

      expect(response, isA<bool>());
      expect(response, isFalse);
    });
  });

  group('.lookupFollowers', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/followers',
          'test/src/service/users/data/lookup_followers.json',
          {},
        ),
      );

      final response = await usersService.lookupFollowers(userId: '0000');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<UserData>>());
      expect(response.meta, isA<UserMeta>());
      expect(response.data.length, 10);
      expect(response.meta!.resultCount, 10);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.lookupFollowers(userId: '0000'),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/followers',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.lookupFollowers(
          userId: '0000',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/followers',
          'test/src/service/users/data/no_data.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await usersService.lookupFollowers(
          userId: '0000',
        ),
      );
    });

    test('with no json', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/followers',
          'test/src/service/users/data/no_json.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await usersService.lookupFollowers(userId: '0000'),
      );
    });
  });

  group('.lookupFollowings', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/following',
          'test/src/service/users/data/lookup_followings.json',
          {},
        ),
      );

      final response = await usersService.lookupFollowings(userId: '0000');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<UserData>>());
      expect(response.meta, isA<UserMeta>());
      expect(response.data.length, 10);
      expect(response.meta!.resultCount, 10);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.lookupFollowings(userId: '0000'),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/following',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.lookupFollowings(
          userId: '0000',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/following',
          'test/src/service/users/data/no_data.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await usersService.lookupFollowings(
          userId: '0000',
        ),
      );
    });

    test('with no json', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/following',
          'test/src/service/users/data/no_json.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await usersService.lookupFollowings(userId: '0000'),
      );
    });
  });

  group('.lookupById', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000',
          'test/src/service/users/data/lookup_by_id.json',
          {},
        ),
      );

      final response = await usersService.lookupById(userId: '0000');

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<UserData>());
      expect(response.data.id, '2244994945');
      expect(response.data.name, 'Twitter Dev');
      expect(response.data.username, 'TwitterDev');
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.lookupById(userId: '0000'),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.lookupById(
          userId: '0000',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000',
          'test/src/service/users/data/no_data.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await usersService.lookupById(
          userId: '0000',
        ),
      );
    });

    test('with no json', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000',
          'test/src/service/users/data/no_json.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await usersService.lookupById(userId: '0000'),
      );
    });
  });

  group('.lookupByIds', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users',
          'test/src/service/users/data/lookup_by_ids.json',
          {'ids': '2244994945,783214'},
        ),
      );

      final response = await usersService.lookupByIds(
        userIds: ['2244994945', '783214'],
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<UserData>>());
      expect(response.data.length, 2);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.lookupByIds(userIds: []),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
          {'ids': '2244994945,783214'},
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.lookupByIds(
          userIds: ['2244994945', '783214'],
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users',
          'test/src/service/users/data/no_data.json',
          {'ids': '2244994945,783214'},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await usersService.lookupByIds(
          userIds: ['2244994945', '783214'],
        ),
      );
    });

    test('with no json', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users',
          'test/src/service/users/data/no_json.json',
          {'ids': '2244994945,783214'},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await usersService.lookupByIds(
          userIds: ['2244994945', '783214'],
        ),
      );
    });
  });

  group('.lookupByName', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/by/username/TwitterDev',
          'test/src/service/users/data/lookup_by_name.json',
          {},
        ),
      );

      final response = await usersService.lookupByName(
        username: 'TwitterDev',
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<UserData>());
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.lookupByName(
          username: 'TwitterDev',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/by/username/TwitterDev',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.lookupByName(
          username: 'TwitterDev',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/by/username/TwitterDev',
          'test/src/service/users/data/no_data.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await usersService.lookupByName(
          username: 'TwitterDev',
        ),
      );
    });

    test('with no json', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/by/username/TwitterDev',
          'test/src/service/users/data/no_json.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await usersService.lookupByName(
          username: 'TwitterDev',
        ),
      );
    });
  });

  group('.lookupByNames', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/by',
          'test/src/service/users/data/lookup_by_names.json',
          {'usernames': 'TwitterDev,Twitter'},
        ),
      );

      final response = await usersService.lookupByNames(
        usernames: ['TwitterDev', 'Twitter'],
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<UserData>>());
      expect(response.data.length, 2);
    });

    test('with various fields', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/by',
          'test/src/service/users/data/lookup_by_names_with_various_fields.json',
          {'usernames': 'TwitterDev,Twitter'},
        ),
      );

      final response = await usersService.lookupByNames(
        usernames: ['TwitterDev', 'Twitter'],
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<UserData>>());
      expect(response.data.length, 2);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.lookupByNames(
          usernames: ['TwitterDev', 'Twitter'],
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/by',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
          {'usernames': 'TwitterDev,Twitter'},
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.lookupByNames(
          usernames: ['TwitterDev', 'Twitter'],
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/by',
          'test/src/service/users/data/no_data.json',
          {'usernames': 'TwitterDev,Twitter'},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await usersService.lookupByNames(
          usernames: ['TwitterDev', 'Twitter'],
        ),
      );
    });

    test('with no json', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/by',
          'test/src/service/users/data/no_json.json',
          {'usernames': 'TwitterDev,Twitter'},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await usersService.lookupByNames(
          usernames: ['TwitterDev', 'Twitter'],
        ),
      );
    });
  });

  group('.lookupMe', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/me',
          'test/src/service/users/data/lookup_me.json',
          {},
        ),
      );

      final response = await usersService.lookupMe();

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<UserData>());
      expect(response.data.id, '2244994945');
      expect(response.data.name, 'TwitterDev');
      expect(response.data.username, 'Twitter Dev');
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.lookupMe(),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/me',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
          {},
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.lookupMe(),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/me',
          'test/src/service/users/data/no_data.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await usersService.lookupMe(),
      );
    });

    test('with no json', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/me',
          'test/src/service/users/data/no_json.json',
          {},
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await usersService.lookupMe(),
      );
    });
  });

  group('.createMute', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/muting',
          'test/src/service/users/data/create_mute.json',
        ),
      );

      final response = await usersService.createMute(
        userId: '1111',
        targetUserId: '2222',
      );

      expect(response, isA<bool>());
      expect(response, isTrue);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.createMute(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/muting',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.createMute(
          userId: '1111',
          targetUserId: '2222',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/muting',
          'test/src/service/users/data/no_data.json',
        ),
      );

      final response = await usersService.createMute(
        userId: '1111',
        targetUserId: '2222',
      );

      expect(response, isA<bool>());
      expect(response, isFalse);
    });
  });

  group('.destroyMute', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildDeleteStub(
          '/twitterv2/2/users/1111/muting/2222',
          'test/src/service/users/data/destroy_mute.json',
        ),
      );

      final response = await usersService.destroyMute(
        userId: '1111',
        targetUserId: '2222',
      );

      expect(response, isA<bool>());
      expect(response, isTrue);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.destroyMute(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildDeleteStub(
          '/twitterv2/2/users/1111/muting/2222',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.destroyMute(
          userId: '1111',
          targetUserId: '2222',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildDeleteStub(
          '/twitterv2/2/users/1111/muting/2222',
          'test/src/service/users/data/no_data.json',
        ),
      );

      final response = await usersService.destroyMute(
        userId: '1111',
        targetUserId: '2222',
      );

      expect(response, isA<bool>());
      expect(response, isFalse);
    });
  });

  group('.lookupMutingUsers', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/muting',
          'test/src/service/users/data/lookup_muting_users.json',
          {
            'max_results': '10',
            'pagination_token': 'TOKEN',
          },
        ),
      );

      final response = await usersService.lookupMutingUsers(
        userId: '1111',
        maxResults: 10,
        paginationToken: 'TOKEN',
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<UserData>>());
      expect(response.meta, isA<UserMeta>());
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.lookupMutingUsers(
          userId: '1111',
          maxResults: 10,
          paginationToken: 'TOKEN',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/muting',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
          {
            'max_results': '10',
            'pagination_token': 'TOKEN',
          },
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.lookupMutingUsers(
          userId: '1111',
          maxResults: 10,
          paginationToken: 'TOKEN',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/muting',
          'test/src/service/users/data/no_data.json',
          {
            'max_results': '10',
            'pagination_token': 'TOKEN',
          },
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await usersService.lookupMutingUsers(
          userId: '1111',
          maxResults: 10,
          paginationToken: 'TOKEN',
        ),
      );
    });

    test('with no json', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/muting',
          'test/src/service/users/data/no_json.json',
          {
            'max_results': '10',
            'pagination_token': 'TOKEN',
          },
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await usersService.lookupMutingUsers(
          userId: '1111',
          maxResults: 10,
          paginationToken: 'TOKEN',
        ),
      );
    });
  });

  group('.createBlock', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/blocking',
          'test/src/service/users/data/create_block.json',
        ),
      );

      final response = await usersService.createBlock(
        userId: '0000',
        targetUserId: '1111',
      );

      expect(response, isA<bool>());
      expect(response, isTrue);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.createBlock(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/blocking',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.createBlock(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildPostStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/0000/blocking',
          'test/src/service/users/data/no_data.json',
        ),
      );

      final response = await usersService.createBlock(
        userId: '0000',
        targetUserId: '1111',
      );

      expect(response, isA<bool>());
      expect(response, isFalse);
    });
  });

  group('.destroyBlock', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildDeleteStub(
          '/twitterv2/2/users/0000/blocking/1111',
          'test/src/service/users/data/destroy_block.json',
        ),
      );

      final response = await usersService.destroyBlock(
        userId: '0000',
        targetUserId: '1111',
      );

      expect(response, isA<bool>());
      expect(response, isTrue);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.destroyBlock(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildDeleteStub(
          '/twitterv2/2/users/0000/blocking/1111',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.destroyBlock(
          userId: '0000',
          targetUserId: '1111',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildDeleteStub(
          '/twitterv2/2/users/0000/blocking/1111',
          'test/src/service/users/data/no_data.json',
        ),
      );

      final response = await usersService.destroyBlock(
        userId: '0000',
        targetUserId: '1111',
      );

      expect(response, isA<bool>());
      expect(response, isFalse);
    });
  });

  group('.lookupBlockingUsers', () {
    test('normal case', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/blocking',
          'test/src/service/users/data/lookup_blocking_users.json',
          {
            'max_results': '10',
            'pagination_token': 'TOKEN',
          },
        ),
      );

      final response = await usersService.lookupBlockingUsers(
        userId: '1111',
        maxResults: 10,
        paginationToken: 'TOKEN',
      );

      expect(response, isA<TwitterResponse>());
      expect(response.data, isA<List<UserData>>());
      expect(response.meta, isA<UserMeta>());
      expect(response.data.length, 5);
      expect(response.meta!.resultCount, 5);
    });

    test('with invalid access token', () async {
      final usersService = UsersService(
        context: ClientContext(
          bearerToken: '',
          timeout: Duration(seconds: 10),
        ),
      );

      expectUnauthorizedException(
        () async => await usersService.lookupBlockingUsers(
          userId: '1111',
          maxResults: 10,
          paginationToken: 'TOKEN',
        ),
      );
    });

    test('with rate limit exceeded error', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/blocking',
          'test/src/service/users/data/rate_limit_exceeded_error.json',
          {
            'max_results': '10',
            'pagination_token': 'TOKEN',
          },
        ),
      );

      expectRateLimitExceededException(
        () async => await usersService.lookupBlockingUsers(
          userId: '1111',
          maxResults: 10,
          paginationToken: 'TOKEN',
        ),
      );
    });

    test('with errors', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/blocking',
          'test/src/service/users/data/no_data.json',
          {
            'max_results': '10',
            'pagination_token': 'TOKEN',
          },
        ),
      );

      expectTwitterExceptionDueToNoData(
        () async => await usersService.lookupBlockingUsers(
          userId: '1111',
          maxResults: 10,
          paginationToken: 'TOKEN',
        ),
      );
    });

    test('with no json', () async {
      final usersService = UsersService(
        context: context.buildGetStub(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/1111/blocking',
          'test/src/service/users/data/no_json.json',
          {
            'max_results': '10',
            'pagination_token': 'TOKEN',
          },
        ),
      );

      expectTwitterExceptionDueToNoJson(
        () async => await usersService.lookupBlockingUsers(
          userId: '1111',
          maxResults: 10,
          paginationToken: 'TOKEN',
        ),
      );
    });
  });
}
