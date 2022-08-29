import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:twitter_api_v2/twitter_api_v2.dart';
import 'package:twitter_oauth2_pkce/twitter_oauth2_pkce.dart';
// import 'package:twitter_oauth2_pkce/twitter_oauth2_pkce.dart';

part 'twitter_notifier.freezed.dart';

final twitterNotifierProvider =
    StateNotifierProvider<TwitterNotifier, TwitterState>((ref) {
  return TwitterNotifier();
});

class TwitterNotifier extends StateNotifier<TwitterState> {
  TwitterNotifier() : super(TwitterState()) {
    // final oauth2 = TwitterOAuth2Client(
    //   clientId: 'YOUR_CLIENT_ID',
    getTweets();
  }

  Future<void> getTweets() async {
    final oauth2 = TwitterOAuth2Client(
      clientId: 'Li4ftRGh0EfiJSu5kLNMPqHxD',
      clientSecret: 'VW8X4gQcG8E6iE4bcKMB3lKADDUs9wOiUei2RoMGPm6HWjkubM',
      redirectUri: 'org.example.android.oauth://callback/',
      customUriScheme: 'org.example.android.oauth',
    );

    final response = await oauth2.executeAuthCodeFlowWithPKCE(
      scopes: Scope.values,
    );

    final twitter = TwitterApi(
      bearerToken:
          'AAAAAAAAAAAAAAAAAAAAAO%2FJgQEAAAAA61RZ4AMtBW%2FzMGSe3nU%2BUbgtiiA%3DJU4fFduKFNfAtf6ryOMAGJIKLSiYhp2fMgR2wexXnKSETku0UO',
      // oauthTokens: OAuthTokens(
      //   consumerKey: 'Li4ftRGh0EfiJSu5kLNMPqHxD',
      //   consumerSecret: 'VW8X4gQcG8E6iE4bcKMB3lKADDUs9wOiUei2RoMGPm6HWjkubM',
      //   accessToken: '1283501-nvsumICsAflhn42ogLGdpRHz281GepETTjZKH3tC10',
      //   accessTokenSecret: 'pRpy3K8ieG9xZ2zsxH9ykWqBfzRIC7Wo2ZkLU75pG5tC2',
      // ),
      retryConfig: RetryConfig.regularIntervals(
        maxAttempts: 5,
        intervalInSeconds: 3,
      ),
      timeout: Duration(seconds: 20),
    );

    try {
      // final me = await twitter.usersService.lookupMe();

      // final tweets2 = await twitter.tweetsService
      //     .lookupHomeTimeline(userId: 'codercampbruce');

      final tweets =
          await twitter.tweetsService.lookupTweets(userId: 'codercampbruce');

      final tweetsFlutter = await twitter.tweetsService.searchRecent(
        query: '#Flutter',
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

      final newState = state.copyWith(
        tweets: tweets.data,
      );
      // user: me.data);
      state = newState;

      // return tweets.data;
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
    //return null;
  }
}

@freezed
class TwitterState with _$TwitterState {
  factory TwitterState({
    String? accessToken,
    String? refreshToken,
    List<TweetData>? tweets,
    UserData? user,
  }) = _TwitterState;
  // factory TwitterState.fromJson(Map<String, dynamic> json) =>
  //     _$TwitterStateFromJson(json);
  // static const fromJsonConverter = _$TwitterState;
  // const TwitterState._();
}
