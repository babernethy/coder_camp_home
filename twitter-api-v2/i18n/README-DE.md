<p align="center">
  <a href="https://github.com/twitter-dart/twitter-api-v2">
    <img alt="twitter_api_v2" width="500px" src="https://user-images.githubusercontent.com/13072231/165789212-8f335632-64b2-4eac-be54-8147ccfe7ab1.png">
  </a>
</p>

<p align="center">
  <b>Ein leichtgewichtiger Cross-Platform-Wrapper für die Twitter API v2.0 🐦</b>
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

| [English](https://github.com/twitter-dart/twitter-api-v2/blob/main/README.md) | [日本語](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-JA.md) | [Français](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-FR.md) | [Tiếng Việt](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-VI.md) | [বাংলা](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-BN.md) | [Español](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-ES.md) | Deutsch |

---

<!-- TOC -->

- [1. Guide 🌎](#1-guide-)
  - [1.1. Erste Schritte ⚡](#11-erste-schritte-)
    - [1.1.1. Installation](#111-installation)
    - [1.1.2. Import](#112-import)
    - [1.1.3. Implementierung](#113-implementierung)
  - [1.2. Unterstützte Endpunkte 👀](#12-unterstützte-endpunkte-)
    - [1.2.1. Tweets Service](#121-tweets-service)
      - [1.2.1.1. Tweet](#1211-tweet)
      - [1.2.1.2. Likes](#1212-likes)
      - [1.2.1.3. Retweets](#1213-retweets)
      - [1.2.1.4. Tweets zitieren](#1214-tweets-zitieren)
      - [1.2.1.5. Tweets suchen](#1215-tweets-suchen)
      - [1.2.1.6. Tweets abrufen](#1216-tweets-abrufen)
      - [1.2.1.7. Tweets zählen](#1217-tweets-zählen)
      - [1.2.1.8. Lesezeichen](#1218-lesezeichen)
      - [1.2.1.9. Timelines](#1219-timelines)
      - [1.2.1.10. Antworten verstecken](#12110-antworten-verstecken)
      - [1.2.1.11. Volume Stream](#12111-volume-stream)
      - [1.2.1.12. Gefilterter Stream](#12112-gefilterter-stream)
    - [1.2.2. User Service](#122-user-service)
      - [1.2.2.1. Follows](#1221-follows)
      - [1.2.2.2. User abrufen](#1222-user-abrufen)
      - [1.2.2.3. User muten](#1223-user-muten)
      - [1.2.2.4. User blockieren](#1224-user-blockieren)
    - [1.2.3. Spaces Service](#123-spaces-service)
      - [1.2.3.1. Spaces suchen](#1231-spaces-suchen)
      - [1.2.3.2. Spaces abrufen](#1232-spaces-abrufen)
    - [1.2.4. Listen Service](#124-listen-service)
      - [1.2.4.1. Listen abrufen](#1241-listen-abrufen)
      - [1.2.4.2. Pinnings](#1242-pinnings)
      - [1.2.4.3. Tweets abrufen](#1243-tweets-abrufen)
      - [1.2.4.4. Listen managen](#1244-listen-managen)
      - [1.2.4.5. Follows](#1245-follows)
      - [1.2.4.6. Mitglieder](#1246-mitglieder)
    - [1.2.5. Compliance Service](#125-compliance-service)
      - [1.2.5.1. Batch Compliance](#1251-batch-compliance)
  - [1.3. Tipps 🏄](#13-tipps-)
    - [1.3.1. Methoden Namen](#131-methoden-namen)
    - [1.3.2. Generierung eines App-Only Bearer Tokens](#132-generierung-eines-app-only-bearer-tokens)
    - [1.3.3. Null Parameter in Requests](#133-null-parameter-in-requests)
    - [1.3.4. Objektfelder mit `expansions` erweitern](#134-objektfelder-mit-expansions-erweitern)
    - [1.3.5. Objektfelder mit `fields` erweitern](#135-objektfelder-mit-fields-erweitern)
    - [1.3.6. OAuth 2.0 Autorisierung mit PKCE](#136-oauth-20-autorisierung-mit-pkce)
  - [1.4. Contribution 🏆](#14-contribution-)
  - [1.5. Contributors ✨](#15-contributors-)
  - [1.6. Support ❤️](#16-support-️)
  - [1.7. Lizenzen 🔑](#17-lizenzen-)
  - [1.8. Mehr Information 🧐](#18-mehr-information-)

<!-- /TOC -->

# 1. Guide 🌎

Dieses Package soll dir einen einfachen Weg ermöglichen die [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) in **Dart** und **Flutter** Apps anzubinden.

**Zeige ❤️ und gib dem Repository ein Stern, um das Projekt zu unterstützen.**

Wir stellen außerdem das [twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce) Package zur Verfügung, um die [OAuth 2.0 PKCE Autorisierung](https://developer.twitter.com/en/docs/authentication/oauth-2-0/authorization-code) bei der Verwendung der Twitter API zu nutzen!

## 1.1. Erste Schritte ⚡

### 1.1.1. Installation

**Mit Dart:**

```bash
 dart pub add twitter_api_v2
```

**Oder mit Flutter:**

```bash
 flutter pub add twitter_api_v2
```

### 1.1.2. Import

```dart
import 'package:twitter_api_v2/twitter_api_v2';
```

### 1.1.3. Implementierung

```dart
import 'dart:async';

import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  //! Die benötigten Keys und Tokens erhälst du unter https://developer.twitter.com
  final twitter = v2.TwitterApi(
    //! Die Autorisierung mit OAuth2.0 ist der Standard.
    //!
    //! Hinweis: Manche Endpunkte benötigen bestimmte Benutzer Berechtigungen und
    //! einen durch OAuth2.0 PKCE ausgestellten Token. Dazu zählt z.B. die Abfrage von
    //! Tweets und Likes.
    //!
    //! Der einfachste Weg, um eine Autorisierung mit OAuth 2.0 PKCE zu erreichen, ist
    //! die Verwendung von [twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce)!
    bearerToken: 'YOUR_TOKEN_HERE',

    //! Wenn du lieber die gute alte OAuth1.0a Methode verwenden möchtest, kannst du
    //! wie folgt OAuth1.0a Tokens abfragen.
    //!
    //! Hinweis: Manche Endpunkte können jedoch nicht mit der OAuth1.0a Methode
    //! verwendet werden.
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),

    //! Das Default Timeout liegt bei 10 Sekunden.
    timeout: Duration(seconds: 20),
  );

  try {
    // Erhalte das eingeloggte User Objekt
    final me = await twitter.usersService.lookupMe();
    // Erhalte die mit der Suche assoziierten Tweets
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
      // Du kannst die Suche wie folgt erweitern:
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

    // Ein hoch-performanter Volume Stream Endpunkt kann wie folgt verwendet werden:
    final volumeStream = await twitter.tweetsService.connectVolumeStream();
    await for (final response in volumeStream.handleError(print)) {
      print(response);
    }

    // Ein hoch-performanter gefilterter Stream kann wie folgt verwendet werden:
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

## 1.2. Unterstützte Endpunkte 👀

### 1.2.1. Tweets Service

#### 1.2.1.1. Tweet

| Endpunkt                                                                                                                      | Methoden Name                                                                                                      |
| ----------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/post-tweets)            | [createTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createTweet.html)   |
| [DELETE /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/delete-tweets-id) | [destroyTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyTweet.html) |

#### 1.2.1.2. Likes

| Endpunkt                                                                                                                                           | Methoden Name                                                                                                                |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/likes](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/post-users-id-likes)                        | [createLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createLike.html)               |
| [DELETE /2/users/:id/likes/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/delete-users-id-likes-tweet_id) | [destroyLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyLike.html)             |
| [GET /2/tweets/:id/liking_users](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users)          | [lookupLikingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikingUsers.html) |
| [GET /2/users/:id/liked_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets)            | [lookupLikedTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikedTweets.html) |

#### 1.2.1.3. Retweets

| Endpunkt                                                                                                                                                           | Methoden Name                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/retweets](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/post-users-id-retweets)                               | [createRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createRetweet.html)               |
| [DELETE /2/users/:id/retweets/:source_tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/delete-users-id-retweets-tweet_id) | [destroyRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyRetweet.html)             |
| [GET /2/tweets/:id/retweeted_by](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by)                       | [lookupRetweetedUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupRetweetedUsers.html) |

#### 1.2.1.4. Tweets zitieren

| Endpunkt                                                                                                                                         | Methoden Name                                                                                                                |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/:id/quote_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets) | [lookupQuoteTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupQuoteTweets.html) |

#### 1.2.1.5. Tweets suchen

| Endpunkt                                                                                                                              | Methoden Name                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [GET /2/tweets/search/all](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all)       | [searchAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchAll.html)       |
| [GET /2/tweets/search/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent) | [searchRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchRecent.html) |

#### 1.2.1.6. Tweets abrufen

| Endpunkt                                                                                                         | Methoden Name                                                                                                    |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets)        | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html) |
| [GET /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id) | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html)  |

#### 1.2.1.7. Tweets zählen

| Endpunkt                                                                                                                              | Methoden Name                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/counts/all](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all)       | [countAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countAll.html)       |
| [GET /2/tweets/counts/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent) | [countRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countRecent.html) |

#### 1.2.1.8. Lesezeichen

| Endpunkt                                                                                                                                                       | Methoden Name                                                                                                            |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/post-users-id-bookmarks)                        | [createBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createBookmark.html)   |
| [DELETE /2/users/:id/bookmarks/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/delete-users-id-bookmarks-tweet_id) | [destroyBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyBookmark.html) |
| [GET /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks)                          | [lookupBookmarks](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupBookmarks.html) |

#### 1.2.1.9. Timelines

| Endpunkt                                                                                                                                                                | Methoden Name                                                                                                                  |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/users/:id/mentions](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions)                                     | [lookupMentions](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupMentions.html)         |
| [GET /2/users/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets)                                         | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupTweets.html)             |
| [GET /2/users/:id/timelines/reverse_chronological](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-reverse-chronological) | [lookupHomeTimeline](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupHomeTimeline.html) |

#### 1.2.1.10. Antworten verstecken

| Endpunkt                                                                                                                             | Methoden Name                                                                                                                  |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [createHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createHiddenReply.html)   |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [destroyHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyHiddenReply.html) |

#### 1.2.1.11. Volume Stream

| Endpunkt                                                                                                                                      | Methoden Name                                                                                                                    |
| --------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/sample/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream) | [connectVolumeStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectVolumeStream.html) |

#### 1.2.1.12. Gefilterter Stream

| Endpunkt                                                                                                                                                     | Methoden Name                                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/post-tweets-search-stream-rules) | [createFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createFilteringRules.html)   |
| [GET /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream-rules)   | [lookupFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupFilteringRules.html)   |
| [GET /2/tweets/search/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream)               | [connectFilteredStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectFilteredStream.html) |

### 1.2.2. User Service

#### 1.2.2.1. Follows

| Endpunkt                                                                                                                                                                    | Methoden Name                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/post-users-source_user_id-following)                            | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createFollow.html)         |
| [DELETE /2/users/:source_user_id/following/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/delete-users-source_id-following) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyFollow.html)       |
| [GET /2/users/:id/followers](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-followers)                                          | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowers.html)   |
| [GET /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-following)                                          | [lookupFollowings](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowings.html) |

#### 1.2.2.2. User abrufen

| Endpunkt                                                                                                                                          | Methoden Name                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/users](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users)                                            | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByIds.html)     |
| [GET /2/users/:id](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-id)                                     | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupById.html)       |
| [GET /2/users/by](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by)                                      | [lookupByNames](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByNames.html) |
| [GET /2/users/by/username/:username](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by-username-username) | [lookupByName](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByName.html)   |
| [GET /2/users/me](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-me)                                      | [lookupMe](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMe.html)           |

#### 1.2.2.3. User muten

| Endpunkt                                                                                                                                                          | Methoden Name                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/post-users-user_id-muting)                                 | [createMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createMute.html)               |
| [DELETE /2/users/:source_user_id/muting/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/delete-users-user_id-muting) | [destroyMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyMute.html)             |
| [GET /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/get-users-muting)                                           | [lookupMutingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMutingUsers.html) |

#### 1.2.2.4. User blockieren

| Endpunkt                                                                                                                                                               | Methoden Name                                                                                                                   |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/post-users-user_id-blocking)                                 | [createBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createBlock.html)                 |
| [DELETE /2/users/:source_user_id/blocking/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/delete-users-user_id-blocking) | [destroyBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyBlock.html)               |
| [GET /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/get-users-blocking)                                           | [lookupBlockingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupBlockingUsers.html) |

### 1.2.3. Spaces Service

#### 1.2.3.1. Spaces suchen

| Endpunkt                                                                                                                | Methoden Name                                                                                          |
| ----------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces/search](https://developer.twitter.com/en/docs/twitter-api/spaces/search/api-reference/get-spaces-search) | [search](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/search.html) |

#### 1.2.3.2. Spaces abrufen

| Endpunkt                                                                                                                                | Methoden Name                                                                                                                  |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces)                               | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByIds.html)               |
| [GET /2/spaces/:id](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id)                        | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupById.html)                 |
| [GET /2/spaces/:id/buyers](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-buyers)          | [lookupBuyers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupBuyers.html)             |
| [GET /2/spaces/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-tweets)          | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupTweets.html)             |
| [GET /2/spaces/by/creator_ids](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-by-creator-ids) | [lookupByCreatorIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByCreatorIds.html) |

### 1.2.4. Listen Service

#### 1.2.4.1. Listen abrufen

| Endpunkt                                                                                                                                   | Methoden Name                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-lists-id)                         | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupById.html)       |
| [GET /2/users/:id/owned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-users-id-owned_lists) | [lookupOwnedBy](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupOwnedBy.html) |

#### 1.2.4.2. Pinnings

| Endpunkt                                                                                                                                                             | Methoden Name                                                                                                               |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/post-users-id-pinned-lists)                      | [createPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPinnedList.html)   |
| [DELETE /2/users/:id/pinned_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/delete-users-id-pinned-lists-list_id) | [destroyPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyPinnedList.html) |
| [GET /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/get-users-id-pinned_lists)                        | [lookupPinnedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupPinnedLists.html) |

#### 1.2.4.3. Tweets abrufen

| Endpunkt                                                                                                                         | Methoden Name                                                                                                     |
| -------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/lists/list-tweets/api-reference/get-lists-id-tweets) | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupTweets.html) |

#### 1.2.4.4. Listen managen

| Endpunkt                                                                                                                  | Methoden Name                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPublicList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPublicList.html)       |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPrivateList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPrivateList.html)     |
| [DELETE /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id) | [destroyList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyList.html)                 |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPublic](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPublic.html)   |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPrivate](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPrivate.html) |

#### 1.2.4.5. Follows

| Endpunkt                                                                                                                                                                 | Methoden Name                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/post-users-id-followed-lists)                      | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createFollow.html)               |
| [DELETE /2/users/:id/followed_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/delete-users-id-followed-lists-list_id) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyFollow.html)             |
| [GET /2/lists/:id/followers](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-lists-id-followers)                                  | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowers.html)         |
| [GET /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-users-id-followed_lists)                        | [lookupFollowedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowedLists.html) |

#### 1.2.4.6. Mitglieder

| Endpunkt                                                                                                                                                   | Methoden Name                                                                                                               |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/post-lists-id-members)                      | [createMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createMember.html)           |
| [DELETE /2/lists/:id/members/:user_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/delete-lists-id-members-user_id) | [destroyMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyMember.html)         |
| [GET /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)                        | [lookupMembers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMembers.html)         |
| [GET /2/users/:id/list_memberships](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)               | [lookupMemberships](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMemberships.html) |

### 1.2.5. Compliance Service

#### 1.2.5.1. Batch Compliance

| Endpunkt                                                                                                                                         | Methoden Name                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/post-compliance-jobs)      | [createJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/createJob.html)   |
| [GET /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs)        | [lookupJobs](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJobs.html) |
| [GET /2/compliance/jobs/:id](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs-id) | [lookupJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJob.html)   |

## 1.3. Tipps 🏄

### 1.3.1. Methoden Namen

**twitter_api_v2** verwendet die folgenden Standard Prefixes, basierend auf den Charakteristiken der Endpunkte. Damit ist es sehr einfach den Endpunkt zu finden, den du verwenden möchtest.

| Prefix      | Description                                                                                               |
| ----------- | --------------------------------------------------------------------------------------------------------- |
| **lookup**  | Dieses Prefix wird für Endpunkte verwendet, die z.B. Tweets und User referenzieren.                       |
| **search**  | Dieses Prefix wird für Endpunkte verwendet, die Suchen durchführen.                                       |
| **connect** | Dieses Prefix wird für Endpunkte verwendet, die hoch-performantes Streaming referenzieren.                |
| **count**   | Dieses Prefix wird für Endpunkte verwendet, die ein bestimmtes Item zählen.                               |
| **create**  | Dieses Prefix wird für Endpunkte verwendet, die ein Objekt erstellen, z.B. einen  `Tweet` oder `Follow`.  |
| **destroy** | Dieses Prefix wird für Endpunkte verwendet, die ein Objekt "zerstören", z.B. einen `Tweet` oder `Follow`. |
| **update**  | Dieses Prefix wird für Endpunkte verwendet, die ein Objekt updaten.                                       |

### 1.3.2. Generierung eines App-Only Bearer Tokens

**twitter_api_v2** stellt ein Utility zur Verfügung um App-Only Bearer Tokens zu generieren.

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

### 1.3.3. Null Parameter in Requests

In diesem Package werden Parameter, die zur Request Zeit nicht benötigt werden, z.B. optionale Parameter, als nullable definiert.
Die Parameter, die einen null-Wert enthalten, werden beim Senden des Requests ignoriert.

In dem folgenden Request z.B. werden die Parameter `mediaIds` und `expansions` ignoriert:

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  await twitter.tweetsService.createTweet(
    text: 'Hello, World!',
    mediaIds: null,
    expansions: null,
  );
}
```

### 1.3.4. Objektfelder mit `expansions` erweitern

Es gibt manchmal Situationen, dass ein Datensatz nur eine ID enthält, du aber das mit der ID assoziierte Objekt ebenfalls erhalten möchtest. In diesem Fall ist die sogenannte `expansions` der `Twitter API v2.0` Spezifikation sinnvoll.

Es kann in Endpunkten verwendet werden, die einen GET-Request ausführen (z.B. `lookup` oder `search`). Manche Felder werden auch in der `includes` Property der [TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html) mitgeliefert.

Du kannst `expansions` wie folgt verwenden:

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      // Spezifiziere die Felder, die du benötigst:
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

Mehr Informationen zum Thema `expansions` findest du in der [offiziellen Dokumentation](https://developer.twitter.com/en/docs/twitter-api/expansions).

### 1.3.5. Objektfelder mit `fields` erweitern

Die `Twitter API v2.0` unterstützt sogenannte `fields`, die es Usern ermöglicht, die Anzahl der Daten innerhalb einer Antwort für jeden Endpunkt basierend auf der Situation zu kontrollieren.

Diese `fields` können in Endpunkten verwendet werden, die einen GET-Request in Form eines `lookup` oder `search` ausführen. Manche `fields` können außerdem in einem `includes` Feld der [TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html) verwendet werden.

Du kannst `fields` wie folgt verwenden:

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

> **Hinweis**</br>
> Manche Felder müssen mit `expansions` kombiniert werden.

Weitere Informationen zum Thema `fields` erhälst du in der [offiziellen Dokumentation](https://developer.twitter.com/en/docs/twitter-api/fields).

### 1.3.6. OAuth 2.0 Autorisierung mit PKCE

**Twitter API v2.0** unterstützt Autorisierungs-Methoden mit [OAuth 2.0 PKCE](https://developer.twitter.com/en/docs/authentication/oauth-2-0/authorization-code) und erlaubt Usern die Verwendung der **Twitter API v2.0** für den minimal benötigten [scope](https://developer.twitter.com/en/docs/authentication/guides/v2-authentication-mapping).

Dadurch dass die Authentifizierung mit **OAuth2.0 PKCE** den Weg über einen Browser erfordert, ist **twitter_api_v2** nicht mit CLI Anwendungen kompatibel. Allerdings bieten wir dafür das [twitter_oauth2_pkce](https://pub.dev/packages/twitter_oauth2_pkce) für Flutter Apps an, was den Autorisierungs-Flow über den Browser abbilden kann.

Das **twitter_oauth2_pkce** Package ist zu 100% mit **twitter_api_v2** kompatibel. Mehr Informationen findest du hier:
- [Repository](https://github.com/twitter-dart/twitter-oauth2-pkce)
- [Pub.dev](https://pub.dev/packages/twitter_oauth2_pkce)

Ein Beispiel für die Verwendung der Packages **twitter_api_v2** und **twitter_oauth2_pkce** findest du außerdem hier:
- [Example Tweet App](https://github.com/twitter-dart/example-tweet-app-with-twitter-api-v2)

## 1.4. Contribution 🏆

Wenn du gerne etwas zum **twitter_api_v2** Package beitragen möchtest, erstelle bitte einen [Issue](https://github.com/twitter-dart/twitter-api-v2/issues) oder Pull Request.

Es gibt viele Wege, wie du dieses Package unterstützen kannst, z.B.:
- ... sind manche Request Parameter oder Response Felder noch nicht implementiert.
- ... die Vervollständigung und Aktualisierung der Dokumentation.
- ... die Verbesserung der Funktionalität durch andere Implementierungs-Ideen oder -Wege.
- etc...

Mehr Informationen zum Thema Contribution findest du hier:
- [Contributor Covenant Code of Conduct](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
- [Contribution Guidelines](https://github.com/twitter-dart/twitter-api-v2/blob/main/CONTRIBUTING.md)
- [Style Guide](https://github.com/twitter-dart/twitter-api-v2/blob/main/STYLEGUIDE.md)

Wenn du möchtest, kannst du auch eine [Diskussion](https://github.com/twitter-dart/twitter-api-v2/discussions) eröffnen.

**Fühle dich jederzeit frei an der Entwicklung des Packages mitzuwirken, denn verschiedene Meinungen, machen Software besser!**

## 1.5. Contributors ✨

Ein großes Dankeschön geht an diese wundervollen Menschen ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

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

Dieses Projekt folgt der [all-contributors](https://github.com/all-contributors/all-contributors) Spezifikation. Alle Contributors sind willkommen!

## 1.6. Support ❤️

Am einfachsten unterstützt du uns, indem du **dem Repository einen Stern gibst**: [GitHub](https://github.com/twitter-dart/twitter-api-v2) and [Pub.dev](https://pub.dev/packages/twitter_api_v2).

Außerdem kannst du unser **Sponsor auf GitHub** werden:

<div align="left">
  <p>
    <a href="https://github.com/sponsors/myconsciousness">
      <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
    </a>
  </p>
</div>

Zusätzlich dazu, kannst du in deinem Repository zeigen, dass deine App das **twitter_api_v2** Package verwendet. Hierzu kannst du die folgenden Badges einbinden:

[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)

```
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)
```

## 1.7. Lizenzen 🔑

Alle Inhalte des **twitter_api_v2** Packages stehen unter der `BSD-3` Lizenz.

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_large)

> **Hinweis**</br>
> Lizenz Hinweise in diesem Quellcode sind strikt validiert basierend auf `.github/header-checker-lint.yml`. Bitte überprüfe [header-checker-lint.yml](https://github.com/twitter-dart/twitter-api-v2/tree/main/.github/header-checker-lint.yml) auf die erlaubten Standards.

## 1.8. Mehr Information 🧐

**twitter_api_v2** wurde von **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness))_** erstellt und implementiert.

- [Creator Profil](https://github.com/myConsciousness)
- [Lizenz](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
- [API Dokument](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/twitter_api_v2-library.html)
- [Release Notes](https://github.com/twitter-dart/twitter-api-v2/releases)
- [Bug Reports](https://github.com/twitter-dart/twitter-api-v2/issues)
