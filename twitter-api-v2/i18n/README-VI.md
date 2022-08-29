<p align="center">
  <a href="https://github.com/twitter-dart/twitter-api-v2">
    <img alt="twitter_api_v2" width="500px" src="https://user-images.githubusercontent.com/13072231/165789212-8f335632-64b2-4eac-be54-8147ccfe7ab1.png">
  </a>
</p>

<p align="center">
  <b>Thư viện đóng gói Twitter API v2.0 nhẹ và đa nền tảng 🐦</b>
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

| [English](https://github.com/twitter-dart/twitter-api-v2/blob/main/README.md) | [日本語](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-JA.md) | [Français](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-FR.md) | Tiếng Việt | [বাংলা](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-BN.md) | [Español](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-ES.md) | [Deutsch](https://github.com/twitter-dart/twitter-api-v2/blob/main/i18n/README-DE.md) |

---

<!-- TOC -->

- [1. Hướng dẫn 🌎](#1-hướng-dẫn-)
  - [1.1. Bắt đầu ⚡](#11-bắt-đầu-)
    - [1.1.1. Cài đặt thư viện](#111-cài-đặt-thư-viện)
    - [1.1.2. Import](#112-import)
    - [1.1.3. Implementation](#113-implementation)
  - [1.2. Các Endpoint được hỗ trợ 👀](#12-các-endpoint-được-hỗ-trợ-)
    - [1.2.1. Các Tweet Service](#121-các-tweet-service)
      - [1.2.1.1. Tweet](#1211-tweet)
      - [1.2.1.2. Các lượt thích](#1212-các-lượt-thích)
      - [1.2.1.3. Các lượt Retweet](#1213-các-lượt-retweet)
      - [1.2.1.4. Các Tweet trích dẫn](#1214-các-tweet-trích-dẫn)
      - [1.2.1.5. Tìm kiếm các Tweet](#1215-tìm-kiếm-các-tweet)
      - [1.2.1.6. Tra cứu các Tweet](#1216-tra-cứu-các-tweet)
      - [1.2.1.7. Đếm các Tweet](#1217-đếm-các-tweet)
      - [1.2.1.8. Các đánh dấu (Bookmarks)](#1218-các-đánh-dấu-bookmarks)
      - [1.2.1.9. Các dòng thời gian (Timelines)](#1219-các-dòng-thời-gian-timelines)
      - [1.2.1.10. Các phản hồi đã ẩn](#12110-các-phản-hồi-đã-ẩn)
      - [1.2.1.11. Volume Stream](#12111-volume-stream)
      - [1.2.1.12. Stream đã được lọc](#12112-stream-đã-được-lọc)
    - [1.2.2. Service về người dùng](#122-service-về-người-dùng)
      - [1.2.2.1. Các lượt theo dõi](#1221-các-lượt-theo-dõi)
      - [1.2.2.2. Tra cứ người dùng](#1222-tra-cứ-người-dùng)
      - [1.2.2.3. Tắt tiếng người dùng](#1223-tắt-tiếng-người-dùng)
      - [1.2.2.4. Chặn](#1224-chặn)
    - [1.2.3. Service về các Space](#123-service-về-các-space)
      - [1.2.3.1. Tìm kiếm các Space](#1231-tìm-kiếm-các-space)
      - [1.2.3.2. Tra cứu các Space](#1232-tra-cứu-các-space)
    - [1.2.4. Service về danh sách](#124-service-về-danh-sách)
      - [1.2.4.1. Tra cứu các danh sách](#1241-tra-cứu-các-danh-sách)
      - [1.2.4.2. Các Ghim](#1242-các-ghim)
      - [1.2.4.3. Tra cứu Tweet](#1243-tra-cứu-tweet)
      - [1.2.4.4. Quản lý danh sách](#1244-quản-lý-danh-sách)
      - [1.2.4.5. Các lượt theo dõi](#1245-các-lượt-theo-dõi)
      - [1.2.4.6. Các thành viên](#1246-các-thành-viên)
    - [1.2.5. Compliance Service](#125-compliance-service)
      - [1.2.5.1. Batch Compliance](#1251-batch-compliance)
  - [1.3. Các mẹo 🏄](#13-các-mẹo-)
    - [1.3.1. Tên các phương thức](#131-tên-các-phương-thức)
    - [1.3.2. Tạo App-Only Bearer Token](#132-tạo-app-only-bearer-token)
    - [1.3.3. Tham số Null trong Request](#133-tham-số-null-trong-request)
    - [1.3.4. Mở rộng các trường của đối tượng với `expansions`](#134-mở-rộng-các-trường-của-đối-tượng-với-expansions)
    - [1.3.5. Mở rộng các trường của đối tượng với `fields`](#135-mở-rộng-các-trường-của-đối-tượng-với-fields)
  - [1.4. Sự đóng góp 🏆](#14-sự-đóng-góp-)
  - [1.5. Những người đóng góp ✨](#15-những-người-đóng-góp-)
  - [1.6. Ủng hộ ❤️](#16-ủng-hộ-️)
  - [1.7. Giấy phép 🔑](#17-giấy-phép-)
  - [1.8. Thông tin thêm 🧐](#18-thông-tin-thêm-)

<!-- /TOC -->

# 1. Hướng dẫn 🌎

Thư viện này cung cấp cách dễ nhất để dùng [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) trong **Dart** và các ứng dụng **Flutter**.

**Hãy thả ❤️ và star cho repo này dể ủng hộ dự án!.**

## 1.1. Bắt đầu ⚡

### 1.1.1. Cài đặt thư viện

**Với Dart:**

```bash
 dart pub add twitter_api_v2
```

**Hoặc với Flutter:**

```bash
 flutter pub add twitter_api_v2
```

### 1.1.2. Import

```dart
import 'package:twitter_api_v2/twitter_api_v2';
```

### 1.1.3. Implementation

```dart
Future<void> main() async {
  //! Bạn cần có các key và token ở trang https://developer.twitter.com
  final twitter = v2.TwitterApi(
    //! Xác thực (Authentication) với OAuth2.0 là mặc định.
    //!
    //! Lưu ý rằng để sử dụng các endpoint này cần các quyền cụ thể của người dùng,
    //! như các lượt tweet và lượt thích, bạn cần có một token được tạo ra bởi OAuth2.0 PKCE.

    bearerToken: 'YOUR_TOKEN_HERE',

    //! Hoặc có thể bạn sẽ thích sử dụng phương thức OAuth1.0a
    //! hơn phương thức OAuth2.0 PKCE. Thì bạn có thể sử dụng code sau đây
    //! để thiết lập OAuth1.0a token.
    //!
    //! Tuy nhiên, lưu ý rằng một vài endpoint không thể sử dụng phương thức OAuth 1.0a
    //! để xác thực.


    oauthTokens: v2.OAuthTokens(
      consumerKey: 'YOUR_CONSUMER_KEY_HERE',
      consumerSecret: 'YOUR_CONSUMER_SECRET_HERE',
      accessToken: 'YOUR_ACCESS_TOKEN_HERE',
      accessTokenSecret: 'YOUR_ACCESS_TOKEN_SECRET_HERE',
    ),
  );

  try {
    // Lấy về hồ sơ (profile) của người dùng đã xác thực
    final me = await twitter.usersService.lookupMe();
    // Lấy về các tweet với truy vấn tìm kiếm (query) tương ứng.
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      maxResults: 20,
      // Bạn có thể mở rộng kết quả tìm kiếm.
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

    // Stream endpoint với High-performance Volume thì có sẵn.
    final volumeStream = await twitter.tweetsService.connectVolumeStream();
    await for (final response in volumeStream.handleError(print)) {
      print(response);
    }

    // Stream endpoint với hiệu suất lọc cao cũng có sẵn.
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

## 1.2. Các Endpoint được hỗ trợ 👀

### 1.2.1. Các Tweet Service

#### 1.2.1.1. Tweet

| Endpoint                                                                                                                      | Tên Phương Thức                                                                                                    |
| ----------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/post-tweets)            | [createTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createTweet.html)   |
| [DELETE /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/delete-tweets-id) | [destroyTweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyTweet.html) |

#### 1.2.1.2. Các lượt thích

| Endpoint                                                                                                                                           | Tên Phương Thức                                                                                                              |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/likes](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/post-users-id-likes)                        | [createLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createLike.html)               |
| [DELETE /2/users/:id/likes/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/delete-users-id-likes-tweet_id) | [destroyLike](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyLike.html)             |
| [GET /2/tweets/:id/liking_users](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users)          | [lookupLikingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikingUsers.html) |
| [GET /2/users/:id/liked_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets)            | [lookupLikedTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupLikedTweets.html) |

#### 1.2.1.3. Các lượt Retweet

| Endpoint                                                                                                                                                           | Tên Phương Thức                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/retweets](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/post-users-id-retweets)                               | [createRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createRetweet.html)               |
| [DELETE /2/users/:id/retweets/:source_tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/delete-users-id-retweets-tweet_id) | [destroyRetweet](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyRetweet.html)             |
| [GET /2/tweets/:id/retweeted_by](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by)                       | [lookupRetweetedUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupRetweetedUsers.html) |

#### 1.2.1.4. Các Tweet trích dẫn

| Endpoint                                                                                                                                         | Tên Phương Thức                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/:id/quote_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets) | [lookupQuoteTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupQuoteTweets.html) |

#### 1.2.1.5. Tìm kiếm các Tweet

| Endpoint                                                                                                                              | Tên Phương Thức                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| [GET /2/tweets/search/all](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all)       | [searchAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchAll.html)       |
| [GET /2/tweets/search/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent) | [searchRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/searchRecent.html) |

#### 1.2.1.6. Tra cứu các Tweet

| Endpoint                                                                                                         | Tên Phương Thức                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets)        | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html) |
| [GET /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id) | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupByIds.html)  |

#### 1.2.1.7. Đếm các Tweet

| Endpoint                                                                                                                              | Tên Phương Thức                                                                                                  |
| ------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/counts/all](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all)       | [countAll](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countAll.html)       |
| [GET /2/tweets/counts/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent) | [countRecent](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/countRecent.html) |

#### 1.2.1.8. Các đánh dấu (Bookmarks)

| Endpoint                                                                                                                                                       | Tên Phương Thức                                                                                                          |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/post-users-id-bookmarks)                        | [createBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createBookmark.html)   |
| [DELETE /2/users/:id/bookmarks/:tweet_id](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/delete-users-id-bookmarks-tweet_id) | [destroyBookmark](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyBookmark.html) |
| [GET /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks)                          | [lookupBookmarks](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupBookmarks.html) |

#### 1.2.1.9. Các dòng thời gian (Timelines)

| Endpoint                                                                                                                                                                | Tên Phương Thức                                                                                                                |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/users/:id/mentions](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions)                                     | [lookupMentions](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupMentions.html)         |
| [GET /2/users/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets)                                         | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupTweets.html)             |
| [GET /2/users/:id/timelines/reverse_chronological](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-reverse-chronological) | [lookupHomeTimeline](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupHomeTimeline.html) |

#### 1.2.1.10. Các phản hồi đã ẩn

| Endpoint                                                                                                                             | Tên Phương Thức                                                                                                                |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [createHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createHiddenReply.html)   |
| [PUT /2/tweets/:id/hidden](https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden) | [destroyHiddenReply](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/destroyHiddenReply.html) |

#### 1.2.1.11. Volume Stream

| Endpoint                                                                                                                                      | Tên Phương Thức                                                                                                                  |
| --------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| [GET /2/tweets/sample/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream) | [connectVolumeStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectVolumeStream.html) |

#### 1.2.1.12. Stream đã được lọc

| Endpoint                                                                                                                                                     | Tên Phương Thức                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| [POST /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/post-tweets-search-stream-rules) | [createFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/createFilteringRules.html)   |
| [GET /2/tweets/search/stream/rules](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream-rules)   | [lookupFilteringRules](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/lookupFilteringRules.html)   |
| [GET /2/tweets/search/stream](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream)               | [connectFilteredStream](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TweetsService/connectFilteredStream.html) |

### 1.2.2. Service về người dùng

#### 1.2.2.1. Các lượt theo dõi

| Endpoint                                                                                                                                                                    | Tên Phương Thức                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/post-users-source_user_id-following)                            | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createFollow.html)         |
| [DELETE /2/users/:source_user_id/following/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/delete-users-source_id-following) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyFollow.html)       |
| [GET /2/users/:id/followers](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-followers)                                          | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowers.html)   |
| [GET /2/users/:id/following](https://developer.twitter.com/en/docs/twitter-api/users/follows/api-reference/get-users-id-following)                                          | [lookupFollowings](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupFollowings.html) |

#### 1.2.2.2. Tra cứ người dùng

| Endpoint                                                                                                                                          | Tên Phương Thức                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/users](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users)                                            | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByIds.html)     |
| [GET /2/users/:id](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-id)                                     | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupById.html)       |
| [GET /2/users/by](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by)                                      | [lookupByNames](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByNames.html) |
| [GET /2/users/by/username/:username](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-by-username-username) | [lookupByName](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupByName.html)   |
| [GET /2/users/me](https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-me)                                      | [lookupMe](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMe.html)           |

#### 1.2.2.3. Tắt tiếng người dùng

| Endpoint                                                                                                                                                          | Tên Phương Thức                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/post-users-user_id-muting)                                 | [createMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createMute.html)               |
| [DELETE /2/users/:source_user_id/muting/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/delete-users-user_id-muting) | [destroyMute](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyMute.html)             |
| [GET /2/users/:id/muting](https://developer.twitter.com/en/docs/twitter-api/users/mutes/api-reference/get-users-muting)                                           | [lookupMutingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupMutingUsers.html) |

#### 1.2.2.4. Chặn

| Endpoint                                                                                                                                                               | Tên Phương Thức                                                                                                                 |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/post-users-user_id-blocking)                                 | [createBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/createBlock.html)                 |
| [DELETE /2/users/:source_user_id/blocking/:target_user_id](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/delete-users-user_id-blocking) | [destroyBlock](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/destroyBlock.html)               |
| [GET /2/users/:id/blocking](https://developer.twitter.com/en/docs/twitter-api/users/blocks/api-reference/get-users-blocking)                                           | [lookupBlockingUsers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/UsersService/lookupBlockingUsers.html) |

### 1.2.3. Service về các Space

#### 1.2.3.1. Tìm kiếm các Space

| Endpoint                                                                                                                | Tên Phương Thức                                                                                        |
| ----------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces/search](https://developer.twitter.com/en/docs/twitter-api/spaces/search/api-reference/get-spaces-search) | [search](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/search.html) |

#### 1.2.3.2. Tra cứu các Space

| Endpoint                                                                                                                                | Tên Phương Thức                                                                                                                |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| [GET /2/spaces](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces)                               | [lookupByIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByIds.html)               |
| [GET /2/spaces/:id](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id)                        | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupById.html)                 |
| [GET /2/spaces/:id/buyers](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-buyers)          | [lookupBuyers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupBuyers.html)             |
| [GET /2/spaces/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-id-tweets)          | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupTweets.html)             |
| [GET /2/spaces/by/creator_ids](https://developer.twitter.com/en/docs/twitter-api/spaces/lookup/api-reference/get-spaces-by-creator-ids) | [lookupByCreatorIds](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/SpacesService/lookupByCreatorIds.html) |

### 1.2.4. Service về danh sách

#### 1.2.4.1. Tra cứu các danh sách

| Endpoint                                                                                                                                   | Tên Phương Thức                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-lists-id)                         | [lookupById](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupById.html)       |
| [GET /2/users/:id/owned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-lookup/api-reference/get-users-id-owned_lists) | [lookupOwnedBy](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupOwnedBy.html) |

#### 1.2.4.2. Các Ghim

| Endpoint                                                                                                                                                             | Tên Phương Thức                                                                                                             |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/post-users-id-pinned-lists)                      | [createPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPinnedList.html)   |
| [DELETE /2/users/:id/pinned_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/delete-users-id-pinned-lists-list_id) | [destroyPinnedList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyPinnedList.html) |
| [GET /2/users/:id/pinned_lists](https://developer.twitter.com/en/docs/twitter-api/lists/pinned-lists/api-reference/get-users-id-pinned_lists)                        | [lookupPinnedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupPinnedLists.html) |

#### 1.2.4.3. Tra cứu Tweet

| Endpoint                                                                                                                         | Tên Phương Thức                                                                                                   |
| -------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| [GET /2/lists/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/lists/list-tweets/api-reference/get-lists-id-tweets) | [lookupTweets](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupTweets.html) |

#### 1.2.4.4. Quản lý danh sách

| Endpoint                                                                                                                  | Tên Phương Thức                                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPublicList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPublicList.html)       |
| [POST /2/lists](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/post-lists)            | [createPrivateList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createPrivateList.html)     |
| [DELETE /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/delete-lists-id) | [destroyList](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyList.html)                 |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPublic](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPublic.html)   |
| [PUT /2/lists/:id](https://developer.twitter.com/en/docs/twitter-api/lists/manage-lists/api-reference/put-lists-id)       | [updateListAsPrivate](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/updateListAsPrivate.html) |

#### 1.2.4.5. Các lượt theo dõi

| Endpoint                                                                                                                                                                 | Tên Phương Thức                                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/post-users-id-followed-lists)                      | [createFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createFollow.html)               |
| [DELETE /2/users/:id/followed_lists/:list_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/delete-users-id-followed-lists-list_id) | [destroyFollow](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyFollow.html)             |
| [GET /2/lists/:id/followers](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-lists-id-followers)                                  | [lookupFollowers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowers.html)         |
| [GET /2/users/:id/followed_lists](https://developer.twitter.com/en/docs/twitter-api/lists/list-follows/api-reference/get-users-id-followed_lists)                        | [lookupFollowedLists](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupFollowedLists.html) |

#### 1.2.4.6. Các thành viên

| Endpoint                                                                                                                                                   | Tên Phương Thức                                                                                                             |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| [POST /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/post-lists-id-members)                      | [createMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/createMember.html)           |
| [DELETE /2/lists/:id/members/:user_id](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/delete-lists-id-members-user_id) | [destroyMember](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/destroyMember.html)         |
| [GET /2/lists/:id/members](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)                        | [lookupMembers](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMembers.html)         |
| [GET /2/users/:id/list_memberships](https://developer.twitter.com/en/docs/twitter-api/lists/list-members/api-reference/get-lists-id-members)               | [lookupMemberships](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ListsService/lookupMemberships.html) |

### 1.2.5. Compliance Service

#### 1.2.5.1. Batch Compliance

| Endpoint                                                                                                                                         | Tên Phương Thức                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| [POST /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/post-compliance-jobs)      | [createJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/createJob.html)   |
| [GET /2/compliance/jobs](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs)        | [lookupJobs](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJobs.html) |
| [GET /2/compliance/jobs/:id](https://developer.twitter.com/en/docs/twitter-api/compliance/batch-compliance/api-reference/get-compliance-jobs-id) | [lookupJob](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/ComplianceService/lookupJob.html)   |

## 1.3. Các mẹo 🏄

### 1.3.1. Tên các phương thức

`twitter_api_v2` sử dụng các tiền tố chuẩn sau tùy thuộc vào các đặc điểm của endpoint. Vì vậy, rất dễ dàng để tìm thấy phương thức tương ứng với endpoint mà bạn muốn sử dụng!

| Tiền tố     | Mô tả                                                                                               |
| ----------- | --------------------------------------------------------------------------------------------------- |
| **lookup**  | Tiền tố này được gắn với các endpoint mà tham chiếu đến các tweet, người dùng, v.v.                 |
| **search**  | Tiền tố này được gắn với các endpoint thực hiện các tìm kiếm mở rộng.                               |
| **connect** | Tiền tố này được gắn với các endpoint với high-performance streaming.                               |
| **count**   | Tiền tố này được gắn với các endpoint đếm một đối tượng cụ thể.                                     |
| **create**  | Tiền tố này được gắn với các endpoint thực hiện trạng thái tạo chẳng hạn như `Tweet` và `Theo dõi`. |
| **destroy** | Tiền tố này được gắn với các endpoint thực hiện trạng thái hủy chẳng hạn như `Tweet` và `Theo dõi`. |
| **update**  | Tiền tố này được gắn với các endpoint thực hiện trạng thái cập nhật.                                |

### 1.3.2. Tạo App-Only Bearer Token

`twitter_api_v2` cung cấp tiện ích để tạo / tìm mã app-only bearer token của bạn.

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

### 1.3.3. Tham số Null trong Request

Trong thư viện này, các tham số là không bắt buộc lúc gửi request, tức là các tham số tùy chọn, được định nghĩa là có thể null.
Tuy nhiên, các nhà phát triển không cần phải biết về tham số null khi gửi yêu cầu khi sử dụng thư viện này.

Nó có nghĩa là các tham số được gán giá trị null sẽ được loại bỏ và bỏ qua một cách an toàn trước khi request được gửi đi.

Ví dụ, các tham số được gán bằng null sẽ bị bỏ qua trong request sau.

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  await twitter.tweetsService.createTweet(
    text: 'Hello, World!',
    // Các tham số này bị bỏ qua khi request vì chúng null.
    mediaIds: null,
    expansions: null,
  );
}
```

### 1.3.4. Mở rộng các trường của đối tượng với `expansions`

Ví dụ: có thể xảy ra trường hợp dữ liệu chỉ chứa một ID và bạn cũng muốn truy xuất đối tượng dữ liệu được liên kết với ID đó. Trong những trường hợp như vậy, thông số kỹ thuật `Twitter API v2.0` được gọi là `expansions` rất hữu ích và thư viện này hỗ trợ thông số kỹ thuật đó.

Về cơ bản, nó có thể được sử dụng trong các endpoint để mà thực hiện giao tiếp GET như xử lý `tra cứu` và ` tìm kiếm`. Một số trường cũng có thể được đưa vào thuộc tính `include` của [TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html).

Bạn có thể sử dụng `expansions` như bên dưới:

```dart
import 'package:twitter_api_v2/twitter_api_v2.dart' as v2;

Future<void> main() async {
  final twitter = v2.TwitterApi(bearerToken: 'YOUR_TOKEN_HERE');

  try {
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#ElonMusk',
      // Chỉ định các trường bạn cần!
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

Bạn có thể xem thêm chi tiết về `expansions` từ [Tài liệu chính thức](https://developer.twitter.com/en/docs/twitter-api/expansions).

### 1.3.5. Mở rộng các trường của đối tượng với `fields`

`Twitter API v2.0` hỗ trợ một thông số kỹ thuật rất thú vị, cho phép người dùng kiểm soát lượng dữ liệu có trong response object cho endpoint tùy thuộc vào tình huống. Nó được gọi là `fields` và thư viện này hỗ trợ đặc tả này.

Về cơ bản, nó có thể được sử dụng trong các endpoint thực hiện giao tiếp GET chẳng hạn như xử lý `tra cứu` và ` tìm kiếm`. Một số trường cũng có thể được đưa vào trường `include` của [TwitterResponse](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/TwitterResponse-class.html).

Bạn có thể sử dụng `fields` như bên dưới:

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

> **Lưu ý**</br>
> Một số trường phải được kết hợp với `expansions`.

Bạn có thể xem thêm chi tiết về `fields` từ [Tài liệu chính thức](https://developer.twitter.com/en/docs/twitter-api/fields).

## 1.4. Sự đóng góp 🏆

Nếu bạn muốn đóng góp cho `twitter_api_v2`, vui lòng tạo [issue](https://github.com/twitter-dart/twitter-api-v2/issues) hoặc tạo một Pull Request.

Có nhiều cách để đóng góp cho OSS. Ví dụ, các đề mục sau có thể được xem xét:

- Có các tham số request hoặc trường response không được thực hiện.
- Tài liệu lỗi thời hoặc không đầy đủ.
- Có cách hoặc ý tưởng tốt hơn để đạt được chức năng.
- vân vân...

Bạn có thể xem thêm chi tiết từ các nguồn bên dưới:

- [Quy tắc ứng xử của những người đóng góp](https://github.com/twitter-dart/twitter-api-v2/blob/main/CODE_OF_CONDUCT.md)
- [Các nguyên tắc đóng góp](https://github.com/twitter-dart/twitter-api-v2/blob/main/CONTRIBUTING.md)
- [Style Guide (Hướng dẫn phong cách)](https://github.com/twitter-dart/twitter-api-v2/blob/main/STYLEGUIDE.md)

Hoặc bạn có thể tạo [thảo luận](https://github.com/twitter-dart/twitter-api-v2/discussions) nếu cần.

**Hãy tham gia vào sự phát triển này, các ý kiến đa dạng giúp phần mềm tốt hơn!**

## 1.5. Những người đóng góp ✨

Cảm ơn những người tuyệt vời này ([emoji key](https://allcontributor.org/docs/en/emoji-key)):

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

Dự án này tuân theo đặc điểm kỹ thuật của [all-contributors](https://github.com/all-contributor/all-contributor). Những đóng góp của bất kỳ hình thức nào đều được chào đón!

## 1.6. Ủng hộ ❤️

Cách đơn giản nhất để cho chúng tôi thấy sự ủng hộ của bạn là **cho dự án một ngôi sao** tại [GitHub](https://github.com/twitter-dart/twitter-api-v2) và [Pub.dev](https://pub.dev/packages/twitter_api_v2).

Bạn cũng có thể hỗ trợ dự án này bằng cách **trở thành nhà tài trợ** trên GitHub:

<div align="left">
  <p>
    <a href="https://github.com/sponsors/myconsciousness">
      <img src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="50" width="210" alt="myconsciousness" />
    </a>
  </p>
</div>

Bạn cũng có thể hiển thị trên repository của mình rằng ứng dụng của bạn được tạo bằng `twitter_api_v2` bằng cách sử dụng một trong các huy hiệu sau:

[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)

```
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=flat-square)](https://github.com/twitter-dart/twitter-api-v2)
[![Powered by twitter_api_v2](https://img.shields.io/badge/Powered%20by-twitter_api_v2-00acee.svg?style=for-the-badge)](https://github.com/twitter-dart/twitter-api-v2)
```

## 1.7. Giấy phép 🔑

Tất cả tài nguyên của `twitter_api_v2` được cung cấp theo giấy phép` BSD-3`.

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Ftwitter-dart%2Ftwitter-api-v2?ref=badge_large)

> **Lưu ý**</br>
> Thông báo giấy phép trong source được xác thực nghiêm ngặt dựa trên `.github / header-checker-lint.yml`. Vui lòng kiểm tra [header-checker-lint.yml](https://github.com/twitter-dart/twitter-api-v2/tree/main/.github/header-checker-lint.yml) để biết các tiêu chuẩn được phép.

## 1.8. Thông tin thêm 🧐

`twitter_api_v2` được thiết kế và triển khai bởi **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness))_**.

- [Hồ sơ người sáng tạo](https://github.com/myConsciousness)
- [Giấy phép](https://github.com/twitter-dart/twitter-api-v2/blob/main/LICENSE)
- [Tài liệu API](https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/twitter_api_v2-library.html)
- [Ghi chú phát hành](https://github.com/twitter-dart/twitter-api-v2/releases)
- [Báo cáo lỗi](https://github.com/twitter-dart/twitter-api-v2/issues)
