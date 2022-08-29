<p align="center">
  <a href="https://github.com/twitter-dart/twitter-api-v2">
    <img alt="twitter_api_v2" width="500px" src="https://user-images.githubusercontent.com/13072231/165789212-8f335632-64b2-4eac-be54-8147ccfe7ab1.png">
  </a>
</p>

<p align="center">
  <b>The Lightweight and Cross-Platform Wrapper for Twitter API v2.0 🐦</b>
</p>

---

[![Awesome](https://awesome.re/badge.svg)](https://github.com/andypiper/awesome-modern-twitter-api)
[![GitHub Sponsor](https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=ff69b4)](https://github.com/sponsors/myConsciousness)
[![GitHub Sponsor](https://img.shields.io/static/v1?label=Maintainer&message=myConsciousness&logo=GitHub&color=00acee)](https://github.com/myConsciousness)

[![v2](https://img.shields.io/endpoint?url=https%3A%2F%2Ftwbadges.glitch.me%2Fbadges%2Fv2)](https://developer.twitter.com/en/docs/twitter-api)
[![pub package](https://img.shields.io/pub/v/twitter_api_v2.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/twitter_api_v2)
[![Dart SDK Version](https://badgen.net/pub/sdk-version/twitter_api_v2)](https://pub.dev/packages/twitter_api_v2/)
[![Test](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/test.yml/badge.svg)](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/test.yml)
[![Analyzer](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/analyzer.yml/badge.svg)](https://github.com/twitter-dart/twitter-api-v2/actions/workflows/analyzer.yml)
[![codecov](https://codecov.io/gh/twitter-dart/twitter-api-v2/branch/main/graph/badge.svg?token=J5GT1PF9Y3)](https://codecov.io/gh/twitter-dart/twitter-api-v2)
[![Issues](https://img.shields.io/github/issues/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2/pulls)
[![Stars](https://img.shields.io/github/stars/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2)
[![Contributors](https://img.shields.io/github/contributors/twitter-dart/twitter-api-v2)](https://github.com/twitter-dart/twitter-api-v2/graphs/contributors)
[![Code size](https://img.shields.io/github/languages/code-size/twitter-dart/twitter-api-v2?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2)
[![Last Commits](https://img.shields.io/github/last-commit/twitter-dart/twitter-api-v2?logo=git&logoColor=white)](https://github.com/twitter-dart/twitter-api-v2/commits/main)
[![License](https://img.shields.io/github/license/twitter-dart/twitter-api-v2?logo=open-source-initiative&logoColor=green)](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_shield)

---

| English | [日本語](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-JA.md) | [Français](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-FR.md) | [Tiếng Việt](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-VI.md) | [বাংলা](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-BN.md) | [Español](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-ES.md) | [Deutsch](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-DE.md) |

---

<!-- TOC -->

- [1. Guide 🌎](#1-guide-)
  - [1.1. Features 💎](#11-features-)
  - [1.2. Getting Started ⚡](#12-getting-started-)
    - [1.2.1. Install Library](#121-install-library)
    - [1.2.2. Import](#122-import)
    - [1.2.3. Implementation](#123-implementation)
  - [1.3. Supported Endpoints 👀](#13-supported-endpoints-)
    - [1.3.1. Tweets Service](#131-tweets-service)
      - [1.3.1.1. Tweet](#1311-tweet)
      - [1.3.1.2. Likes](#1312-likes)
      - [1.3.1.3. Retweets](#1313-retweets)
      - [1.3.1.4. Quote Tweets](#1314-quote-tweets)
      - [1.3.1.5. Search Tweets](#1315-search-tweets)
      - [1.3.1.6. Lookup Tweets](#1316-lookup-tweets)
      - [1.3.1.7. Tweet Counts](#1317-tweet-counts)
      - [1.3.1.8. Bookmarks](#1318-bookmarks)
      - [1.3.1.9. Timelines](#1319-timelines)
      - [1.3.1.10. Hide Replies](#13110-hide-replies)
      - [1.3.1.11. Volume Stream](#13111-volume-stream)
      - [1.3.1.12. Filtered Stream](#13112-filtered-stream)
    - [1.3.2. Users Service](#132-users-service)
      - [1.3.2.1. Follows](#1321-follows)
      - [1.3.2.2. Lookup Users](#1322-lookup-users)
      - [1.3.2.3. Users Mutes](#1323-users-mutes)
      - [1.3.2.4. Blocks](#1324-blocks)
    - [1.3.3. Spaces Service](#133-spaces-service)
      - [1.3.3.1. Search Spaces](#1331-search-spaces)
      - [1.3.3.2. Lookup Spaces](#1332-lookup-spaces)
    - [1.3.4. Lists Service](#134-lists-service)
      - [1.3.4.1. Lookup Lists](#1341-lookup-lists)
      - [1.3.4.2. Pinnings](#1342-pinnings)
      - [1.3.4.3. Tweet Lookup](#1343-tweet-lookup)
      - [1.3.4.4. List Manage](#1344-list-manage)
      - [1.3.4.5. Follows](#1345-follows)
      - [1.3.4.6. Members](#1346-members)
    - [1.3.5. Compliance Service](#135-compliance-service)
      - [1.3.5.1. Batch Compliance](#1351-batch-compliance)
  - [1.4. Tips 🏄](#14-tips-)
    - [1.4.1. Method Names](#141-method-names)
    - [1.4.2. Generate App-Only Bearer Token](#142-generate-app-only-bearer-token)
    - [1.4.3. Null Parameter at Request](#143-null-parameter-at-request)
    - [1.4.4. Expand Object Fields with `expansions`](#144-expand-object-fields-with-expansions)
    - [1.4.5. Expand Object Fields with `fields`](#145-expand-object-fields-with-fields)
    - [1.4.6. OAuth 2.0 Authorization Code Flow with PKCE](#146-oauth-20-authorization-code-flow-with-pkce)
    - [1.4.7. Change the Timeout Duration](#147-change-the-timeout-duration)
    - [1.4.8. Retry When a Timeout Occurs](#148-retry-when-a-timeout-occurs)
      - [1.4.8.1. Regular Intervals](#1481-regular-intervals)
      - [1.4.8.2. Exponential Backoff](#1482-exponential-backoff)
      - [1.4.8.3. Exponential Backoff and Jitter](#1483-exponential-backoff-and-jitter)
      - [1.4.8.4. Do Something on Retry](#1484-do-something-on-retry)
    - [1.4.9. Meaning of the Returned Boolean](#149-meaning-of-the-returned-boolean)
    - [1.4.10. Thrown Exceptions](#1410-thrown-exceptions)
  - [1.5. Contribution 🏆](#15-contribution-)
  - [1.6. Contributors ✨](#16-contributors-)
  - [1.7. Support ❤️](#17-support-️)
  - [1.8. License 🔑](#18-license-)
  - [1.9. More Information 🧐](#19-more-information-)

<!-- /TOC -->

# 1. Guide 🌎

This library provides the easiest way to use [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) in **Dart** and **Flutter** apps.

**Show some ❤️ and star the repo to support the project.**

We also provide [twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce) for easy [OAuth 2.0 PKCE authentication](https://developer.twitter.com/en/docs/authentication/oauth-2-0/authorization-code) when using the Twitter API!

## 1.1. Features 💎

✅ The **wrapper library** for **[Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api)**. </br>
✅ **Easily integrates** with the **Dart** & **Flutter** apps. </br>
✅ Provides response objects with a **guaranteed safe types.** </br>
✅ Supports **[all endpoints](https://developer.twitter.com/en/docs/api-reference-index)**. </br>
✅ Support **all request parameters and response fields**.</br>
✅ Supports **high-performance streaming** endpoints. </br>
✅ Supports **[expansions](https://developer.twitter.com/en/docs/twitter-api/expansions)** and **[fields](https://developer.twitter.com/en/docs/twitter-api/fields)** features. </br>
✅ **Well documented** and **well tested**.</br>
✅ Supports the powerful **automatic retry**.

## 1.2. Getting Started ⚡

### 1.2.1. Install Library

**With Dart:**

```bash
 dart pub add twitter_api_v2
```

**Or With Flutter:**

```bash
 flutter pub add twitter_api_v2
```

### 1.2.2. Import

```dart
import 'package:twitter_api_v2/twitter_api_v2';
```

### 1.2.3. Implementation

```dart
import 'dart:async';

import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  //! You need to get keys and tokens at https://developer.twitter.com
  final twitter = v2.TwitterApi(
    //! Authentication with OAuth2.0 is the default.
    //!
    //! Note that to use endpoints that require certain user permissions,
    //! such as Tweets and Likes, you need a token issued by OAuth2.0 PKCE.
    //!
    //! The easiest way to achieve authentication with OAuth 2.0 PKCE is
    //! to use [twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce)!
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Or perhaps you would prefer to use the good old OAuth1.0a method
    //! over the OAuth2.0 PKCE method. Then you can use the following code
    //! to set the OAuth1.0a tokens.
    //!
    //! However, note that some endpoints cannot be used for OAuth 1.0a method
    //! authentication.
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),

    //! Automatic retry is available when a TimeoutException occurs when
    //! communicating with the API.
    retryConfig: v2.RetryConfig.regularIntervals(
      maxAttempts: 5,
      intervalInSeconds: 3,
    ),

    //! The default timeout is 10 seconds.
    timeout: Duration(seconds: 20),
  );

  try {
    // Get the authenticated user's profile.
    final me = await twitter.usersService.lookupMe();
    // Get the tweets associated with the search query.
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
      // You can expand the search result.
      expansions: [
        v2.TweetExpansion.authorId,
        v2.TweetExpansion.inReplyToUserId,
      ],
      tweetFields: [
        v2.TweetField.conversationId,
        v2.TweetField.publicMetrics,
      ],
      userFields: [
        v2.UserField.location,
        v2.UserField.verified,
        v2.UserField.entities,
        v2.UserField.publicMetrics,
      ],
    );

    await twitter.tweetsService.createLike(
      userId: me.data.id,
      tweetId: tweets.data.first.id,
    );

    // High-performance Volume Stream endpoint is available.
    final volumeStream = await twitter.tweetsService.connectVolumeStream();
    await for (final response in volumeStream.handleError(print)) {
      print(response);
    }

    // Also high-performance Filtered Stream endpoint is available.
    await twitter.tweetsService.createFilteringRules(
      rules: [
        v2.FilteringRuleParam(value: '#ElonMusk'),
        v2.FilteringRuleParam(value: '#Tesla'),
        v2.FilteringRuleParam(value: '#SpaceX'),
      ],
    );

    final filteredStream = await twitter.tweetsService.connectFilteredStream();
    await for (final response in filteredStream.handleError(print)) {
      print(response.data);
      print(response.matchingRules);
    }
  } on TimeoutException catch (e) {
    print(e);
  } on v2.UnauthorizedException catch (e) {
    print(e);
  } on v2.RateLimitExceededException catch (e) {
    print(e);
  } on v2.TwitterException catch (e) {
    print(e.response.headers);
    print(e.body);
    print(e);
  }
}
```

## 1.3. Supported Endpoints 👀

### 1.3.1. Tweets Service

#### 1.3.1.1. Tweet

| Endpoint                                                                                                                      | Method Name                                                                                                        |
| ----------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/post-tweets)            | [createTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createTweet.html)   |
| [DELETE /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/delete-tweets-id) | [destroyTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyTweet.html) |

#### 1.3.1.2. Likes

| Endpoint                                                                                                                                           | Method Name                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/likes](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/post-users-id-likes)                        | [createLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createLike.html)               |
| [DELETE /2/users/:id/likes/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/delete-users-id-likes-tweet_id) | [destroyLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyLike.html)             |
| [GET /2/tweets/:id/liking_users](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users)          | [lookupLikingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikingUsers.html) |
| [GET /2/users/:id/liked_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets)            | [lookupLikedTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikedTweets.html) |

#### 1.3.1.3. Retweets

| Endpoint                                                                                                                                                           | Method Name                                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/retweets](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/post-users-id-retweets)                               | [createRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createRetweet.html)               |
| [DELETE /2/users/:id/retweets/:source_tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/delete-users-id-retweets-tweet_id) | [destroyRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyRetweet.html)             |
| [GET /2/tweets/:id/retweeted_by](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by)                       | [lookupRetweetedUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupRetweetedUsers.html) |

#### 1.3.1.4. Quote Tweets

| Endpoint                                                                                                                                         | Method Name                                                                                                                  |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/:id/quote_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets) | [lookupQuoteTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupQuoteTweets.html) |

#### 1.3.1.5. Search Tweets

| Endpoint                                                                                                                              | Method Name                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [GET /2/tweets/search/all](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all)       | [searchAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchAll.html)       |
| [GET /2/tweets/search/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent) | [searchRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchRecent.html) |

#### 1.3.1.6. Lookup Tweets

| Endpoint                                                                                                         | Method Name                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets)        | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html) |
| [GET /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id) | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html)  |

#### 1.3.1.7. Tweet Counts

| Endpoint                                                                                                                              | Method Name                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/counts/all](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all)       | [countAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countAll.html)       |
| [GET /2/tweets/counts/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent) | [countRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countRecent.html) |

#### 1.3.1.8. Bookmarks

| Endpoint                                                                                                                                                       | Method Name                                                                                                              |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/post-users-id-bookmarks)                        | [createBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createBookmark.html)   |
| [DELETE /2/users/:id/bookmarks/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/delete-users-id-bookmarks-tweet_id) | [destroyBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyBookmark.html) |
| [GET /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks)                          | [lookupBookmarks](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupBookmarks.html) |

#### 1.3.1.9. Timelines

| Endpoint                                                                                                                                                                | Method Name                                                                                                                    |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/users/:id/mentions](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions)                                     | [lookupMentions](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupMentions.html)         |
| [GET /2/users/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets)                                         | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupTweets.html)             |
| [GET /2/users/:id/timelines/reverse_chronological](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-reverse-chronological) | [lookupHomeTimeline](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupHomeTimeline.html) |

#### 1.3.1.10. Hide Replies

| Endpoint                                                                                                                             | Method Name                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [createHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createHiddenReply.html)   |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [destroyHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyHiddenReply.html) |

#### 1.3.1.11. Volume Stream

| Endpoint                                                                                                                                      | Method Name                                                                                                                      |
| --------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/sample/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream) | [connectVolumeStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectVolumeStream.html) |

#### 1.3.1.12. Filtered Stream

| Endpoint                                                                                                                                                     | Method Name                                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/post-tweets-search-stream-rules) | [createFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createFilteringRules.html)   |
| [GET /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream-rules)   | [lookupFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupFilteringRules.html)   |
| [GET /2/tweets/search/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream)               | [connectFilteredStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectFilteredStream.html) |

### 1.3.2. Users Service

#### 1.3.2.1. Follows

| Endpoint                                                                                                                                                                    | Method Name                                                                                                               |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/post-users-source_user_id-following)                            | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createFollow.html)         |
| [DELETE /2/users/:source_user_id/following/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/delete-users-source_id-following) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyFollow.html)       |
| [GET /2/users/:id/followers](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-followers)                                          | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowers.html)   |
| [GET /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-following)                                          | [lookupFollowings](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowings.html) |

#### 1.3.2.2. Lookup Users

| Endpoint                                                                                                                                          | Method Name                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/users](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users)                                            | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByIds.html)     |
| [GET /2/users/:id](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-id)                                     | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupById.html)       |
| [GET /2/users/by](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by)                                      | [lookupByNames](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByNames.html) |
| [GET /2/users/by/username/:username](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by-username-username) | [lookupByName](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByName.html)   |
| [GET /2/users/me](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-me)                                      | [lookupMe](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMe.html)           |

#### 1.3.2.3. Users Mutes

| Endpoint                                                                                                                                                          | Method Name                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/post-users-user_id-muting)                                 | [createMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createMute.html)               |
| [DELETE /2/users/:source_user_id/muting/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/delete-users-user_id-muting) | [destroyMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyMute.html)             |
| [GET /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/get-users-muting)                                           | [lookupMutingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMutingUsers.html) |

#### 1.3.2.4. Blocks

| Endpoint                                                                                                                                                               | Method Name                                                                                                                     |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/post-users-user_id-blocking)                                 | [createBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createBlock.html)                 |
| [DELETE /2/users/:source_user_id/blocking/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/delete-users-user_id-blocking) | [destroyBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyBlock.html)               |
| [GET /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/get-users-blocking)                                           | [lookupBlockingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupBlockingUsers.html) |

### 1.3.3. Spaces Service

#### 1.3.3.1. Search Spaces

| Endpoint                                                                                                                | Method Name                                                                                            |
| ----------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces/search](https://developer.twitter.com/en/docs/twitter-api/spaces/search/api-reference/get-spaces-search) | [search](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/search.html) |

#### 1.3.3.2. Lookup Spaces

| Endpoint                                                                                                                                | Method Name                                                                                                                    |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces)                               | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByIds.html)               |
| [GET /2/spaces/:id](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id)                        | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupById.html)                 |
| [GET /2/spaces/:id/buyers](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-buyers)          | [lookupBuyers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupBuyers.html)             |
| [GET /2/spaces/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-tweets)          | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupTweets.html)             |
| [GET /2/spaces/by/creator_ids](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-by-creator-ids) | [lookupByCreatorIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByCreatorIds.html) |

### 1.3.4. Lists Service

#### 1.3.4.1. Lookup Lists

| Endpoint                                                                                                                                   | Method Name                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-lists-id)                         | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupById.html)       |
| [GET /2/users/:id/owned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-users-id-owned_lists) | [lookupOwnedBy](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupOwnedBy.html) |

#### 1.3.4.2. Pinnings

| Endpoint                                                                                                                                                             | Method Name                                                                                                                 |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/post-users-id-pinned-lists)                      | [createPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPinnedList.html)   |
| [DELETE /2/users/:id/pinned_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/delete-users-id-pinned-lists-list_id) | [destroyPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyPinnedList.html) |
| [GET /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/get-users-id-pinned_lists)                        | [lookupPinnedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupPinnedLists.html) |

#### 1.3.4.3. Tweet Lookup

| Endpoint                                                                                                                         | Method Name                                                                                                       |
| -------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/lists/list-tweets/api-reference/get-lists-id-tweets) | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupTweets.html) |

#### 1.3.4.4. List Manage

| Endpoint                                                                                                                  | Method Name                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPublicList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPublicList.html)       |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPrivateList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPrivateList.html)     |
| [DELETE /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id) | [destroyList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyList.html)                 |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPublic](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPublic.html)   |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPrivate](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPrivate.html) |

#### 1.3.4.5. Follows

| Endpoint                                                                                                                                                                 | Method Name                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/post-users-id-followed-lists)                      | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createFollow.html)               |
| [DELETE /2/users/:id/followed_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/delete-users-id-followed-lists-list_id) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyFollow.html)             |
| [GET /2/lists/:id/followers](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-lists-id-followers)                                  | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowers.html)         |
| [GET /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-users-id-followed_lists)                        | [lookupFollowedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowedLists.html) |

#### 1.3.4.6. Members

| Endpoint                                                                                                                                                   | Method Name                                                                                                                 |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/post-lists-id-members)                      | [createMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createMember.html)           |
| [DELETE /2/lists/:id/members/:user_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/delete-lists-id-members-user_id) | [destroyMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyMember.html)         |
| [GET /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)                        | [lookupMembers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMembers.html)         |
| [GET /2/users/:id/list_memberships](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)               | [lookupMemberships](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMemberships.html) |

### 1.3.5. Compliance Service

#### 1.3.5.1. Batch Compliance

| Endpoint                                                                                                                                         | Method Name                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/post-compliance-jobs)      | [createJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/createJob.html)   |
| [GET /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs)        | [lookupJobs](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJobs.html) |
| [GET /2/compliance/jobs/:id](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs-id) | [lookupJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJob.html)   |

## 1.4. Tips 🏄

### 1.4.1. Method Names

**twitter_api_v2** uses the following standard prefixes depending on endpoint characteristics. So it's very easy to find the method corresponding to the endpoint you want to use!

| Prefix      | Description                                                                                        |
| ----------- | -------------------------------------------------------------------------------------------------- |
| **lookup**  | This prefix is attached to endpoints that reference tweets, users, etc.                            |
| **search**  | This prefix is attached to endpoints that perform extensive searches.                              |
| **connect** | This prefix is attached to endpoints with high-performance streaming.                              |
| **count**   | This prefix is attached to the endpoint that counts a particular item.                             |
| **create**  | This prefix is attached to the endpoint performing the create state such as `Tweet` and `Follow`.  |
| **destroy** | This prefix is attached to the endpoint performing the destroy state such as `Tweet` and `Follow`. |
| **update**  | This prefix is attached to the endpoint performing the update state.                               |

### 1.4.2. Generate App-Only Bearer Token

**twitter_api_v2** provides utility to generate/find your app-only bearer token.

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final bearerToken = await v2.OAuthUtils.generateAppOnlyBearerToken(
    consumerKey: 'YOUR_CONSUMER_KEY',
    consumerSecret: 'YOUR_CONSUMER_SECRET',
  );

  print(bearerToken);
}
```

### 1.4.3. Null Parameter at Request

In this library, parameters that are not required at request time, i.e., optional parameters, are defined as nullable.
However, developers do not need to be aware of the null parameter when sending requests when using this library.

It means the parameters specified with a null value are safely removed and ignored before the request is sent.

For example, arguments specified with null are ignored in the following request.

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  await twitter.tweetsService.createTweet(
    text: 'Hello, World!',
    // These parameters are ignored at request because they are null.
    mediaIds: null,
    expansions: null,
  );
}
```

### 1.4.4. Expand Object Fields with `expansions`

For example, there may be a situation where data contains only an ID, and you want to retrieve the data object associated with that ID as well. In such cases, the `Twitter API v2.0` specification called `expansions` is useful, and this library supports that specification.

Basically it can be used in endpoints that perform GET communication such as `lookup` and `search` processing. Some fields may also be included in the `includes` property of [TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html).

You can use `expansions` like below:

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      // Specify fields you need!
      expansions: [
        v2.TweetExpansion.authorId,
        v2.TweetExpansion.inReplyToUserId,
      ],
    );

    print(tweets);
  } on v2.TwitterException catch (e) {
    print(e);
  }
}
```

You can see more details about `expansions` from [Official Documentation](https://developer.twitter.com/en/docs/twitter-api/expansions).

### 1.4.5. Expand Object Fields with `fields`

`Twitter API v2.0` supports a very interesting specification, allowing users to control the amount of data contained in the response object for each endpoint depending on the situation. It's called `fields`, and this library supports this specification.

Basically it can be used in endpoints that perform GET communication such as `lookup` and `search` processing. Some fields may also be included in the `includes` field of [TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html).

You can use `fields` like below:

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
      expansions: v2.TweetExpansion.values,
      tweetFields: [
        v2.TweetField.conversationId,
        v2.TweetField.publicMetrics,
      ],
      userFields: [
        v2.UserField.location,
        v2.UserField.publicMetrics,
      ],
    );

    print(tweets);
  } on v2.TwitterException catch (e) {
    print(e);
  }
}
```

> **Note**</br>
> Some fields must be combined with `expansions`.

You can see more details about `fields` from [Official Documentation](https://developer.twitter.com/en/docs/twitter-api/fields).

### 1.4.6. OAuth 2.0 Authorization Code Flow with PKCE

**Twitter API v2.0** supports authentication methods with [OAuth 2.0 PKCE](https://developer.twitter.com/en/docs/authentication/oauth-2-0/authorization-code), and it allows users of apps using **Twitter API v2.0** to request authorization for the minimum necessary [scope](https://developer.twitter.com/en/docs/authentication/guides/v2-authentication-mapping) of operation.

Since **OAuth2.0 PKCE** authentication requires going through a browser, **twitter_api_v2** does not provide this specification for compatibility with CLI applications. Instead, we provide [twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce), a library for Flutter apps.

The **twitter_oauth2_pkce** is 100% compatible with **twitter_api_v2** and can be used. You can see more details from links below.

- [Repository](https://github.com/twitter-dart/twitter-oauth2-pkce)
- [Pub.dev](https://pub.dev/packages/twitter_oauth2_pkce)

Also, please refer to the next simple sample Flutter application that combines **twitter_api_v2** and **twitter_oauth2_pkce**.

- [Example Tweet App](https://github.com/twitter-dart/example-tweet-app-with-twitter-api-v2)

### 1.4.7. Change the Timeout Duration

The library specifies a default timeout of **10 seconds** for all API communications.

However, there may be times when you wish to specify an arbitrary timeout duration. If there is such a demand, an arbitrary timeout duration can be specified as follows.

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() {
 final twitter = v2.TwitterApi(
    bearerToken: 'YOUR_TOKEN_HERE',

    //! The default timeout is 10 seconds.
    timeout: Duration(seconds: 5),
  );
}
```

### 1.4.8. Retry When a Timeout Occurs

Due to the nature of this library's communication with external systems, timeouts may occur due to inevitable communication failures or temporary crashes of the server to which requests are sent.

When such timeouts occur, an effective countermeasure in many cases is to send the request again after a certain interval. And **twitter_api_v2** provides an **automatic retry** feature as a solution to this problem.

There are 3 retry methods provided by **twitter_api_v2**.

| Retry Strategy                 | Constructor                             | Description                                                                                                             |
| ------------------------------ | --------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| Regular Intervals              | RetryConfig.regularIntervals            | Retry at regular intervals.                                                                                             |
| Exponential Backoff            | RetryConfig.exponentialBackOff          | The retry interval is increased exponentially according to the number of retries.                                       |
| Exponential Backoff and Jitter | RetryConfig.exponentialBackOffAndJitter | A random number called Jitter is added to increase the retry interval exponentially according to the number of retries. |

#### 1.4.8.1. Regular Intervals

It would be easy to imagine **retries at regular intervals**. For example, if a timeout occurs and the request is assumed to be retried 3 times, waiting for 5 seconds and then sending the request again, it can be defined as follows.

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Add these lines.
    retryConfig: v2.RetryConfig.regularIntervals(
      maxAttempts: 3,
      intervalInSeconds: 5,
    ),
  );
}
```

#### 1.4.8.2. Exponential Backoff

Although retries can be effective by simply performing them at regular intervals as in the above example, sending a large number of requests at regular intervals when the server to which the request is being sent is experiencing a failure is something that should be avoided. Even if the network or server is already down, the retry process can further aggravate the situation by adding to the load.

The solution to these problems is to increase the interval exponentially for each retry. This is an algorithm called `Exponential Backoff` and **twitter_api_v2** supports a specification that allows easy use of this algorithm.

The **Exponential Backoff** algorithm can be applied on retries by defining **RetryConfig** as follows.

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Add these lines.
    retryConfig: v2.RetryConfig.exponentialBackOff(
      maxAttempts: 3,
    ),
  );
}
```

In the above implementation, the interval increases exponentially for each retry count. It can be expressed by next formula.

> 2 ^ retryCount

#### 1.4.8.3. Exponential Backoff and Jitter

Although the algorithm introduced earlier that exponentially increases the retry interval is already powerful, some may believe that it is not yet sufficient to distribute the sensation of retries. It's more distributed than equally spaced retries, but retries still occur at static intervals.

This problem can be solved by adding a random number called **Jitter**, and this method is called the **Exponential Backoff and Jitter** algorithm. By adding a random number to the exponentially increasing retry interval, the retry interval can be distributed more flexibly.

Similar to the previous example, **twitter_api_v2** can be implemented as follows.

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Add these lines.
    retryConfig: v2.RetryConfig.exponentialBackOffAndJitter(
      maxAttempts: 3,
    ),
  );
}
```

In the above implementation, the interval increases exponentially for each retry count with jitter. It can be expressed by next formula.

> **(2 ^ retryCount) + jitter(Random Number between 0 ~ 3)**

#### 1.4.8.4. Do Something on Retry

It would be useful to output logging on retries and a popup notifying the user that a retry has been executed. So **twitter_api_v2** provides callbacks that can perform arbitrary processing when retries are executed.

It can be implemented as follows.

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(
    bearerToken: 'YOUR_TOKEN_HERE',
    retryConfig: v2.RetryConfig.regularIntervals(
      maxAttempts: 3,
      intervalInSeconds: 5,

      //! Add this line.
      onExecute: (event) => print('Retrying... ${event.retryCount} times.'),
    ),
  );
}
```

The [RetryEvent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/RetryEvent-class.html) passed to the callback contains information on retries.

### 1.4.9. Meaning of the Returned Boolean

A boolean value is returned from the endpoint when the communication is primarily POST, DELETE, or PUT.

For example, **twitter_api_v2** provides the [createRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createRetweet.html) method for creating retweets. This method returns true if the request sent in generating the retweet was accepted, and false if an error occurred for whatever reason.

If true is returned at this time, the reason is as follows.

- The target tweet exists and the target tweet was successfully retweeted.

Conversely, if false is returned, the reasons may be as follows.

- The tweet to be retweeted did not exist.
- The tweet subject to retweet was deleted by the author.
- Miscellaneous errors.

Note that this specification differs from the official [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api). The official [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api) consistently returns a flag indicating the state of the content after API communication when using endpoints that change the state of such content.

However, as mentioned earlier in **twitter_api_v2**, for example if you use the [createRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createRetweet.html) method, it will return a **flag indicating whether the process was successful or not**. This principle applies not only to the [createRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createRetweet.html) method, but to all methods that return flags as a result of processing.

### 1.4.10. Thrown Exceptions

**twitter_api_v2** provides a convenient exception object for easy handling of exceptional responses and errors returned from [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction).

| Exception                                                                                                                              | Description                                                                                                            |
| -------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| [TwitterException](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterException-class.html)                     | The most basic exception object. For example, it can be used to search for tweets that have already been deleted, etc. |
| [UnauthorizedException](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UnauthorizedException-class.html)           | Thrown when authentication fails with the specified access token.                                                      |
| [RateLimitExceededException](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/RateLimitExceededException-class.html) | Thrown when the request rate limit is exceeded.                                                                        |

## 1.5. Contribution 🏆

If you would like to contribute to **twitter_api_v2**, please create an [issue](https://github.com/twitter-dart/twitter-api-v2/issues) or create a Pull Request.

There are many ways to contribute to the OSS. For example, the following subjects can be considered:

- There are request parameters or response fields that are not implemented.
- Documentation is outdated or incomplete.
- Have a better way or idea to achieve the functionality.
- etc...

You can see more details from resources below:

- [Contributor Covenant Code of Conduct](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
- [Contribution Guidelines](https://github.com/twitter-dart/twitter-api-v2/blob/main/CONTRIBUTING.md)
- [Style Guide](https://github.com/twitter-dart/twitter-api-v2/blob/main/STYLEGUIDE.md)

Or you can create a [discussion](https://github.com/twitter-dart/twitter-api-v2/discussions) if you like.

**Feel free to join this development, diverse opinions make software better!**

## 1.6. Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/myConsciousness"><img src="https://avatars.githubusercontent.com/u/13072231?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Kato Shinya / 加藤 真也</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=myConsciousness" title="Code">💻</a> <a href="#content-myConsciousness" title="Content">🖋</a> <a href="#data-myConsciousness" title="Data">🔣</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=myConsciousness" title="Documentation">📖</a> <a href="#design-myConsciousness" title="Design">🎨</a> <a href="#example-myConsciousness" title="Examples">💡</a> <a href="#fundingFinding-myConsciousness" title="Funding Finding">🔍</a> <a href="#ideas-myConsciousness" title="Ideas, Planning, & Feedback">🤔</a> <a href="#infra-myConsciousness" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#maintenance-myConsciousness" title="Maintenance">🚧</a> <a href="#mentoring-myConsciousness" title="Mentoring">🧑‍🏫</a> <a href="#projectManagement-myConsciousness" title="Project Management">📆</a> <a href="#question-myConsciousness" title="Answering Questions">💬</a> <a href="https://github.com/twitter-dart/twitter-api-v2/pulls?q=is%3Apr+reviewed-by%3AmyConsciousness" title="Reviewed Pull Requests">👀</a> <a href="#security-myConsciousness" title="Security">🛡️</a> <a href="#translation-myConsciousness" title="Translation">🌍</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=myConsciousness" title="Tests">⚠️</a> <a href="#tutorial-myConsciousness" title="Tutorials">✅</a></td>
    <td align="center"><a href="https://andypiper.me"><img src="https://avatars.githubusercontent.com/u/552452?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Andy Piper</b></sub></a><br /><a href="#content-andypiper" title="Content">🖋</a> <a href="#talk-andypiper" title="Talks">📢</a></td>
    <td align="center"><a href="https://github.com/XRayAdamo"><img src="https://avatars.githubusercontent.com/u/4430621?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Konstantin</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=XRayAdamo" title="Code">💻</a> <a href="#design-XRayAdamo" title="Design">🎨</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=XRayAdamo" title="Documentation">📖</a> <a href="#example-XRayAdamo" title="Examples">💡</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=XRayAdamo" title="Tests">⚠️</a></td>
    <td align="center"><a href="https://ko-fi.com/robertodoering"><img src="https://avatars.githubusercontent.com/u/20045287?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Roberto Doering</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=robertodoering" title="Code">💻</a> <a href="#design-robertodoering" title="Design">🎨</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=robertodoering" title="Documentation">📖</a> <a href="#example-robertodoering" title="Examples">💡</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=robertodoering" title="Tests">⚠️</a> <a href="#ideas-robertodoering" title="Ideas, Planning, & Feedback">🤔</a></td>
    <td align="center"><a href="https://github.com/niteshsh4rma"><img src="https://avatars.githubusercontent.com/u/58659088?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Nitesh Sharma</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=niteshsh4rma" title="Code">💻</a> <a href="#design-niteshsh4rma" title="Design">🎨</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=niteshsh4rma" title="Documentation">📖</a> <a href="#example-niteshsh4rma" title="Examples">💡</a> <a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=niteshsh4rma" title="Tests">⚠️</a> <a href="#ideas-niteshsh4rma" title="Ideas, Planning, & Feedback">🤔</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/ngoluuduythai"><img src="https://avatars.githubusercontent.com/u/12238262?v=4?s=100" width="100px;" alt=""/><br /><sub><b>ngoluuduythai</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=ngoluuduythai" title="Documentation">📖</a> <a href="#translation-ngoluuduythai" title="Translation">🌍</a></td>
    <td align="center"><a href="https://github.com/its-me-mahmud"><img src="https://avatars.githubusercontent.com/u/53822204?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Abdullah Al Mahmud</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=its-me-mahmud" title="Documentation">📖</a> <a href="#translation-its-me-mahmud" title="Translation">🌍</a></td>
    <td align="center"><a href="https://github.com/omar6260"><img src="https://avatars.githubusercontent.com/u/82382673?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Oumar fall</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=omar6260" title="Documentation">📖</a> <a href="#translation-omar6260" title="Translation">🌍</a></td>
    <td align="center"><a href="http://www.natalieastroud.com"><img src="https://avatars.githubusercontent.com/u/17433156?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Natalie Stroud</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=natastro" title="Documentation">📖</a> <a href="#translation-natastro" title="Translation">🌍</a></td>
    <td align="center"><a href="https://twitch.tv/novas1r1"><img src="https://avatars.githubusercontent.com/u/2575205?v=4?s=100" width="100px;" alt=""/><br /><sub><b>novas1r1</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=novas1r1" title="Documentation">📖</a> <a href="#translation-novas1r1" title="Translation">🌍</a> <a href="#ideas-novas1r1" title="Ideas, Planning, & Feedback">🤔</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://bandism.net/"><img src="https://avatars.githubusercontent.com/u/22633385?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Ikko Ashimine</b></sub></a><br /><a href="https://github.com/twitter-dart/twitter-api-v2/commits?author=eltociear" title="Documentation">📖</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## 1.7. Support ❤️

The simplest way to show us your support is by **giving the project a star** at [GitHub](https://github.com/twitter-dart/twitter-api-v2) and [Pub.dev](https://pub.dev/packages/twitter_api_v2).

You can also support this project by **becoming a sponsor** on GitHub:

<div align="left">
  <p>
    <a href="https://github.com/sponsors/myconsciousness">
      <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
    </a>
  </p>
</div>

You can also show on your repository that your app is made with **twitter_api_v2** by using one of the following badges:

[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)

```
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)
```

## 1.8. License 🔑

All resources of **twitter_api_v2** is provided under the `BSD-3` license.

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_large)

> **Note**</br>
> License notices in the source are strictly validated based on `.github/header-checker-lint.yml`. Please check [header-checker-lint.yml](https://github.com/twitter-dart/twitter-api-v2/tree/main/.github/header-checker-lint.yml) for the permitted standards.

## 1.9. More Information 🧐

**twitter_api_v2** was designed and implemented by **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness))_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/twitter_api_v2-library.html)
- [Release Note](https://github.com/twitter-dart/twitter-api-v2/releases)
- [Bug Report](https://github.com/twitter-dart/twitter-api-v2/issues)
