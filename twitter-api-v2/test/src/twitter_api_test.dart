// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/client/oauth_tokens.dart';
import 'package:twitter_api_v2/src/exception/twitter_exception.dart';
import 'package:twitter_api_v2/src/exception/unauthorized_exception.dart';
import 'package:twitter_api_v2/src/service/compliance/compliance_service.dart';
import 'package:twitter_api_v2/src/service/lists/lists_service.dart';
import 'package:twitter_api_v2/src/service/spaces/spaces_service.dart';
import 'package:twitter_api_v2/src/service/tweets/tweet_data.dart';
import 'package:twitter_api_v2/src/service/tweets/tweets_service.dart';
import 'package:twitter_api_v2/src/service/twitter_response.dart';
import 'package:twitter_api_v2/src/service/users/users_service.dart';
import 'package:twitter_api_v2/src/twitter_api.dart';

void main() {
  test('when there are no tokens', () {
    expect(
      () => TwitterApi(bearerToken: ''),
      throwsA(isA<ArgumentError>()),
    );
  });

  group('services', () {
    test('.tweetsService', () {
      final twitter = TwitterApi(bearerToken: 'XXX');

      expect(twitter.tweetsService, isNotNull);
      expect(twitter.tweetsService, isA<TweetsService>());
    });

    test('.usersService', () {
      final twitter = TwitterApi(bearerToken: 'XXX');

      expect(twitter.usersService, isNotNull);
      expect(twitter.usersService, isA<UsersService>());
    });

    test('.spacesService', () {
      final twitter = TwitterApi(bearerToken: 'XXX');

      expect(twitter.spacesService, isNotNull);
      expect(twitter.spacesService, isA<SpacesService>());
    });

    test('.listsService', () {
      final twitter = TwitterApi(bearerToken: 'XXX');

      expect(twitter.listsService, isNotNull);
      expect(twitter.listsService, isA<ListsService>());
    });

    test('.complianceService', () {
      final twitter = TwitterApi(bearerToken: 'XXX');

      expect(twitter.complianceService, isNotNull);
      expect(twitter.complianceService, isA<ComplianceService>());
    });
  });

  //! Since authentication information cannot be shared,
  //! only that the communication is established is verified.
  group('HTTP client in OAuth 2.0', () {
    test('GET', () {
      final twitter = TwitterApi(bearerToken: 'XXX');

      expect(
        () async => await twitter.tweetsService.lookupById(tweetId: ''),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('GET Stream', () async {
      final twitter = TwitterApi(bearerToken: 'XXX');
      final response = await twitter.tweetsService.connectVolumeStream();

      //! Stream does not raise an exception when retrieving.
      expect(response, isNotNull);
      expect(response, isA<Stream<TwitterResponse<TweetData, void>>>());
    });

    test('POST', () {
      final twitter = TwitterApi(bearerToken: 'XXX');

      expect(
        () async => await twitter.tweetsService.createTweet(text: ''),
        throwsA(isA<TwitterException>()),
      );
    });

    test('DELETE', () {
      final twitter = TwitterApi(bearerToken: 'XXX');

      expect(
        () async => await twitter.tweetsService.destroyTweet(tweetId: ''),
        throwsA(isA<TwitterException>()),
      );
    });

    test('PUT', () {
      final twitter = TwitterApi(bearerToken: 'XXX');

      expect(
        () async => await twitter.listsService.updateListAsPrivate(listId: ''),
        throwsA(isA<TwitterException>()),
      );
    });
  });

  //! Since authentication information cannot be shared,
  //! only that the communication is established is verified.
  group('HTTP client in OAuth 1.0a', () {
    test('GET', () {
      final twitter = TwitterApi(
        bearerToken: '',
        oauthTokens: OAuthTokens(
          consumerKey: '',
          consumerSecret: '',
          accessToken: '',
          accessTokenSecret: '',
        ),
      );

      expect(
        () async => await twitter.tweetsService.lookupById(tweetId: ''),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('POST', () {
      final twitter = TwitterApi(
        bearerToken: '',
        oauthTokens: OAuthTokens(
          consumerKey: '',
          consumerSecret: '',
          accessToken: '',
          accessTokenSecret: '',
        ),
      );

      expect(
        () async => await twitter.tweetsService.createTweet(text: ''),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('DELETE', () {
      final twitter = TwitterApi(
        bearerToken: '',
        oauthTokens: OAuthTokens(
          consumerKey: '',
          consumerSecret: '',
          accessToken: '',
          accessTokenSecret: '',
        ),
      );

      expect(
        () async => await twitter.tweetsService.destroyTweet(tweetId: ''),
        throwsA(isA<TwitterException>()),
      );
    });

    test('PUT', () {
      final twitter = TwitterApi(
        bearerToken: '',
        oauthTokens: OAuthTokens(
          consumerKey: '',
          consumerSecret: '',
          accessToken: '',
          accessTokenSecret: '',
        ),
      );

      expect(
        () async => await twitter.listsService.updateListAsPrivate(listId: ''),
        throwsA(isA<TwitterException>()),
      );
    });
  });
}
