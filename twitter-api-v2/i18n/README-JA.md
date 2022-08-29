<p align="center">
  <a href="https://github.com/twitter-dart/twitter-api-v2">
    <img alt="twitter_api_v2" width="500px" src="https://user-images.githubusercontent.com/13072231/165789212-8f335632-64b2-4eac-be54-8147ccfe7ab1.png">
  </a>
</p>

<p align="center">
  <b>軽量かつクロスプラットフォームで動作するTwitter API v2.0ラッパー 🐦</b>
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

| [English](https://github.com/twitter-dart/twitter-api-v2/blob/main/README.md) | 日本語 | [Français](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-FR.md) | [Tiếng Việt](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-VI.md) | [বাংলা](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-BN.md) | [Español](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-ES.md) | [Deutsch](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-DE.md) |

---

<!-- TOC -->

- [1. ガイド 🌎](#1-ガイド-)
  - [1.1. 始めましょう ⚡](#11-始めましょう-)
    - [1.1.1. ライブラリのインストール](#111-ライブラリのインストール)
    - [1.1.2. インポート](#112-インポート)
    - [1.1.3. 実装](#113-実装)
  - [1.2. サポートされているエンドポイント 👀](#12-サポートされているエンドポイント-)
    - [1.2.1. Tweets Service](#121-tweets-service)
      - [1.2.1.1. ツイート](#1211-ツイート)
      - [1.2.1.2. いいね](#1212-いいね)
      - [1.2.1.3. リツイート](#1213-リツイート)
      - [1.2.1.4. 引用ツイート](#1214-引用ツイート)
      - [1.2.1.5. ツイート検索](#1215-ツイート検索)
      - [1.2.1.6. ツイート参照](#1216-ツイート参照)
      - [1.2.1.7. ツイート数](#1217-ツイート数)
      - [1.2.1.8. ブックマーク](#1218-ブックマーク)
      - [1.2.1.9. タイムライン](#1219-タイムライン)
      - [1.2.1.10. リプライ非表示](#12110-リプライ非表示)
      - [1.2.1.11. Volume Stream](#12111-volume-stream)
      - [1.2.1.12. Filtered Stream](#12112-filtered-stream)
    - [1.2.2. Users Service](#122-users-service)
      - [1.2.2.1. フォロー](#1221-フォロー)
      - [1.2.2.2. ユーザー参照](#1222-ユーザー参照)
      - [1.2.2.3. ミュート](#1223-ミュート)
      - [1.2.2.4. ブロック](#1224-ブロック)
    - [1.2.3. Spaces Service](#123-spaces-service)
      - [1.2.3.1. スペース検索](#1231-スペース検索)
      - [1.2.3.2. スペース参照](#1232-スペース参照)
    - [1.2.4. Lists Service](#124-lists-service)
      - [1.2.4.1. リスト参照](#1241-リスト参照)
      - [1.2.4.2. ピン留め](#1242-ピン留め)
      - [1.2.4.3. ツイート参照](#1243-ツイート参照)
      - [1.2.4.4. リスト管理](#1244-リスト管理)
      - [1.2.4.5. フォロー](#1245-フォロー)
      - [1.2.4.6. メンバー](#1246-メンバー)
    - [1.2.5. Compliance Service](#125-compliance-service)
      - [1.2.5.1. Batch Compliance](#1251-batch-compliance)
  - [1.3. 補足 🏄](#13-補足-)
    - [1.3.1. メソッド名](#131-メソッド名)
    - [1.3.2. App-Onlyベアラートークンの生成](#132-app-onlyベアラートークンの生成)
    - [1.3.3. リクエスト送信時のNULLパラメーターの扱い](#133-リクエスト送信時のnullパラメーターの扱い)
    - [1.3.4. `expansions`でオブジェクトのフィールドを拡張](#134-expansionsでオブジェクトのフィールドを拡張)
    - [1.3.5. `fields`でオブジェクトのフィールドを拡張](#135-fieldsでオブジェクトのフィールドを拡張)
  - [1.4. 貢献 🏆](#14-貢献-)
  - [1.5. 貢献者たち ✨](#15-貢献者たち-)
  - [1.6. サポート ❤️](#16-サポート-️)
  - [1.7. ライセンス 🔑](#17-ライセンス-)
  - [1.8. その他 🧐](#18-その他-)

<!-- /TOC -->

# 1. ガイド 🌎

このライブラリは[Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction)をDartとFlutterで使用するための最も簡単な方法を提供します。

**プロジェクトをサポートするために❤️とリポジトリにスターを付けてください。**

## 1.1. 始めましょう ⚡

### 1.1.1. ライブラリのインストール

**Dartの場合:**

```bash
 dart pub add twitter_api_v2
```

**またはFlutterの場合:**

```bash
 flutter pub add twitter_api_v2
```

### 1.1.2. インポート

```dart
import 'package:twitter_api_v2/twitter_api_v2';
```

### 1.1.3. 実装

```dart
Future<void> main() async {
  //! https://developer.twitter.com で各種トークンの取得が必要です。
  final twitter = v2.TwitterApi(
    //! OAuth2.0での認証がデフォルトです。
    //!
    //! ツイートやいいねといったユーザーの権限が必要になる操作には
    //! OAuth2.0 PKCEで発行されたトークンが必要になる点に注意してください。
    bearerToken: 'YOUR_TOKEN_HERE',

    //! もしくは、あなたはOAuth2.0 PKCEの代わりに古き良きOAuth 1.0aで認証を行いたいかもしれません。
    //! その場合は、以下の実装でOAuth 1.0aのトークンを指定できます。
    //!
    //! しかし、いくつかのエンドポイントはOAuth 1.0aの認証方式では使用できない点に注意してください。
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),
  );

  try {
    // 認証されたユーザープロフィールを取得。
    final me = await twitter.usersService.lookupMe();
    // 検索クエリにマッチするツイートを取得。
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
      // 検索結果を拡張することができます。
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

    // 高性能なVolume Streamエンドポイントを利用可能です。
    final volumeStream = await twitter.tweetsService.connectVolumeStream();
    await for (final response in volumeStream.handleError(print)) {
      print(response);
    }

    // また、高性能なFiltered Streamエンドポイントも利用可能です。
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
  } on v2.RateLimitExceededException catch (e) {
    print(e);
  } on v2.TwitterException catch (e) {
    print(e.response.headers);
    print(e.body);
    print(e);
  }
}
```

## 1.2. サポートされているエンドポイント 👀

### 1.2.1. Tweets Service

#### 1.2.1.1. ツイート

| エンドポイント                                                                                                                | メソッド名                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/post-tweets)            | [createTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createTweet.html)   |
| [DELETE /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/delete-tweets-id) | [destroyTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyTweet.html) |

#### 1.2.1.2. いいね

| エンドポイント                                                                                                                                     | メソッド名                                                                                                                   |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/likes](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/post-users-id-likes)                        | [createLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createLike.html)               |
| [DELETE /2/users/:id/likes/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/delete-users-id-likes-tweet_id) | [destroyLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyLike.html)             |
| [GET /2/tweets/:id/liking_users](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users)          | [lookupLikingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikingUsers.html) |
| [GET /2/users/:id/liked_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets)            | [lookupLikedTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikedTweets.html) |

#### 1.2.1.3. リツイート

| エンドポイント                                                                                                                                                     | メソッド名                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/retweets](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/post-users-id-retweets)                               | [createRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createRetweet.html)               |
| [DELETE /2/users/:id/retweets/:source_tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/delete-users-id-retweets-tweet_id) | [destroyRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyRetweet.html)             |
| [GET /2/tweets/:id/retweeted_by](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by)                       | [lookupRetweetedUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupRetweetedUsers.html) |

#### 1.2.1.4. 引用ツイート

| エンドポイント                                                                                                                                   | メソッド名                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/:id/quote_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets) | [lookupQuoteTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupQuoteTweets.html) |

#### 1.2.1.5. ツイート検索

| エンドポイント                                                                                                                        | メソッド名                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [GET /2/tweets/search/all](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all)       | [searchAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchAll.html)       |
| [GET /2/tweets/search/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent) | [searchRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchRecent.html) |

#### 1.2.1.6. ツイート参照

| エンドポイント                                                                                                   | メソッド名                                                                                                       |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets)        | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html) |
| [GET /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id) | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html)  |

#### 1.2.1.7. ツイート数

| エンドポイント                                                                                                                        | メソッド名                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/counts/all](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all)       | [countAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countAll.html)       |
| [GET /2/tweets/counts/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent) | [countRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countRecent.html) |

#### 1.2.1.8. ブックマーク

| エンドポイント                                                                                                                                                 | メソッド名                                                                                                               |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/post-users-id-bookmarks)                        | [createBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createBookmark.html)   |
| [DELETE /2/users/:id/bookmarks/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/delete-users-id-bookmarks-tweet_id) | [destroyBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyBookmark.html) |
| [GET /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks)                          | [lookupBookmarks](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupBookmarks.html) |

#### 1.2.1.9. タイムライン

| エンドポイント                                                                                                                                                          | メソッド名                                                                                                                     |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/users/:id/mentions](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions)                                     | [lookupMentions](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupMentions.html)         |
| [GET /2/users/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets)                                         | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupTweets.html)             |
| [GET /2/users/:id/timelines/reverse_chronological](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-reverse-chronological) | [lookupHomeTimeline](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupHomeTimeline.html) |

#### 1.2.1.10. リプライ非表示

| エンドポイント                                                                                                                       | メソッド名                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [createHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createHiddenReply.html)   |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [destroyHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyHiddenReply.html) |

#### 1.2.1.11. Volume Stream

| エンドポイント                                                                                                                                | メソッド名                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/sample/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream) | [connectVolumeStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectVolumeStream.html) |

#### 1.2.1.12. Filtered Stream

| エンドポイント                                                                                                                                               | メソッド名                                                                                                                           |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/post-tweets-search-stream-rules) | [createFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createFilteringRules.html)   |
| [GET /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream-rules)   | [lookupFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupFilteringRules.html)   |
| [GET /2/tweets/search/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream)               | [connectFilteredStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectFilteredStream.html) |

### 1.2.2. Users Service

#### 1.2.2.1. フォロー

| エンドポイント                                                                                                                                                              | メソッド名                                                                                                                |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/post-users-source_user_id-following)                            | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createFollow.html)         |
| [DELETE /2/users/:source_user_id/following/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/delete-users-source_id-following) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyFollow.html)       |
| [GET /2/users/:id/followers](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-followers)                                          | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowers.html)   |
| [GET /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-following)                                          | [lookupFollowings](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowings.html) |

#### 1.2.2.2. ユーザー参照

| エンドポイント                                                                                                                                    | メソッド名                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/users](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users)                                            | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByIds.html)     |
| [GET /2/users/:id](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-id)                                     | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupById.html)       |
| [GET /2/users/by](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by)                                      | [lookupByNames](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByNames.html) |
| [GET /2/users/by/username/:username](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by-username-username) | [lookupByName](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByName.html)   |
| [GET /2/users/me](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-me)                                      | [lookupMe](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMe.html)           |

#### 1.2.2.3. ミュート

| エンドポイント                                                                                                                                                    | メソッド名                                                                                                                  |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/post-users-user_id-muting)                                 | [createMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createMute.html)               |
| [DELETE /2/users/:source_user_id/muting/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/delete-users-user_id-muting) | [destroyMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyMute.html)             |
| [GET /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/get-users-muting)                                           | [lookupMutingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMutingUsers.html) |

#### 1.2.2.4. ブロック

| エンドポイント                                                                                                                                                         | メソッド名                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/post-users-user_id-blocking)                                 | [createBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createBlock.html)                 |
| [DELETE /2/users/:source_user_id/blocking/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/delete-users-user_id-blocking) | [destroyBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyBlock.html)               |
| [GET /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/get-users-blocking)                                           | [lookupBlockingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupBlockingUsers.html) |

### 1.2.3. Spaces Service

#### 1.2.3.1. スペース検索

| エンドポイント                                                                                                          | メソッド名                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces/search](https://developer.twitter.com/en/docs/twitter-api/spaces/search/api-reference/get-spaces-search) | [search](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/search.html) |

#### 1.2.3.2. スペース参照

| エンドポイント                                                                                                                          | メソッド名                                                                                                                     |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces)                               | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByIds.html)               |
| [GET /2/spaces/:id](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id)                        | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupById.html)                 |
| [GET /2/spaces/:id/buyers](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-buyers)          | [lookupBuyers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupBuyers.html)             |
| [GET /2/spaces/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-tweets)          | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupTweets.html)             |
| [GET /2/spaces/by/creator_ids](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-by-creator-ids) | [lookupByCreatorIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByCreatorIds.html) |

### 1.2.4. Lists Service

#### 1.2.4.1. リスト参照

| エンドポイント                                                                                                                             | メソッド名                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-lists-id)                         | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupById.html)       |
| [GET /2/users/:id/owned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-users-id-owned_lists) | [lookupOwnedBy](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupOwnedBy.html) |

#### 1.2.4.2. ピン留め

| エンドポイント                                                                                                                                                       | メソッド名                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/post-users-id-pinned-lists)                      | [createPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPinnedList.html)   |
| [DELETE /2/users/:id/pinned_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/delete-users-id-pinned-lists-list_id) | [destroyPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyPinnedList.html) |
| [GET /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/get-users-id-pinned_lists)                        | [lookupPinnedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupPinnedLists.html) |

#### 1.2.4.3. ツイート参照

| エンドポイント                                                                                                                   | メソッド名                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/lists/list-tweets/api-reference/get-lists-id-tweets) | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupTweets.html) |

#### 1.2.4.4. リスト管理

| エンドポイント                                                                                                            | メソッド名                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPublicList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPublicList.html)       |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPrivateList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPrivateList.html)     |
| [DELETE /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id) | [destroyList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyList.html)                 |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPublic](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPublic.html)   |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPrivate](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPrivate.html) |

#### 1.2.4.5. フォロー

| エンドポイント                                                                                                                                                           | メソッド名                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/post-users-id-followed-lists)                      | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createFollow.html)               |
| [DELETE /2/users/:id/followed_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/delete-users-id-followed-lists-list_id) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyFollow.html)             |
| [GET /2/lists/:id/followers](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-lists-id-followers)                                  | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowers.html)         |
| [GET /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-users-id-followed_lists)                        | [lookupFollowedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowedLists.html) |

#### 1.2.4.6. メンバー

| エンドポイント                                                                                                                                             | メソッド名                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/post-lists-id-members)                      | [createMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createMember.html)           |
| [DELETE /2/lists/:id/members/:user_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/delete-lists-id-members-user_id) | [destroyMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyMember.html)         |
| [GET /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)                        | [lookupMembers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMembers.html)         |
| [GET /2/users/:id/list_memberships](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)               | [lookupMemberships](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMemberships.html) |

### 1.2.5. Compliance Service

#### 1.2.5.1. Batch Compliance

| エンドポイント                                                                                                                                   | メソッド名                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/post-compliance-jobs)      | [createJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/createJob.html)   |
| [GET /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs)        | [lookupJobs](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJobs.html) |
| [GET /2/compliance/jobs/:id](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs-id) | [lookupJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJob.html)   |

## 1.3. 補足 🏄

### 1.3.1. メソッド名

`twitter_api_v2`はそれぞれのエンドポイントの性質に基づいて次のような標準的なプレフィックスをメソッド名に付与しています。そのため、あなたが使用したいエンドポイントに対応したメソッドを探すのはとても簡単です！

| プレフィックス | 説明                                                                                       |
| -------------- | ------------------------------------------------------------------------------------------ |
| **lookup**     | このプレフィックスはツイートやユーザー等の参照を行うエンドポイントに付与されてます。       |
| **search**     | このプレフィックスは広範囲な検索を行うエンドポイントに付与されます。                       |
| **connect**    | このプレフィックスは高性能なストリーミングを行うエンドポイントに付与されます。             |
| **count**      | このプレフィックスは特定の項目を数えるエンドポイントに付与されます。                       |
| **create**     | このプレフィックスはツイートやフォローといった状態を生成するエンドポイントに付与されます。 |
| **destroy**    | このプレフィックスはツイートやフォローといった状態を削除するエンドポイントに付与されます。 |
| **update**     | このプレフィックスはツイートやフォローといった状態を更新するエンドポイントに付与されます。 |

### 1.3.2. App-Onlyベアラートークンの生成

`twitter_api_v2`はあなたのApp-Onlyベアラートークンを生成するための便利な機能を提供しています。

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

### 1.3.3. リクエスト送信時のNULLパラメーターの扱い

このライブラリではエンドポイントを使用する際に必須ではないオプション引数をnull許容として定義していますが、開発者はこのライブラリを使用してリクエストを送信する際にこれらのnullを意識する必要はありません。

つまり、このライブラリではオプション引数に指定されたnullはリクエスト送信前に安全に削除されるように設計されています。

例えば、次の引数に指定されたnullのフィールドはリクエスト送信前に削除されます。

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  await twitter.tweetsService.createTweet(
    text: 'Hello, World!',
    // これらのnullのフィールドはリクエスト送信前に削除される。
    mediaIds: null,
    expansions: null,
  );
}
```

### 1.3.4. `expansions`でオブジェクトのフィールドを拡張

例えば、レスポンスオブジェクトに特定のデータのIDが含まれていて、そのIDに紐づく詳細なデータも同時に取得したいという場面があるかもしれません。そういった場合には、`expansions`と呼ばれる`Twitter API v2.0`の仕様が便利で、このライブラリもその仕様をサポートしています。

基本的に`expansions`はGET通信を行う`lookup`や`search`の処理で使用できます。いくつかのフィールドは[TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html)の`includes`フィールドに格納されます。

次のように`expansions`を使用できます:

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      // 必要なフィールドを指定してください！
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

`expansions`に関するより詳細な情報は[公式ドキュメント](https://developer.twitter.com/en/docs/twitter-api/expansions)で参照できます。

### 1.3.5. `fields`でオブジェクトのフィールドを拡張

`Twitter API v2.0`はとても面白い仕様を持っており、ユーザーが場合に応じて各エンドポイントからのレスポンスに含まれるデータ量を制御することができます。これは`fields`と呼ばれており、このライブラリもこの仕様をサポートしています。

基本的に`expansions`はGET通信を行う`lookup`や`search`の処理で使用できます。いくつかのフィールドは[TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html)の`includes`フィールドに格納されます。

次のように`fields`を使用できます:

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
> いくつかのフィールドは`expansions`と同時に指定する必要がある点に注意してください。

`fields`に関するより詳細な情報は[公式ドキュメント](https://developer.twitter.com/en/docs/twitter-api/fields)で参照できます。

## 1.4. 貢献 🏆

もし`twitter_api_v2`に貢献したい場合は、[Issue](https://github.com/twitter-dart/twitter-api-v2/issues)を作成するかプルリクエストを作成してください。

OSSに貢献するための方法は様々です。例えば、次のような場合が考えられます。

- 実装されていないリクエストパラメーターやレスポンスフィールドがある。
- ドキュメントが古いまたは不足している。
- 機能をより良く改善するアイデアや方法がある。
- 等々...

以下のドキュメントからより詳細な情報を確認できます。

- [コントリビューター行動規範](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
- [貢献ガイドライン](https://github.com/twitter-dart/twitter-api-v2/blob/main/CONTRIBUTING.md)
- [開発標準](https://github.com/twitter-dart/twitter-api-v2/blob/main/STYLEGUIDE.md)

または、必要であれば[ディスカッション](https://github.com/twitter-dart/twitter-api-v2/discussions)を作成することもできます。

**開発には気楽に参加してください、多様な意見がソフトウェアをより良くします！**

## 1.5. 貢献者たち ✨

以下の素晴らしい貢献者たちに感謝します ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

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

このプロジェクトは[all-contributors](https://github.com/all-contributors/all-contributors)の仕様に則っています。どのような貢献も歓迎です！

## 1.6. サポート ❤️

私たちにあなたのサポートを示す最も簡単な方法は[GitHub](https://github.com/twitter-dart/twitter-api-v2)の開発リポジトリと[Pub.dev](https://pub.dev/packages/twitter_api_v2)に**スターを付けること**です。

またはGitHubでこの**プロジェクトのスポンサーになる**こともできます:

<div align="left">
  <p>
    <a href="https://github.com/sponsors/myconsciousness">
      <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
    </a>
  </p>
</div>

次のバッジをあなたのリポジトリに付けて、あなたのアプリが`twitter_api_v2`によって作成されたことを示すことも可能です。

[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)

```
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)
```

## 1.7. ライセンス 🔑

`twitter_api_v2`に含まれる全てのリソースは`BSD-3`ライセンスに則って提供されます。

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_large)

> **Note**</br>
> ソースのヘッダーに含まれるライセンス表記は`.github/header-checker-lint.yml`をもとに厳しくチェックされます。ライセンス表記に関する設定の詳細は[header-checker-lint.yml](https://github.com/twitter-dart/twitter-api-v2/tree/main/.github/header-checker-lint.yml)を参照してください。


## 1.8. その他 🧐

`twitter_api_v2`は **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness))_** によって設計され実装されました。

- [作者プロフィール](https://github.com/myConsciousness)
- [ライセンス](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
- [APIドキュメント](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/twitter_api_v2-library.html)
- [リリースノート](https://github.com/twitter-dart/twitter-api-v2/releases)
- [バグ報告](https://github.com/twitter-dart/twitter-api-v2/issues)
