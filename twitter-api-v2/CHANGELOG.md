# Release Note

## v3.0.1

- Fixed repository link in pubspec.yaml. ([#396](https://github.com/twitter-dart/twitter-api-v2/issues/396))

## v3.0.0

- Improved specification of data returned from POST, DELETE, and PUT communication endpoints. The previous specification always returned true regardless of whether the process was successful or not, but now returns false if an `errors` object exists in the response. ([#381](https://github.com/twitter-dart/twitter-api-v2/issues/381))

### Breaking Changes

- Changed return type of `destroyFilteringRules` from `FilteringRuleMeta` to `bool`. This is because there is no use for the `FilteringRuleMeta` object that was returned after the deletion of a filtering rule in the previous specification. If the deletion succeeds, true is returned; if the deletion fails for some reason, false is returned. ([#382](https://github.com/twitter-dart/twitter-api-v2/issues/382))

## v2.10.0

- Fixed to raise `TwitterException` if response object cannot be converted to JSON. ([#347](https://github.com/twitter-dart/twitter-api-v2/issues/347))
- Enforced the specification of access token in `OAuth 2.0` or `OAuth 1.0a` method when creating an instance of `TwitterApi` object. If either access token is not passed, an `ArgumentError` will be thrown. ([#352](https://github.com/twitter-dart/twitter-api-v2/issues/352))
- Added `UnauthorizedException`. Thrown when unauthorized with the specified access token. ([#348](https://github.com/twitter-dart/twitter-api-v2/issues/348))
- Added **Automatic Retry** feature. **Automatic retry** can be enabled by setting `RetryConfig` when creating the `TwitterApi` object. If `RetryConfig` is not passed to the `TwitterApi` object, automatic retry will not be triggered. ([#251](https://github.com/twitter-dart/twitter-api-v2/issues/251))
  - Regular Intervals
  - Exponential Backoff
  - Exponential Backoff and Jitter

## v2.9.0

- Added `state` parameter for `SpacesService.search`. ([#324](https://github.com/twitter-dart/twitter-api-v2/issues/324))
- Added `topicFields` parameters. ([#185](https://github.com/twitter-dart/twitter-api-v2/issues/185))
  - GET /2/spaces/search
  - GET /2/spaces
  - GET /2/spaces/:id
  - GET /2/spaces/by/creator_ids
- Added `SpaceExpansion.topicIds`. ([#185](https://github.com/twitter-dart/twitter-api-v2/issues/185))
- Added `ended` element for `SpaceState`. ([#333](https://github.com/twitter-dart/twitter-api-v2/issues/333))
- Removed HTTP status code checking process. With this modification, no exception will be thrown if, for example, you try to retweet a particular tweet and the tweet has already been deleted by its owner. However, a `TwitterException` will still be thrown if there is no Data field in the response. ([#329](https://github.com/twitter-dart/twitter-api-v2/issues/329))
- Added `RateLimitExceededException`. ([#331](https://github.com/twitter-dart/twitter-api-v2/issues/329))

## v2.8.1

- Changed the field type of `TweetPollParam`'s `durationInMinutes` to `Duration` and changed the name to `duration`. ([#322](https://github.com/twitter-dart/twitter-api-v2/issues/322))

## v2.8.0

### Breaking Changes

- Migration is required for fields that existed in previous versions due to objectification of some of the `createTweet` request parameters. ([#304](https://github.com/twitter-dart/twitter-api-v2/issues/304))
  - Use `TweetMediaParam` object to specify `mediaIds` and `taggedUserIds`.
  - Use `TweetReplyParam` object to specify `inReplyToTweetId`
- Migration is required for `createFilteringRules`. ([#312](https://github.com/twitter-dart/twitter-api-v2/issues/312))
  - Use `FilteringRuleParam` object to specify filtering rules.

### Bug Fixes

- Removed `expansions` parameter from `createTweet` method because this is not the supported parameter. ([#288](https://github.com/twitter-dart/twitter-api-v2/issues/288))

### New Features

- Added `timeout` option to `TwitterApi`. The default timeout duration is **10 seconds**. ([#252](https://github.com/twitter-dart/twitter-api-v2/issues/252))
- Added `sortOrder` parameter to `TweetsService.searchRecent` and `TweetsService.searchAll`. ([#284](https://github.com/twitter-dart/twitter-api-v2/issues/284))
- Added `startTime` and `endTime` parameters. ([#240](https://github.com/twitter-dart/twitter-api-v2/issues/240))
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
  - GET /2/users/:id/mentions
  - GET /2/users/:id/timelines/reverse_chronological
  - GET /2/users/:id/tweets
  - GET /2/tweets/counts/all
  - GET /2/tweets/counts/recent
- Added `variants` field to `MediaData` object. You can get this field by using `MediaField.variants`. ([#265](https://github.com/twitter-dart/twitter-api-v2/issues/265))
- Added `sinceTweetId` parameter. ([#285](https://github.com/twitter-dart/twitter-api-v2/issues/285))
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
- Added `untilTweetId` parameter. ([#286](https://github.com/twitter-dart/twitter-api-v2/issues/286))
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
- Added `directMessageDeepLink` parameter to `createTweet`. ([#279](https://github.com/twitter-dart/twitter-api-v2/issues/279))
- Added `geo` parameter to `createTweet`. ([#280](https://github.com/twitter-dart/twitter-api-v2/issues/280))([#304](https://github.com/twitter-dart/twitter-api-v2/issues/304))
- Added `poll` parameter to `createTweet`. ([#282](https://github.com/twitter-dart/twitter-api-v2/issues/282))([#304](https://github.com/twitter-dart/twitter-api-v2/issues/304))
- Added objects for request parameter of `createTweet`. ([#304](https://github.com/twitter-dart/twitter-api-v2/issues/304))
  - `TweetMediaParam`
  - `TweetGeoParam`
  - `TweetPollParam`
  - `TweetReplyParam`
- Added `sinceTweetId` and `untilTweetId` parameters to `countAll` and `countRecent`. ([#311](https://github.com/twitter-dart/twitter-api-v2/issues/311))
  - GET /2/tweets/counts/all
  - GET /2/tweets/counts/recent
- Added `granularity` parameter to `countAll` and `countRecent`. ([#310](https://github.com/twitter-dart/twitter-api-v2/issues/310))
  - GET /2/tweets/counts/all
  - GET /2/tweets/counts/recent
- Added `sinceTweetId` and `untilTweetId` parameters to `TweetsService.lookupTweets`. ([#309](https://github.com/twitter-dart/twitter-api-v2/issues/309))
- Added `excludes` parameter to `TweetsService.lookupTweets`. ([#308](https://github.com/twitter-dart/twitter-api-v2/issues/308))
- Added `sinceTweetId` and `untilTweetId` parameters to `lookupHomeTimeline`. ([#307](https://github.com/twitter-dart/twitter-api-v2/issues/307))
- Added `excludes` parameter to `lookupHomeTimeline`. ([#306](https://github.com/twitter-dart/twitter-api-v2/issues/306))
- Added `sinceTweetId` and `untilTweetId` parameters to `lookupMentions`. ([#305](https://github.com/twitter-dart/twitter-api-v2/issues/305))

## v2.7.0

- Added metrics field for `TweetField`. ([#268](https://github.com/twitter-dart/twitter-api-v2/issues/268))
  - `non_public_metrics`
  - `organic_metrics`
  - `promoted_metrics`
- The `toJson` method of the response data object has been improved. Nested objects are now converted to JSON at the same time as the parent object's `toJson`. ([#272](https://github.com/twitter-dart/twitter-api-v2/issues/272))
- Added `toJson` method to `TwitterResponse`. ([#274](https://github.com/twitter-dart/twitter-api-v2/issues/274))

## v2.6.2

- Added dart documentations about authentication methods and required scopes. ([#263](https://github.com/twitter-dart/twitter-api-v2/issues/263))

## v2.6.1

- Added documents for response fields. ([#247](https://github.com/twitter-dart/twitter-api-v2/issues/247))

## v2.6.0

- Added `FilteredStreamResponse` as the return type of `Filtered Stream` endpoint. And now we can see the IDs and tags of the rules matched in the streaming from the `FilteredStreamResponse.matchingRules` field. The `FilteredStreamResponse` extends `TwitterResponse`, so there are no destructive changes. ([#226](https://github.com/twitter-dart/twitter-api-v2/issues/226))
- Added translated READMEs. ([#213](https://github.com/twitter-dart/twitter-api-v2/issues/213))
  - Japanese
  - French
  - Vietnamese
  - Bengali
- Added `mediaFields` arguments. ([#183](https://github.com/twitter-dart/twitter-api-v2/issues/183))
  - GET /2/users/:id/bookmarks
  - GET /2/tweets/search/stream
  - GET /2/tweets/:id/liking_users
  - GET /2/users/:id/liked_tweets
  - GET /2/tweets/:id/quote_tweets
  - GET /2/tweets/:id/retweeted_by
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
  - GET /2/users/:id/mentions
  - GET /2/users/:id/timelines/reverse_chronological
  - GET /2/users/:id/tweets
  - GET /2/tweets
  - GET /2/tweets/:id
  - GET /2/tweets/sample/stream
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
- Added `mediaFields` arguments. ([#186](https://github.com/twitter-dart/twitter-api-v2/issues/186))
  - GET /2/users/:id/followed_lists
  - GET /2/lists/:id
  - GET /2/users/:id/owned_lists
  - GET /2/users/:id/list_memberships
  - GET /2/users/:id/pinned_lists

## v2.5.0

- Added `spaceFields` argument. ([#184](https://github.com/twitter-dart/twitter-api-v2/issues/184))
  - GET /2/spaces/search
  - GET /2/spaces
  - GET /2/spaces/:id
  - GET /2/spaces/by/creator_ids
- Added `pollFields` argument. ([#181](https://github.com/twitter-dart/twitter-api-v2/issues/181))
  - GET /2/users/:id/bookmarks
  - GET /2/tweets/search/stream
  - GET /2/tweets/:id/liking_users
  - GET /2/users/:id/liked_tweets
  - GET /2/tweets/:id/quote_tweets
  - GET /2/tweets/:id/retweeted_by
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
  - GET /2/users/:id/mentions
  - GET /2/users/:id/timelines/reverse_chronological
  - GET /2/users/:id/tweets
  - GET /2/tweets
  - GET /2/tweets/:id
  - GET /2/tweets/sample/stream
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
- Added `placeFields` argument. ([#182](https://github.com/twitter-dart/twitter-api-v2/issues/182))
  - GET /2/users/:id/bookmarks
  - GET /2/tweets/search/stream
  - GET /2/tweets/:id/liking_users
  - GET /2/users/:id/liked_tweets
  - GET /2/tweets/:id/quote_tweets
  - GET /2/tweets/:id/retweeted_by
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
  - GET /2/users/:id/mentions
  - GET /2/users/:id/timelines/reverse_chronological
  - GET /2/users/:id/tweets
  - GET /2/tweets
  - GET /2/tweets/:id
  - GET /2/tweets/sample/stream
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
- `PlaceData` class is migrated to `Geo` class, and updated `PlaceData` parameters.
- `PlaceCoordinates` class is migrated to `GeoCoordinates` class, and updated `PlaceCoordinates` parameters.
- Changed the type of `lang` field from `String?` to `TweetLanguage?`. ([#207](https://github.com/twitter-dart/twitter-api-v2/issues/207))

## v2.4.2

- Fixed field names in `UserData`. ([#202](https://github.com/twitter-dart/twitter-api-v2/issues/202))
  - From `protected` to `isProtected`.
  - From `verified` to `isVerified`.

## v2.4.1

- Fixed `README.md`. ([#200](https://github.com/twitter-dart/twitter-api-v2/issues/200))

## v2.4.0

- Added `userFields` argument. ([#180](https://github.com/twitter-dart/twitter-api-v2/issues/180))
  - GET /2/users/:id/bookmarks
  - GET /2/tweets/search/stream
  - GET /2/tweets/:id/liking_users
  - GET /2/users/:id/liked_tweets
  - GET /2/tweets/:id/quote_tweets
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
  - GET /2/users/:id/mentions
  - GET /2/users/:id/timelines/reverse_chronological
  - GET /2/users/:id/tweetsGET /2/tweets
  - GET /2/tweets/:id
  - GET /2/tweets/sample/stream
  - GET /2/users/:id/blocking
  - GET /2/users/:id/followers
  - GET /2/users/:id/following
  - GET /2/users/:id/muting
  - GET /2/users
  - GET /2/users/:id
  - GET /2/users/by
  - GET /2/users/by/username/:username
  - GET /2/users/me
  - GET /2/spaces/search
  - GET /2/spaces
  - GET /2/spaces/:id
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
  - GET /2/spaces/by/creator_ids
  - GET /2/lists/:id/tweets
  - GET /2/lists/:id/followers
  - GET /2/users/:id/followed_lists
  - GET /2/lists/:id
  - GET /2/users/:id/owned_lists
  - GET /2/lists/:id/members
  - GET /2/users/:id/list_memberships
  - GET /2/users/:id/pinned_lists

## v2.3.0

- Added `tweetFields` argument. ([#179](https://github.com/twitter-dart/twitter-api-v2/issues/179))
  - GET /2/users/:id/bookmarks
  - GET /2/tweets/search/stream
  - GET /2/tweets/:id/liking_users
  - GET /2/users/:id/liked_tweets
  - GET /2/tweets/:id/quote_tweets
  - GET /2/tweets/:id/retweeted_by
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
  - GET /2/users/:id/mentions
  - GET /2/users/:id/timelines/reverse_chronological
  - GET /2/users/:id/tweets
  - GET /2/tweets
  - GET /2/tweets/:id
  - GET /2/tweets/sample/stream
  - GET /2/users/:id/blocking
  - GET /2/users/:id/followers
  - GET /2/users/:id/following
  - GET /2/users/:id/muting
  - GET /2/users
  - GET /2/users/:id
  - GET /2/users/by
  - GET /2/users/by/username/:username
  - GET /2/users/me
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
  - GET /2/lists/:id/tweets
  - GET /2/lists/:id/members
- Changed object name from `ReferencedTweetData` to `ReferencedTweet`.
- Changed field type of `type` in `ReferencedTweet` to `TweetType` from `String`.
- Changed field type of `type` in `MediaData` to `MediaType` from `String.`
- Added `key` field to `MediaData`. It represents a unique identifier of the media.

## v2.2.0

- Added `Reverse Chronological Timelines` endpoint. ([#164](https://github.com/twitter-dart/twitter-api-v2/issues/164))
  - GET /2/users/:id/timelines/reverse_chronological
- Added `expansions` argument to `UsersService`. ([#142](https://github.com/twitter-dart/twitter-api-v2/issues/142))
  - GET /2/users/:id/blocking
  - GET /2/users/:id/followers
  - GET /2/users/:id/following
  - GET /2/users/:id/muting
  - GET /2/users
  - GET /2/users/:id
  - GET /2/users/by
  - GET /2/users/by/username/:username
  - GET /2/users/me
- Added `expansions` argument to `SpacesService`. ([#171](https://github.com/twitter-dart/twitter-api-v2/issues/171))
  - GET /2/spaces/search
  - GET /2/spaces
  - GET /2/spaces/:id
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
  - GET /2/spaces/by/creator_ids
- Added `expansions` argument to `ListsService`. ([#172](https://github.com/twitter-dart/twitter-api-v2/issues/172))
  - GET /2/lists/:id/tweets
  - GET /2/lists/:id/followers
  - GET /2/users/:id/followed_lists
  - GET /2/lists/:id
  - GET /2/users/:id/owned_lists
  - GET /2/lists/:id/members
  - GET /2/users/:id/list_memberships
  - GET /2/users/:id/pinned_lists
- Fixed method name from `tweetsService.connectVolumeStreams` to `tweetsService.connectVolumeStream`.
- Fixed return type of `tweetsService.connectVolumeStream` from `Future<Stream<TweetData>>` to `Future<Stream<TwitterResponse<TweetData, void>>>`.
- Added `Filtered Stream` endpoint. ([#4](https://github.com/twitter-dart/twitter-api-v2/issues/4))
  - GET /2/tweets/search/stream
  - GET /2/tweets/search/stream/rules
  - POST /2/tweets/search/stream/rules

## v2.1.0

- Added `expansions` argument to `TweetsService`. ([#141](https://github.com/twitter-dart/twitter-api-v2/issues/141))
  - [GET /2/users/:id/bookmarks](https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks)
  - [GET /2/tweets/:id/liking_users](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users)
  - [GET /2/users/:id/liked_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets)
  - [GET /2/tweets/:id/quote_tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets)
  - [GET /2/tweets/:id](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id)
  - [GET /2/tweets/:id/retweeted_by](https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by)
  - [GET /2/tweets/search/all](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all)
  - [GET /2/tweets/search/recent](https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent)
  - [GET /2/users/:id/mentions](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions)
  - [GET /2/users/:id/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets)
  - [GET /2/tweets](https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets)
- Added expanded fields to `TweetData`. ([#141](https://github.com/twitter-dart/twitter-api-v2/issues/141))
  - `authorId`
  - `inReplyToUserId`
  - `referencedTweets`
  - `entities`
  - `attachments`
  - `geo`
- Added `includes` field to `TwitterResponse`. ([#144](https://github.com/twitter-dart/twitter-api-v2/issues/144))
- With the addition of the `includes` field to `TwitterResponse`, the following objects have been added. ([#144](https://github.com/twitter-dart/twitter-api-v2/issues/144))
  - `MediaData`
  - `PollData`
- Added **Volume Stream** endpoint. ([#14](https://github.com/twitter-dart/twitter-api-v2/issues/14))
  - GET /2/tweets/sample/stream

## v2.0.0

- Exposed service classes. ([#122](https://github.com/twitter-dart/twitter-api-v2/issues/122)
  - `TweetsService`
  - `UsersService`
  - `ListsService`
  - `SpacesService`
  - `ComplianceService`
- Added arguments to `tweetsService.createTweet`. ([#130](https://github.com/twitter-dart/twitter-api-v2/issues/130)) ([#90](https://github.com/twitter-dart/twitter-api-v2/issues/90))
  - `inReplyToTweetId`
  - `replySetting`
  - `mediaIds`
  - `taggedUserIds`
- Improved processing when the data field does not exist in the response body returned from the Twitter API. ([#124](https://github.com/twitter-dart/twitter-api-v2/issues/124))
  - In previous versions, `POST` and `DELETE` communications for deleted content would raise a `TwitterException`, but this release has been modified to always return a boolean instead of an exception in this case.
- Internal processing has been refactored to improve scalability and maintainability. There are no disruptive changes as a result of this refactoring.
- Added convenience utility for OAuth. ([#102](https://github.com/twitter-dart/twitter-api-v2/issues/102))
  - `OAuthUtils.generateAppOnlyBearerToken`

## v1.8.0

- Added **Lists Manage** endpoints. ([#30](https://github.com/twitter-dart/twitter-api-v2/issues/30))
  - DELETE /2/lists/:id
  - PUT /2/lists/:id
  - POST /2/lists
- Added **Lists Follows** endpoints. ([#27](https://github.com/twitter-dart/twitter-api-v2/issues/27))
  - DELETE /2/users/:id/followed_lists/:list_id
  - GET /2/lists/:id/followers
  - GET /2/users/:id/followed_lists
  - POST /2/users/:id/followed_lists
- Added **Lists Members** endpoints. ([#29](https://github.com/twitter-dart/twitter-api-v2/issues/29))
  - DELETE /2/lists/:id/members/:user_id
  - GET /2/lists/:id/members
  - GET /2/users/:id/list_memberships
  - POST /2/lists/:id/members

## v1.7.0

- Added **Tweets Timelines** endpoints. ([#11](https://github.com/twitter-dart/twitter-api-v2/issues/11))
  - GET /2/users/:id/mentions
  - GET /2/users/:id/tweets
- Added **Users Blocks** endpoints. ([#20](https://github.com/twitter-dart/twitter-api-v2/issues/20))
  - DELETE /2/users/:source_user_id/blocking/:target_user_id
  - GET /2/users/:id/blocking
  - POST /2/users/:id/blocking
- Added **Lists Pinnings** endpoints. ([#31](https://github.com/twitter-dart/twitter-api-v2/issues/31))
  - DELETE /2/users/:id/pinned_lists/:list_id
  - GET /2/users/:id/pinned_lists
  - POST /2/users/:id/pinned_lists
- Added **Lists Tweet Lookup** endpoint. ([#26](https://github.com/twitter-dart/twitter-api-v2/issues/26))
  - GET /2/lists/:id/tweets

---

- Refactored method names. Prefixes for methods that perform `GET` communication other than the search endpoint have been unified with `lookup`. This makes it a destructive change, but please refer to the following correspondence table for details of the change.
  - **Tweets Service**
    - From `likingUsers` to `lookupLikingUsers`
    - From `likingTweets` to `lookupLikedTweets`
    - From `retweetedBy` to `lookupRetweetedUsers`
    - From `quoteTweets` to `lookupQuoteTweets`
    - From `bookmarks` to `lookupBookmarks`
  - **Users Service**
    - From `followers` to `lookupFollowers`
    - From `followings` to `lookupFollowings`
    - From `mutingUsers` to `lookupMutingUsers`
  - **Lists Service**
    - From `pinnedLists` to `lookupPinnedLists`

## v1.6.0

- Fixed a bug in `DELETE` communication.
- Improved error message from `TwitterException`. ([#93](https://github.com/twitter-dart/twitter-api-v2/issues/93))
- Added **Batch Compliance** endpoints. ([#32](https://github.com/twitter-dart/twitter-api-v2/issues/32))
  - GET /2/compliance/jobs
  - GET /2/compliance/jobs/:id
  - POST /2/compliance/jobs
- Added **Users Mutes** endpoints. ([#22](https://github.com/twitter-dart/twitter-api-v2/issues/22))
  - DELETE /2/users/:source_user_id/muting/:target_user_id
  - GET /2/users/:id/muting
  - POST /2/users/:id/muting
- Added **Tweets Hide Replies** endpoints. ([#5](https://github.com/twitter-dart/twitter-api-v2/issues/5))
  - PUT /2/tweets/:id/hidden

## v1.5.0

- Renamed method name in **TweetsService**. ([#79](https://github.com/twitter-dart/twitter-api-v2/issues/79))
  - Renamed method from `tweetsService.lookupTweet` to `tweetsService.lookupById.`
  - Renamed method from `tweetsService.lookupTweets` to `tweetsService.lookupByIds.`
- Added **Spaces Lookup** endpoints. ([#25](https://github.com/twitter-dart/twitter-api-v2/issues/25))
  - GET /2/spaces
  - GET /2/spaces/:id
  - GET /2/spaces/:id/buyers
  - GET /2/spaces/:id/tweets
  - GET /2/spaces/by/creator_ids
- Added **Lists Lookup** endpoints. ([#28](https://github.com/twitter-dart/twitter-api-v2/issues/28))
  - GET /2/lists/:id
  - GET /2/users/:id/owned_lists

## v1.4.0

- Fixed response handling.
  - The HTTP status of a response was regarded as an exception for data other than 200, but the HTTP status in the 200s is now regarded as a normal completion.
- Improved and added parameters for endpoints already implemented in this library. ([#66](https://github.com/twitter-dart/twitter-api-v2/issues/66))
  - Added parameters to `tweetsService.createTweet`.
    - `quoteTweetId`
    - `forSuperFollowersOnly`
  - Added a parameter to `tweetsService.linkingUsers`.
    - `maxResults`
  - Added a parameter to `tweetsService.linkingTweets`.
    - `maxResults`
  - Added a parameter to `tweetsService.retweetedBy`.
    - `maxResults`
  - Added a parameter to `tweetsService.quoteTweets`.
    - `maxResults`
  - Added a parameter to `tweetsService.searchRecent`.
    - `maxResults`
  - Added a parameter to `tweetsService.searchAll`.
    - `maxResults`
  - Added a parameter to `usersService.followers`.
    - `maxResults`
  - Added a parameter to `usersService.followings`.
    - `maxResults`

## v1.3.0

- Improved the error message from `TwitterException`. ([#48](https://github.com/twitter-dart/twitter-api-v2/issues/48))
- Added `previousToken` to `tweet_meta` and `tweet_count_meta`, and added `paginationToken` or `nextToken` argument for endpoints that support pagination. ([#60](https://github.com/twitter-dart/twitter-api-v2/issues/60))
- Added `previousToken` to `user_meta`, and added `paginationToken` argument for endpoints that support pagination. ([#60](https://github.com/twitter-dart/twitter-api-v2/issues/60))

## v1.2.0

- Fixed typo from `tweetService` to `tweetsService` in `TwitterApi`.
- Improved error handling. ([#41](https://github.com/twitter-dart/twitter-api-v2/issues/41))

## v1.1.0

- Added **Tweet Counts** endpoints. ([#12](https://github.com/twitter-dart/twitter-api-v2/issues/12))
  - GET /2/tweets/counts/all
  - GET /2/tweets/counts/recent
- Added **Tweet Bookmarks** endpoints. ([#2](https://github.com/twitter-dart/twitter-api-v2/issues/2))
  - GET /2/tweets/counts/all
  - GET /2/tweets/counts/recent
- Added **Users Lookup** endpoints. ([#23](https://github.com/twitter-dart/twitter-api-v2/issues/23))
  - GET /2/users
  - GET /2/users/:id
  - GET /2/users/by
  - GET /2/users/by/username/:username
  - GET /2/users/me
- Added **Spaces Search** endpoints. ([#23](https://github.com/twitter-dart/twitter-api-v2/issues/23))
  - GET /2/spaces/search

## v1.0.0

- Specification changes and improvements have been made to the authentication method. ([#44](https://github.com/twitter-dart/twitter-api-v2/issues/44))
- Added **Quote Tweets** endpoint. ([#8](https://github.com/twitter-dart/twitter-api-v2/issues/8))
  - GET /2/tweets/:id/quote_tweets
- Added **Tweets Search** endpoints. ([#10](https://github.com/twitter-dart/twitter-api-v2/issues/10))
  - GET /2/tweets/search/all
  - GET /2/tweets/search/recent
- Added **Tweets Lookup** endpoints. ([#13](https://github.com/twitter-dart/twitter-api-v2/issues/13))
  - GET /2/tweets
  - GET /2/tweets/:id

## v0.1.0

- Added **Tweets Likes** endpoints. ([#6](https://github.com/twitter-dart/twitter-api-v2/issues/6))
  - DELETE /2/users/:id/likes/:tweet_id
  - GET /2/tweets/:id/liking_users
  - GET /2/users/:id/liked_tweets
  - POST /2/users/:id/likes
- Added **Tweets Manage** endpoints. ([#7](https://github.com/twitter-dart/twitter-api-v2/issues/7))
  - DELETE /2/tweets/:id
  - POST /2/tweets
- Added **Tweets Retweet** endpoints. ([#9](https://github.com/twitter-dart/twitter-api-v2/issues/9))
  - DELETE /2/users/:id/retweets/:source_tweet_id
  - GET /2/tweets/:id/retweeted_by
  - POST /2/users/:id/retweets
- Added **Users Follows** endpoints. ([#21](https://github.com/twitter-dart/twitter-api-v2/issues/21))
  - DELETE /2/users/:source_user_id/following/:target_user_id
  - GET /2/users/:id/followers
  - GET /2/users/:id/following
  - POST /2/users/:id/following

## v0.0.1

- First Release
