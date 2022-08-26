import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';
import 'package:twitter_oauth2_pkce/twitter_oauth2_pkce.dart';
part 'twitter_notifier.freezed.dart';

final twitterNotifierProvider =
    StateNotifierProvider<TwitterNotifier, TwitterState>((ref) {
  return TwitterNotifier();
});

class TwitterNotifier extends StateNotifier<TwitterState> {
  TwitterNotifier() : super(TwitterState()) {
    final oauth2 = TwitterOAuth2Client(
      clientId: 'YOUR_CLIENT_ID',
      clientSecret: 'YOUR_CLIENT_SECRET',
      redirectUri: 'org.example.android.oauth://callback/',
      customUriScheme: 'org.example.android.oauth',
    );

    oauth2
        .executeAuthCodeFlowWithPKCE(
      scopes: Scope.values,
    )
        .then((oauthValue) {
      getTweets(oauthValue).then((tweetsValue) {
        final newState = state.copyWith(
          accessToken: oauthValue.accessToken,
          refreshToken: oauthValue.refreshToken,
          tweets: tweetsValue,
        );
        state = newState;
      });
    });
  }

  Future<List<TweetData>?> getTweets(OAuthResponse response) async {
    final twitter = TwitterApi(
      bearerToken: response.accessToken,

      // oauthTokens: OAuthTokens(
      //   consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      //   consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      //   accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      //   accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
      // ),

      retryConfig: RetryConfig.regularIntervals(
        maxAttempts: 5,
        intervalInSeconds: 3,
      ),

      timeout: Duration(seconds: 20),
    );

    try {
      final me = await twitter.usersService.lookupMe();

      final tweets = await twitter.tweetsService.searchRecent(
        query: '#ElonMusk',
        maxResults: 20,
        // You can expand the search result.
        expansions: [
          TweetExpansion.authorId,
          TweetExpansion.inReplyToUserId,
        ],
        tweetFields: [
          TweetField.conversationId,
          TweetField.publicMetrics,
        ],
        userFields: [
          UserField.location,
          UserField.verified,
          UserField.entities,
          UserField.publicMetrics,
        ],
      );
      return tweets.data;
    } on TimeoutException catch (e) {
      print(e);
    } on UnauthorizedException catch (e) {
      print(e);
    } on RateLimitExceededException catch (e) {
      print(e);
    } on TwitterException catch (e) {
      print(e.response.headers);
      print(e.body);
      print(e);
    }
    return null;
  }
}

@freezed
class TwitterState with _$TwitterState {
  factory TwitterState({
    String? accessToken,
    String? refreshToken,
    List<TweetData>? tweets,
    List<UserData>? user,
    // required String name,
    // required ContentItemType type,
    // required int level,
    // required String contentMd,
    // required String introText,
    // List<String>? relatedItemIds,
    // @JsonKey(ignore: true) List<ContentItem>? relatedItems,
  }) = _TwitterState;
  // factory TwitterState.fromJson(Map<String, dynamic> json) =>
  //     _$TwitterStateFromJson(json);
  // static const fromJsonConverter = _$TwitterState;
  // const TwitterState._();
}
