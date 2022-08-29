// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../../client/client_context.dart';
import '../../client/user_context.dart';
import '../base_service.dart';
import '../common/includes.dart';
import '../filtered_stream_response.dart';
import '../media/media_field.dart';
import '../places/place_field.dart';
import '../polls/poll_field.dart';
import '../response_field.dart';
import '../twitter_response.dart';
import '../users/user_data.dart';
import '../users/user_expansion.dart';
import '../users/user_field.dart';
import '../users/user_meta.dart';
import 'exclude_tweet_type.dart';
import 'filtering_rule_data.dart';
import 'filtering_rule_meta.dart';
import 'filtering_rule_param.dart';
import 'matching_rule.dart';
import 'reply_setting.dart';
import 'sort_order.dart';
import 'tweet_count_data.dart';
import 'tweet_count_granularity.dart';
import 'tweet_count_meta.dart';
import 'tweet_data.dart';
import 'tweet_expansion.dart';
import 'tweet_field.dart';
import 'tweet_geo_param.dart';
import 'tweet_media_param.dart';
import 'tweet_meta.dart';
import 'tweet_poll_param.dart';
import 'tweet_reply_param.dart';

/// This class provides methods to easily access endpoints based on Tweet.
abstract class TweetsService {
  /// Returns the new instance of [TweetsService].
  factory TweetsService({required ClientContext context}) =>
      _TweetsService(context: context);

  /// Creates a Tweet on behalf of an authenticated user.
  ///
  /// ## Parameters
  ///
  /// - [text]: Text of the Tweet being created.
  ///           This field is required if media.media_ids is not present.
  ///
  /// - [quoteTweetId]: Link to the Tweet being quoted.
  ///
  /// - [forSuperFollowersOnly]: Allows you to Tweet exclusively for
  ///                           [Super Followers](https://help.twitter.com/en/using-twitter/super-follows).
  ///
  /// - [replySetting]: Settings to indicate who can reply to the Tweet.
  ///                   Options include `mentionedUsers` and `following`.
  ///                   The default to `everyone`.
  ///
  /// - [directMessageDeepLink]: Tweets a link directly to a
  ///                            [Direct Message conversation](https://business.twitter.com/en/help/campaign-editing-and-optimization/public-to-private-conversation.html)
  ///                           with an account.
  ///
  /// - [media]: The object that contains media information being attached to
  ///            created Tweet. This is mutually exclusive from Quote Tweet ID
  ///            and Poll.
  ///
  /// - [geo]: A JSON object that contains location information for a Tweet.
  ///          You can only add a location to Tweets if you have geo enabled in
  ///          your profile settings. If you don't have geo enabled, you can
  ///          still add a location parameter in your request body, but it won't
  ///          get attached to your Tweet
  ///
  /// - [poll]: The object that contains options for a Tweet with a poll.
  ///           This is mutually exclusive from Media and Quote Tweet ID.
  ///
  /// - [reply]: The object that contains information of the Tweet being
  ///            replied to.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - tweet.write
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///     200 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/post-tweets
  Future<TwitterResponse<TweetData, void>> createTweet({
    required String text,
    String? quoteTweetId,
    bool? forSuperFollowersOnly,
    ReplySetting? replySetting,
    String? directMessageDeepLink,
    TweetMediaParam? media,
    TweetGeoParam? geo,
    TweetPollParam? poll,
    TweetReplyParam? reply,
  });

  /// Allows a user or authenticated user ID to delete a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: The Tweet ID you are deleting.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/:id
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - tweet.write
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/manage-tweets/api-reference/delete-tweets-id
  Future<bool> destroyTweet({required String tweetId});

  /// Causes the user ID identified in the path parameter to Like the target
  /// Tweet.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are liking a Tweet on behalf of.
  ///             It must match your own user ID or that of an authenticating
  ///             user, meaning that you must pass the Access Tokens associated
  ///             with the user ID when authenticating your request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the user id to Like.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/likes
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - like.write
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///   50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/post-users-id-likes
  Future<bool> createLike({required String userId, required String tweetId});

  /// Allows a user or authenticated user ID to unlike a Tweet.
  ///
  /// The request succeeds with no action when the user sends a request to
  /// a user they're not liking the Tweet or have already unliked the Tweet.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are removing a Like of a Tweet on behalf
  ///             of. It must match your own user ID or that of an
  ///             authenticating user, meaning that you must pass the Access
  ///             Tokens associated with the user ID when authenticating your
  ///             request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the id to unlike.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/likes/:tweet_id
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - like.write
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/delete-users-id-likes-tweet_id
  Future<bool> destroyLike({required String userId, required String tweetId});

  /// Causes the user ID identified in the path parameter to Retweet the target
  /// Tweet.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are Retweeting a Tweet on behalf of.
  ///             It must match your own user ID or that of an authenticating
  ///             user, meaning that you must pass the Access Tokens associated
  ///             with the user ID when authenticating your request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the user id to
  ///              Retweet.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/retweets
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - tweet.write
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/post-users-id-retweets
  Future<bool> createRetweet({required String userId, required String tweetId});

  /// Allows a user or authenticated user ID to remove the Retweet of a Tweet.
  ///
  /// The request succeeds with no action when the user sends a request to
  /// a user they're not Retweeting the Tweet or have already removed the
  /// Retweet of.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are removing a the Retweet of a Tweet on
  ///             behalf of. It must match your own user ID or that of an
  ///             authenticating user, meaning that you must pass the Access
  ///             Tokens associated with the user ID when authenticating your
  ///             request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the id to remove the
  ///              Retweet of.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/retweets/:source_tweet_id
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - tweet.write
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/delete-users-id-retweets-tweet_id
  Future<bool> destroyRetweet(
      {required String userId, required String tweetId});

  /// Allows you to get information about a Tweet’s liking users.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Tweet ID of the Tweet to request liking users of.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request, or
  ///                      to go back to the previous page of results. To return
  ///                      the next page, pass the `next_token` returned in your
  ///                      previous response. To go back one page, pass the
  ///                      `previous_token` returned in your previous response.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned users. The ID that
  ///                 represents the expanded data object will be included
  ///                 directly in the user data object, but the expanded object
  ///                 metadata will be returned within the includes response
  ///                 object, and will also include the ID so that you can
  ///                 match this data object to the original Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/:id/liking_users
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 2.0 App-only
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - like.read
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///     75 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///     75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-tweets-id-liking_users
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupLikingUsers({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<UserExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Allows you to get information about a user’s liked Tweets.
  ///
  /// ## Parameters
  ///
  /// - [userId]: User ID of the user to request liked Tweets for.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 10 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request, or
  ///                      to go back to the previous page of results. To return
  ///                      the next page, pass the `next_token` returned in your
  ///                      previous response. To go back one page, pass the
  ///                      `previous_token` returned in your previous response.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/liked_tweets
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 2.0 App-only
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - like.read
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    75 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/likes/api-reference/get-users-id-liked_tweets
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupLikedTweets({
    required String userId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Allows you to get information about who has Retweeted a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Tweet ID of the Tweet to request Retweeting users of.
  ///
  /// - [maxResults]: The maximum number of results to be returned per page.
  ///                 This can be a number between 1 and 100. By default,
  ///                 each page will return 100 results.
  ///
  /// - [paginationToken]: Used to request the next page of results if all
  ///                      results weren't returned with the latest request, or
  ///                      to go back to the previous page of results.
  ///                      To return the next page, pass the `next_token`
  ///                      returned in your previous response. page, pass the
  ///                      `previous_token` returned in your previous response.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned users. The ID that
  ///                 represents the expanded data object will be included
  ///                 directly in the user data object, but the expanded object
  ///                 metadata will be returned within the includes response
  ///                 object, and will also include the ID so that you can match
  ///                 this data object to the original Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver with each returned users objects.
  ///                 These specified user fields will display directly in the
  ///                 user data objects.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/:id/retweeted_by
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 2.0 App-only
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    75 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/retweets/api-reference/get-tweets-id-retweeted_by
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupRetweetedUsers({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<UserExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Returns Quote Tweets for a Tweet specified by the requested Tweet ID.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level Tweet
  /// cap.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Unique identifier of the Tweet to request.
  ///
  /// - [maxResults]: Specifies the number of Tweets to try and retrieve,
  ///                 up to a maximum of 100 per distinct request. By default,
  ///                 10 results are returned if this parameter is not supplied.
  ///                 The minimum permitted value is 10. It is possible to
  ///                 receive less than the max_results per request throughout
  ///                 the pagination process.
  ///
  /// - [paginationToken]: This parameter is used to move forwards through
  ///                      'pages' of results, based on the value of the
  ///                      `next_token`. The value used with the parameter is
  ///                      pulled directly from the response provided by the
  ///                      API, and should not be modified.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/:id/quote_tweets
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 2.0 App-only
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    75 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    75 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/quote-tweets/api-reference/get-tweets-id-quote_tweets
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupQuoteTweets({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// The recent search endpoint returns Tweets from the last seven days that
  /// match a search query.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level Tweet
  /// cap.
  ///
  /// ## Parameters
  ///
  /// - [query]: One query for matching Tweets. You can learn how to build
  ///            this query by reading our [build a query guide](https://developer.twitter.com/en/docs/twitter-api/tweets/search/integrate/build-a-query).
  ///            If you have Essential or Elevated access, you can use the Basic
  ///            operators when building your query and can make queries up to
  ///            512 characters long. Learn more about our access levels on the
  ///            `about Twitter API page`.
  ///
  /// - [maxResults]: The maximum number of search results to be returned by a
  ///                 request. A number between 10 and 100. By default, a
  ///                 request response will return 10 results.
  ///
  /// - [nextToken]: This parameter is used to get the next 'page' of results.
  ///                The value used with the parameter is pulled directly from
  ///                the response provided by the API, and should not be
  ///                modified. You can learn more by visiting our page on [pagination](https://developer.twitter.com/en/docs/twitter-api/tweets/search/integrate/paginate).
  ///
  /// - [sortOrder]: This parameter is used to specify the order in which you
  ///                want the Tweets returned. By default, a request will return
  ///                the most recent Tweets first (sorted by recency).
  ///
  /// - [startTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). The oldest UTC
  ///                timestamp from which the Tweets will be provided. Timestamp
  ///                is in second granularity and is inclusive (for example,
  ///                12:00:01 includes the first second of the minute). By
  ///                default, a request will return Tweets from up to 30 days
  ///                ago if you do not include this parameter.
  ///
  /// - [endTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). Used with
  ///              `startTime`. The newest, most recent UTC timestamp to which
  ///              the Tweets will be provided. Timestamp is in second
  ///              granularity and is exclusive (for example, 12:00:01 excludes
  ///              the first second of the minute). If used without `startTime`,
  ///              Tweets from 30 days before `endTime` will be returned by
  ///              default. If not specified, `endTime` will default to
  ///              [now - 30 seconds].
  ///
  /// - [sinceTweetId]: Returns results with a Tweet ID greater than (that is,
  ///                   more recent than) the specified ID. The ID specified is
  ///                   exclusive and responses will not include it. If included
  ///                   with the same request as a [startTime] parameter, only
  ///                   [sinceTweetId] will be used.
  ///
  /// - [untilTweetId]: Returns results with a Tweet ID less than (that is,
  ///                   older than) the specified ID. The ID specified is
  ///                   exclusive and responses will not include it.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/search/recent
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///   450 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///   180 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchRecent({
    required String query,
    int? maxResults,
    String? nextToken,
    SortOrder? sortOrder,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// This endpoint is only available to those users who have been approved for
  /// Academic Research access.
  ///
  /// The full-archive search endpoint returns the complete history of public
  /// Tweets matching a search query; since the first Tweet was created March
  /// 26, 2006.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level Tweet
  /// cap.
  ///
  /// ## Parameters
  ///
  /// - [query]: One query for matching Tweets.
  ///            You can learn how to build this query by reading our build a
  ///            query guide. You can use all available operators and can make
  ///            queries up to 1,024 characters long.
  ///
  /// - [maxResults]: The maximum number of search results to be returned by a
  ///                 request. A number between 10 and the system limit
  ///                 (currently 500). By default, a request response will
  ///                 return 10 results.
  ///
  /// - [nextToken]: This parameter is used to get the next 'page' of results.
  ///                The value used with the parameter is pulled directly from
  ///                the response provided by the API, and should not be
  ///                modified. You can learn more by visiting our page on [pagination](https://developer.twitter.com/en/docs/twitter-api/tweets/search/integrate/paginate).
  ///
  /// - [sortOrder]: This parameter is used to specify the order in which you
  ///                want the Tweets returned. By default, a request will return
  ///                the most recent Tweets first (sorted by recency).
  ///
  /// - [startTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). The oldest UTC
  ///                timestamp from which the Tweets will be provided. Timestamp
  ///                is in second granularity and is inclusive (for example,
  ///                12:00:01 includes the first second of the minute). By
  ///                default, a request will return Tweets from up to 30 days
  ///                ago if you do not include this parameter.
  ///
  /// - [endTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). Used with
  ///              `startTime`. The newest, most recent UTC timestamp to which
  ///              the Tweets will be provided. Timestamp is in second
  ///              granularity and is exclusive (for example, 12:00:01 excludes
  ///              the first second of the minute). If used without `startTime`,
  ///              Tweets from 30 days before `endTime` will be returned by
  ///              default. If not specified, `endTime` will default to
  ///              [now - 30 seconds].
  ///
  /// - [sinceTweetId]: Returns results with a Tweet ID greater than (that is,
  ///                   more recent than) the specified ID. The ID specified is
  ///                   exclusive and responses will not include it. If included
  ///                   with the same request as a [startTime] parameter, only
  ///                   [sinceTweetId] will be used.
  ///
  /// - [untilTweetId]: Returns results with a Tweet ID less than (that is,
  ///                   older than) the specified ID. The ID specified is
  ///                   exclusive and responses will not include it.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/search/all
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    1 request per second shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-all
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchAll({
    required String query,
    int? maxResults,
    String? nextToken,
    SortOrder? sortOrder,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Returns a variety of information about a single Tweet specified by the
  /// requested ID.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Unique identifier of the Tweet to request.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/:id
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 2.0 App-only
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    900 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    900 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id
  Future<TwitterResponse<TweetData, void>> lookupById({
    required String tweetId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Returns a variety of information about the Tweet specified by the
  /// requested ID or list of IDs.
  ///
  /// ## Parameters
  ///
  /// - [tweetIds]: Unique identifiers of the Tweet to request.
  ///               Up to 100 are allowed in a single request.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 2.0 App-only
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    900 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    900 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets
  Future<TwitterResponse<List<TweetData>, void>> lookupByIds({
    required List<String> tweetIds,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// The recent Tweet counts endpoint returns count of Tweets from the last
  /// seven days that match a query.
  ///
  /// ## Parameters
  ///
  /// - [query]: One query for matching Tweets. You can learn how to build
  ///            this query by reading a [build a query guide](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/integrate/build-a-query).
  ///            If you have Essential or Elevated access, you can use
  ///            the Basic operators when building your query and can make
  ///            queries up to 512 characters long.
  ///            If you have been approved for Academic Research access,
  ///            you can use all available operators and can make queries
  ///            up to 1,024 characters long. Learn more about our access levels
  ///            on the `about Twitter API page`.
  ///
  /// - [nextToken]: This parameter is used to get the next 'page' of results.
  ///                The value used with the parameter is pulled directly from
  ///                the response provided by the API, assuming that your
  ///                request contains more than 31 days-worth of results, and
  ///                should not be modified. You can learn more by visiting our page on [pagination](https://developer.twitter.com/en/docs/twitter-api/pagination).
  ///
  /// - [startTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). The oldest UTC
  ///                timestamp from which the Tweets will be provided. Timestamp
  ///                is in second granularity and is inclusive (for example,
  ///                12:00:01 includes the first second of the minute). By
  ///                default, a request will return Tweets from up to 30 days
  ///                ago if you do not include this parameter.
  ///
  /// - [endTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). Used with
  ///              `startTime`. The newest, most recent UTC timestamp to which
  ///              the Tweets will be provided. Timestamp is in second
  ///              granularity and is exclusive (for example, 12:00:01 excludes
  ///              the first second of the minute). If used without `startTime`,
  ///              Tweets from 30 days before `endTime` will be returned by
  ///              default. If not specified, `endTime` will default to
  ///              [now - 30 seconds].
  ///
  /// - [sinceTweetId]: Returns results with a Tweet ID greater than (that is,
  ///                   more recent than) the specified ID. The ID specified is
  ///                   exclusive and responses will not include it. If included
  ///                   with the same request as a [startTime] parameter, only
  ///                   [sinceTweetId] will be used.
  ///
  /// - [untilTweetId]: Returns results with a Tweet ID less than
  ///                   (that is, older than) the specified ID. The ID
  ///                   specified is exclusive and responses will not include
  ///                   it.
  ///
  /// - [granularity]: This is the granularity that you want the time series
  ///                  count data to be grouped by. You can request
  ///                  `minute`, `hour`, or `day` granularity. The default
  ///                  granularity, if not specified is `hour`.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/counts/recent
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-recent
  Future<TwitterResponse<List<TweetCountData>, TweetCountMeta>> countRecent({
    required String query,
    String? nextToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    TweetCountGranularity? granularity,
  });

  /// This endpoint is only available to those users who have been approved
  /// for Academic Research access.
  ///
  /// The full-archive Tweet counts endpoint returns the count of Tweets that
  /// match your query from the complete history of public Tweets;
  /// since the first Tweet was created March 26, 2006.
  ///
  /// ## Parameters
  ///
  /// - [query]: One query for matching Tweets.
  ///            You can learn how to build this query by reading a [build a query guide](https://developer.twitter.com/en/docs/twitter-api/tweets/counts/integrate/build-a-query).
  ///            You can use all available operators and can make queries
  ///            up to 1,024 characters long.
  ///
  /// - [nextToken]: This parameter is used to get the next 'page' of results.
  ///                The value used with the parameter is pulled directly from
  ///                the response provided by the API, assuming that your
  ///                request contains more than 31 days-worth of results, and
  ///                should not be modified. You can learn more by visiting our page on [pagination](https://developer.twitter.com/en/docs/twitter-api/pagination).
  ///
  /// - [startTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). The oldest UTC
  ///                timestamp from which the Tweets will be provided. Timestamp
  ///                is in second granularity and is inclusive (for example,
  ///                12:00:01 includes the first second of the minute). By
  ///                default, a request will return Tweets from up to 30 days
  ///                ago if you do not include this parameter.
  ///
  /// - [endTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). Used with
  ///              `startTime`. The newest, most recent UTC timestamp to which
  ///              the Tweets will be provided. Timestamp is in second
  ///              granularity and is exclusive (for example, 12:00:01 excludes
  ///              the first second of the minute). If used without `startTime`,
  ///              Tweets from 30 days before `endTime` will be returned by
  ///              default. If not specified, `endTime` will default to
  ///              [now - 30 seconds].
  ///
  /// - [sinceTweetId]: Returns results with a Tweet ID greater than (that is,
  ///                   more recent than) the specified ID. The ID specified is
  ///                   exclusive and responses will not include it. If included
  ///                   with the same request as a [startTime] parameter, only
  ///                   [sinceTweetId] will be used.
  ///
  /// - [untilTweetId]: Returns results with a Tweet ID less than
  ///                   (that is, older than) the specified ID. Used with
  ///                   [sinceTweetId]. The ID specified is exclusive and
  ///                   responses will not include it.
  ///
  /// - [granularity]: This is the granularity that you want the time series
  ///                  count data to be grouped by. You can request
  ///                  `minute`, `hour`, or `day` granularity. The default
  ///                  granularity, if not specified is `hour`.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/counts/all
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    300 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/counts/api-reference/get-tweets-counts-all
  Future<TwitterResponse<List<TweetCountData>, TweetCountMeta>> countAll({
    required String query,
    String? nextToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    TweetCountGranularity? granularity,
  });

  /// Causes the user ID of an authenticated user identified in the path
  /// parameter to Bookmark the target Tweet provided in the request body.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID of an authenticated user who you are bookmarking
  ///             a Tweet on behalf of. It must match your own user ID or
  ///             that of an authenticating user, meaning that you must pass
  ///             the Access Token associated with the user ID when
  ///             authenticating your request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the user id to
  ///              Bookmark.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/bookmarks
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - bookmark.write
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/post-users-id-bookmarks
  Future<bool> createBookmark(
      {required String userId, required String tweetId});

  /// Allows a user or authenticated user ID to remove a Bookmark of a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [userId]: The user ID who you are removing a Bookmark of a Tweet on
  ///             behalf of. It must match your own user ID or that of an
  ///             authenticating user, meaning that you must pass the Access
  ///             Token associated with the user ID when authenticating your
  ///             request.
  ///
  /// - [tweetId]: The ID of the Tweet that you would like the id to remove a
  ///              Bookmark of.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/bookmarks/:tweet_id
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - bookmark.write
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/delete-users-id-bookmarks-tweet_id
  Future<bool> destroyBookmark(
      {required String userId, required String tweetId});

  /// Allows you to get information about a authenticated user’s 800 most recent
  /// bookmarked Tweets.
  ///
  /// ## Parameters
  ///
  /// - [userId]: User ID of an authenticated user to request bookmarked Tweets
  ///             for.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/bookmarks/:tweet_id
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - bookmark.read
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    180 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/bookmarks/api-reference/get-users-id-bookmarks
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupBookmarks({
    required String userId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Hides a reply to a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Unique identifier of the Tweet to hide.
  ///              The Tweet must belong to a conversation initiated by the
  ///              authenticating user.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/:id/hidden
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - tweet.moderate.write
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden
  Future<bool> createHiddenReply({required String tweetId});

  /// Unhides a reply to a Tweet.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: Unique identifier of the Tweet to unhide.
  ///              The Tweet must belong to a conversation initiated by the
  ///              authenticating user.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/:id/hidden
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  /// - tweet.moderate.write
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    50 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/hide-replies/api-reference/put-tweets-id-hidden
  Future<bool> destroyHiddenReply({required String tweetId});

  /// Returns Tweets mentioning a single user specified by the requested user
  /// ID.
  ///
  /// By default, the most recent ten Tweets are returned per request. Using
  /// pagination, up to the most recent 800 Tweets can be retrieved.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level
  /// Tweet cap.
  ///
  /// ## Parameters
  ///
  /// - [userId]: Unique identifier of the user for whom to return Tweets
  ///             mentioning the user. User ID can be referenced using
  ///             the `user/lookup` endpoint. More information on Twitter IDs is
  ///             [here](https://developer.twitter.com/en/docs/twitter-ids).
  ///
  /// - [maxResults]: Specifies the number of Tweets to try and retrieve, up to
  ///                 a maximum of 100 per distinct request. By default, 10
  ///                 results are returned if this parameter is not supplied.
  ///                 The minimum permitted value is 5. It is possible to
  ///                 receive less than the `max_results` per request throughout
  ///                 the pagination process.
  ///
  /// - [paginationToken]: This parameter is used to move forwards or backwards
  ///                      through 'pages' of results, based on the value of
  ///                      the `next_token` or `previous_token` in the response.
  ///                      The value used with the parameter is pulled directly
  ///                      from the response provided by the API, and should not
  ///                      be modified.
  ///
  /// - [startTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). The oldest UTC
  ///                timestamp from which the Tweets will be provided. Timestamp
  ///                is in second granularity and is inclusive (for example,
  ///                12:00:01 includes the first second of the minute). By
  ///                default, a request will return Tweets from up to 30 days
  ///                ago if you do not include this parameter.
  ///
  /// - [endTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). Used with
  ///              `startTime`. The newest, most recent UTC timestamp to which
  ///              the Tweets will be provided. Timestamp is in second
  ///              granularity and is exclusive (for example, 12:00:01 excludes
  ///              the first second of the minute). If used without `startTime`,
  ///              Tweets from 30 days before `endTime` will be returned by
  ///              default. If not specified, `endTime` will default to
  ///              [now - 30 seconds].
  ///
  /// - [sinceTweetId]: Returns results with a Tweet ID greater than
  ///                   (that is, more recent than) the specified 'since'
  ///                   Tweet ID. There are limits to the number of Tweets that
  ///                   can be accessed through the API. If the limit of Tweets
  ///                   has occurred since the [tweetSinceId], the
  ///                   [tweetSinceId] will be forced to the oldest ID
  ///                   available.
  ///
  /// - [untilTweetId]: Returns results with a Tweet ID less than
  ///                   (that is, older than) the specified 'until' Tweet ID.
  ///                   There are limits to the number of Tweets that can be
  ///                   accessed through the API. If the limit of Tweets has
  ///                   occurred since the [untilTweetId], the [untilTweetId]
  ///                   will be forced to the most recent ID available.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/mentions
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 2.0 App-only
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    450 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    180 requests per 15-minute window per each authenticated user
  ///
  /// - **User rate limit (OAuth 1.0a)**:
  ///    180 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-mentions
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupMentions({
    required String userId,
    int? maxResults,
    String? paginationToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Returns Tweets composed by a single user, specified by the requested user
  /// ID.
  ///
  /// By default, the most recent ten Tweets are returned per request. Using
  /// pagination, the most recent 3,200 Tweets can be retrieved.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level Tweet
  /// cap.
  ///
  /// ## Parameters
  ///
  /// - [userId]: Unique identifier of the Twitter account (user ID) for whom
  ///             to return results. User ID can be referenced using
  ///             the `user/lookup` endpoint. More information on Twitter IDs is
  ///             [here](https://developer.twitter.com/en/docs/twitter-ids).
  ///
  /// - [maxResults]: Specifies the number of Tweets to try and retrieve, up to
  ///                 a maximum of 100 per distinct request. By default,
  ///                 10 results are returned if this parameter is not supplied.
  ///                 The minimum permitted value is 5. It is possible to
  ///                 receive less than the `max_results` per request throughout
  ///                 the pagination process.
  ///
  /// - [paginationToken]: This parameter is used to move forwards or backwards
  ///                      through 'pages' of results, based on the value of
  ///                      the `next_token` or `previous_token` in the response.
  ///                      The value used with the parameter is pulled directly
  ///                      from the response provided by the API, and should
  ///                      not be modified.
  ///
  /// - [startTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). The oldest UTC
  ///                timestamp from which the Tweets will be provided. Timestamp
  ///                is in second granularity and is inclusive (for example,
  ///                12:00:01 includes the first second of the minute). By
  ///                default, a request will return Tweets from up to 30 days
  ///                ago if you do not include this parameter.
  ///
  /// - [endTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). Used with
  ///              `startTime`. The newest, most recent UTC timestamp to which
  ///              the Tweets will be provided. Timestamp is in second
  ///              granularity and is exclusive (for example, 12:00:01 excludes
  ///              the first second of the minute). If used without `startTime`,
  ///              Tweets from 30 days before `endTime` will be returned by
  ///              default. If not specified, `endTime` will default to
  ///              [now - 30 seconds].
  ///
  /// - [sinceTweetId]: Returns results with a Tweet ID greater than
  ///                   (that is, more recent than) the specified 'since'
  ///                   Tweet ID. Only the 3200 most recent Tweets are
  ///                   available. The result will exclude the since_id. If the
  ///                   limit of Tweets has occurred since the [sinceTweetId],
  ///                   the [sinceTweetId] will be forced to the oldest ID
  ///                   available.
  ///
  /// - [untilTweetId]: Returns results with a Tweet ID less than
  ///                   (that is, older than) the specified 'until' Tweet ID.
  ///                   Only the 3200 most recent Tweets are available. The
  ///                   result will exclude the until_id. If the limit of
  ///                   Tweets has occurred since the [untilTweetId], the
  ///                   [untilTweetId]  will be forced to the most recent ID
  ///                   available.
  ///
  /// - [excludes]: The list of the types of Tweets to exclude from the
  ///               response. When exclude=retweets is used, the maximum
  ///               historical Tweets returned is still 3200. When the
  ///               exclude=replies parameter is used for any value, only the
  ///               most recent 800 Tweets are available.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/tweets
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 2.0 App-only
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    1500 requests per 15-minute window shared among all users of your app
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    900 requests per 15-minute window per each authenticated user
  ///
  /// - **User rate limit (OAuth 1.0a)**:
  ///    900 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-tweets
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupTweets({
    required String userId,
    int? maxResults,
    String? paginationToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<ExcludeTweetType>? excludes,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Allows you to retrieve a collection of the most recent Tweets and Retweets
  /// posted by you and users you follow. This endpoint returns up to the last
  /// 3200 Tweets.
  ///
  /// ## Parameters
  ///
  /// - [userId]: Unique identifier of the user that is requesting their
  ///             chronological home timeline. User ID can be referenced using
  ///             the user/lookup endpoint. More information on Twitter IDs is
  ///             [here](https://developer.twitter.com/en/docs/twitter-ids).
  ///
  /// - [maxResults]: Specifies the number of Tweets to try and retrieve, up to
  ///                 a maximum of 100 per distinct request. By default,
  ///                100 results are returned if this parameter is not supplied.
  ///                The minimum permitted value is 1. It is possible to receive
  ///                less than the `max_results` per request throughout the
  ///                pagination process.
  ///
  /// - [paginationToken]: This parameter is used to move forwards or backwards
  ///                      through 'pages' of results, based on the value of the
  ///                      next_token or previous_token in the response. The
  ///                      value used with the parameter is pulled directly from
  ///                      the response provided by the API, and should not be
  ///                      modified.
  ///
  /// - [startTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). The oldest UTC
  ///                timestamp from which the Tweets will be provided. Timestamp
  ///                is in second granularity and is inclusive (for example,
  ///                12:00:01 includes the first second of the minute). By
  ///                default, a request will return Tweets from up to 30 days
  ///                ago if you do not include this parameter.
  ///
  /// - [endTime]: YYYY-MM-DDTHH:mm:ssZ (ISO 8601/RFC 3339). Used with
  ///              `startTime`. The newest, most recent UTC timestamp to which
  ///              the Tweets will be provided. Timestamp is in second
  ///              granularity and is exclusive (for example, 12:00:01 excludes
  ///              the first second of the minute). If used without `startTime`,
  ///              Tweets from 30 days before `endTime` will be returned by
  ///              default. If not specified, `endTime` will default to
  ///              [now - 30 seconds].
  ///
  /// - [sinceTweetId]: Returns results with a Tweet ID greater than
  ///                   (that is, more recent than) the specified 'since'
  ///                  Tweet ID. There are limits to the number of Tweets that
  ///                  can be accessed through the API. If the limit of Tweets
  ///                  has occurred since the [sinceTweetId], the [sinceTweetId]
  ///                  will be forced to the oldest ID available.
  ///
  /// - [untilTweetId]: Returns results with a Tweet ID less than
  ///                   (that is, older than) the specified 'until' Tweet ID.
  ///                   There are limits to the number of Tweets that can be
  ///                   accessed through the API. If the limit of Tweets has
  ///                   occurred since the [untilTweetId], the [untilTweetId]
  ///                   will be forced to the most recent ID available.
  ///
  /// - [excludes]: The list of the types of Tweets to exclude from the
  ///               response.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the ID
  ///                 so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/users/:id/timelines/reverse_chronological
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 Authorization Code with PKCE
  /// - OAuth 1.0a
  ///
  /// ## Required Scopes
  ///
  /// - tweet.read
  /// - users.read
  ///
  /// ## Rate Limits
  ///
  /// - **User rate limit (OAuth 2.0 user Access Token)**:
  ///    180 requests per 15-minute window per each authenticated user
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/timelines/api-reference/get-users-id-reverse-chronological
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupHomeTimeline({
    required String userId,
    int? maxResults,
    String? paginationToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<ExcludeTweetType>? excludes,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Streams about 1% of all Tweets in real-time.
  ///
  /// If you have [Academic Research access](https://developer.twitter.com/en/products/twitter-api/academic-research),
  /// you can connect up to two [redundant connections](https://developer.twitter.com/en/docs/twitter-api/tweets/sampled-stream/integrate/recovery-and-redundancy-features)
  /// to maximize your streaming up-time.
  ///
  /// ## Parameters
  ///
  /// - [backfillMinutes]: By passing this parameter, you can request up to five
  ///                      (5) minutes worth of streaming data that you might
  ///                      have missed during a disconnection to be delivered to
  ///                      you upon reconnection. The backfilled Tweets will
  ///                      automatically flow through the reconnected stream,
  ///                      with older Tweets generally being delivered before
  ///                      any newly matching Tweets. You must include a whole
  ///                      number between 1 and 5 as the value to this
  ///                      parameter.
  ///
  ///                      This feature will deliver duplicate Tweets, meaning
  ///                      that if you were disconnected for 90 seconds, and you
  ///                      requested two minutes of backfill, you will receive
  ///                      30 seconds worth of duplicate Tweets. Due to this,
  ///                      you should make sure your system is tolerant of
  ///                      duplicate data.
  ///
  ///                      This feature is currently only available to those
  ///                      that have been approved for Academic Research access.
  ///                      To learn more about this access level, please visit
  ///                      our section on [Academic Research](https://developer.twitter.com/en/products/twitter-api/academic-research).
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 `includes` data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/sample/stream
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///   50 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream
  Future<Stream<TwitterResponse<TweetData, void>>> connectVolumeStream({
    int? backfillMinutes,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Streams Tweets in real-time that match the rules that you added to the
  /// stream using the POST /tweets/search/stream/rules endpoint. **If you
  /// haven't added any rules to your stream, you will not receive any Tweets**.
  ///
  /// If you have been approved for Academic Research access, you can take
  /// advantage of the redundant connections functionality, which allows you to
  /// connect to a stream up to two times, which will help maximize your
  /// streaming up-time.
  ///
  /// The Tweets returned by this endpoint count towards the Project-level
  /// Tweet cap.
  ///
  /// ## Parameters
  ///
  /// - [backfillMinutes]: By passing this parameter, you can recover up to
  ///                      five minutes worth of data that you might have missed
  ///                      during a disconnection. The backfilled Tweets will
  ///                      automatically flow through a reconnected stream,
  ///                      with older Tweets generally being delivered before
  ///                      any newly matching Tweets. You must include a whole
  ///                      number between 1 and 5 as the value to this
  ///                      parameter.
  ///
  ///                      This feature will deliver all Tweets that matched
  ///                      your rules and were published during the time frame
  ///                      selected, meaning that if you were disconnected for
  ///                      90 seconds, and you requested two minutes of
  ///                      backfill, you will receive 30 seconds worth of
  ///                      duplicate Tweets. Due to this, you should make sure
  ///                      your system is tolerant of duplicate data.
  ///
  ///                      This feature is currently only available to users
  ///                      who have been approved for Academic Research access.
  ///
  /// - [expansions]: Expansions enable you to request additional data objects
  ///                 that relate to the originally returned Tweets. Submit a
  ///                 list of desired expansions in a comma-separated list
  ///                 without spaces. The ID that represents the expanded data
  ///                 object will be included directly in the Tweet data object,
  ///                 but the expanded object metadata will be returned within
  ///                 the includes response object, and will also include the
  ///                 ID so that you can match this data object to the original
  ///                 Tweet object.
  ///
  /// - [tweetFields]: This fields parameter enables you to select which
  ///                  specific Tweet fields will deliver in each returned Tweet
  ///                  object. You can also pass `expansions` to return the
  ///                  specified fields for both the original Tweet and any
  ///                  included referenced Tweets. The requested Tweet fields
  ///                  will display in both the original Tweet data object, as
  ///                  well as in the referenced Tweet expanded data object that
  ///                  will be located in the `includes` data object.
  ///
  /// - [userFields]: This fields parameter enables you to select which specific
  ///                 user fields will deliver in each returned Tweet. While the
  ///                 user ID will be located in the original Tweet object, you
  ///                 will find this ID and all additional user fields in the
  ///                 includes data object.
  ///
  /// - [placeFields]: This fields parameter enables you to select which
  ///                  specific place fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return place fields if the Tweet contains a
  ///                  place and if you’ve also included the
  ///                  `expansions=geo.place_id` query parameter in your
  ///                  request. While the place ID will be located in the Tweet
  ///                  object, you will find this ID and all additional place
  ///                  fields in the `includes` data object.
  ///
  /// - [pollFields]: This fields parameter enables you to select which specific
  ///                 poll fields will deliver in each returned Tweet. Specify
  ///                 the desired fields in a comma-separated list without
  ///                 spaces between commas and fields. The Tweet will only
  ///                 return poll fields if the Tweet contains a poll and if
  ///                 you've also included the `expansions=attachments.poll_ids`
  ///                 query parameter in your request. While the poll ID will be
  ///                 located in the Tweet object, you will find this ID and all
  ///                 additional poll fields in the `includes` data object.
  ///
  /// - [mediaFields]: This fields parameter enables you to select which
  ///                  specific media fields will deliver in each returned
  ///                  Tweet. Specify the desired fields in a comma-separated
  ///                  list without spaces between commas and fields. The Tweet
  ///                  will only return media fields if the Tweet contains media
  ///                  and if you've also included the
  ///                  `expansions=attachments.media_keys` query parameter in
  ///                  your request. While the media ID will be located in the
  ///                  Tweet object, you will find this ID and all additional
  ///                  media fields in the `includes` data object.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/search/stream
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    50 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream
  Future<Stream<FilteredStreamResponse>> connectFilteredStream({
    int? backfillMinutes,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  });

  /// Returns either a single rule, or a list of rules that have been added to
  /// the stream.
  ///
  /// If you would like to initiate the stream to receive all Tweets that match
  /// these rules in real-time, you will need to use the [connectFilteredStream]
  /// endpoint.
  ///
  /// ## Parameters
  ///
  /// - [ruleIds]: The list of unique rule IDs.
  ///              If omitted, all rules are returned.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/search/stream/rules
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    450 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream-rules
  Future<TwitterResponse<List<FilteringRuleData>, FilteringRuleMeta>>
      lookupFilteringRules({List<String>? ruleIds});

  /// Add rules to your stream.
  ///
  /// Once you've added a rule or rules to your stream, you can retrieve all
  /// of the Tweets that match these rules by using the [connectFilteredStream]
  /// endpoint.
  ///
  /// To learn how to build a rule, please read our guide on [building a rule](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/integrate/build-a-rule).
  ///
  /// ## Parameters
  ///
  /// - [rules]: Specifies the rules you want to add.
  ///
  /// - [dryRun]: Set to true to test a the syntax of your rule without
  ///             submitting it. This is useful if you want to check the syntax
  ///             of a rule before removing one or more of your existing rules.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/search/stream/rules
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    450 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/post-tweets-search-stream-rules
  Future<TwitterResponse<List<FilteringRuleData>, FilteringRuleMeta>>
      createFilteringRules({
    required List<FilteringRuleParam> rules,
    bool? dryRun,
  });

  /// Delete rules from your stream.
  ///
  /// ## Parameters
  ///
  /// - [ruleIds]: Specifies the rule ids you want to delete.
  ///
  /// ## Endpoint Url
  ///
  /// - https://codercampapi.azure-api.net/2/tweets/search/stream/rules
  ///
  ///
  /// ## Authentication Methods
  ///
  /// - OAuth 2.0 App-only
  ///
  /// ## Rate Limits
  ///
  /// - **App rate limit (OAuth 2.0 App Access Token)**:
  ///    450 requests per 15-minute window shared among all users of your app
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/post-tweets-search-stream-rules
  Future<bool> destroyFilteringRules({
    required List<String> ruleIds,
  });
}

class _TweetsService extends BaseService implements TweetsService {
  /// Returns the new instance of [_TweetsService].
  _TweetsService({required super.context});

  @override
  Future<TwitterResponse<TweetData, void>> createTweet({
    required String text,
    String? quoteTweetId,
    bool? forSuperFollowersOnly,
    ReplySetting? replySetting,
    String? directMessageDeepLink,
    TweetMediaParam? media,
    TweetGeoParam? geo,
    TweetPollParam? poll,
    TweetReplyParam? reply,
  }) async =>
      super.transformSingleDataResponse(
        await super.post(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/tweets',
          body: {
            'text': text,
            'quote_tweet_id': quoteTweetId,
            'for_super_followers_only': forSuperFollowersOnly,
            'media': {
              'media_ids': media?.mediaIds,
              'tagged_user_ids': media?.taggedUserIds,
            },
            'geo': {
              'place_id': geo?.placeId,
            },
            'poll': {
              'duration_minutes': poll?.duration.inMinutes,
              'options': poll?.options,
            },
            'reply': {
              'in_reply_to_tweet_id': reply?.inReplyToTweetId,
              'exclude_reply_user_ids': reply?.excludeReplyUserIds,
            },
            //! `ReplySetting.everyone` cannot be specified for this endpoint.
            //! Convert to null and delete the field before sending a request.
            'reply_settings': replySetting == ReplySetting.everyone
                ? null
                : replySetting?.name,
            'direct_message_deep_link': directMessageDeepLink,
          },
        ),
        dataBuilder: TweetData.fromJson,
      );

  @override
  Future<bool> destroyTweet({required String tweetId}) async =>
      super.evaluateResponse(
        await super.delete(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/tweets/$tweetId',
        ),
      );

  @override
  Future<bool> createLike({
    required String userId,
    required String tweetId,
  }) async =>
      super.evaluateResponse(
        await super.post(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/likes',
          body: {'tweet_id': tweetId},
        ),
      );

  @override
  Future<bool> destroyLike({
    required String userId,
    required String tweetId,
  }) async =>
      super.evaluateResponse(
        await super.delete(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/likes/$tweetId',
        ),
      );

  @override
  Future<bool> createRetweet({
    required String userId,
    required String tweetId,
  }) async =>
      super.evaluateResponse(
        await super.post(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/retweets',
          body: {'tweet_id': tweetId},
        ),
      );

  @override
  Future<bool> destroyRetweet({
    required String userId,
    required String tweetId,
  }) async =>
      super.evaluateResponse(
        await super.delete(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/retweets/$tweetId',
        ),
      );

  @override
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupLikingUsers({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<UserExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/tweets/$tweetId/liking_users',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: UserData.fromJson,
        metaBuilder: UserMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupLikedTweets({
    required String userId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/liked_tweets',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<UserData>, UserMeta>> lookupRetweetedUsers({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<UserExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/tweets/$tweetId/retweeted_by',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: UserData.fromJson,
        metaBuilder: UserMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupQuoteTweets({
    required String tweetId,
    int? maxResults,
    String? paginationToken,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/tweets/$tweetId/quote_tweets',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchRecent({
    required String query,
    int? maxResults,
    String? nextToken,
    SortOrder? sortOrder,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/twitterv2/2/tweets/search/recent',
          queryParameters: {
            'query': query,
            'max_results': maxResults,
            'next_token': nextToken,
            'sort_order': sortOrder?.name,
            'start_time': startTime,
            'end_time': endTime,
            'since_id': sinceTweetId,
            'until_id': untilTweetId,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> searchAll({
    required String query,
    int? maxResults,
    String? nextToken,
    SortOrder? sortOrder,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/twitterv2/2/tweets/search/all',
          queryParameters: {
            'query': query,
            'max_results': maxResults,
            'next_token': nextToken,
            'sort_order': sortOrder?.name,
            'start_time': startTime,
            'end_time': endTime,
            'since_id': sinceTweetId,
            'until_id': untilTweetId,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<TweetData, void>> lookupById({
    required String tweetId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformSingleDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/tweets/$tweetId',
          queryParameters: {
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, void>> lookupByIds({
    required List<String> tweetIds,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/tweets',
          queryParameters: {
            'ids': tweetIds,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetCountData>, TweetCountMeta>> countRecent({
    required String query,
    String? nextToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    TweetCountGranularity? granularity,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/twitterv2/2/tweets/counts/recent',
          queryParameters: {
            'query': query,
            'next_token': nextToken,
            'start_time': startTime,
            'end_time': endTime,
            'since_id': sinceTweetId,
            'until_id': untilTweetId,
            'granularity': granularity?.name,
          },
        ),
        dataBuilder: TweetCountData.fromJson,
        metaBuilder: TweetCountMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetCountData>, TweetCountMeta>> countAll({
    required String query,
    String? nextToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    TweetCountGranularity? granularity,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/twitterv2/2/tweets/counts/all',
          queryParameters: {
            'query': query,
            'next_token': nextToken,
            'start_time': startTime,
            'end_time': endTime,
            'since_id': sinceTweetId,
            'until_id': untilTweetId,
            'granularity': granularity?.name,
          },
        ),
        dataBuilder: TweetCountData.fromJson,
        metaBuilder: TweetCountMeta.fromJson,
      );

  @override
  Future<bool> createBookmark({
    required String userId,
    required String tweetId,
  }) async =>
      super.evaluateResponse(
        await super.post(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/bookmarks',
          body: {'tweet_id': tweetId},
        ),
      );

  @override
  Future<bool> destroyBookmark({
    required String userId,
    required String tweetId,
  }) async =>
      super.evaluateResponse(
        await super.delete(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/bookmarks/$tweetId',
        ),
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupBookmarks({
    required String userId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2Only,
          '/twitterv2/2/users/$userId/bookmarks',
          queryParameters: {
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<bool> createHiddenReply({required String tweetId}) async =>
      super.evaluateResponse(
        await super.put(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/tweets/$tweetId/hidden',
          body: {'hidden': true},
        ),
      );

  @override
  Future<bool> destroyHiddenReply({required String tweetId}) async =>
      super.evaluateResponse(
        await super.put(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/tweets/$tweetId/hidden',
          body: {'hidden': false},
        ),
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupMentions({
    required String userId,
    int? maxResults,
    String? paginationToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/mentions',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'start_time': startTime,
            'end_time': endTime,
            'since_id': sinceTweetId,
            'until_id': untilTweetId,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupTweets({
    required String userId,
    int? maxResults,
    String? paginationToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<ExcludeTweetType>? excludes,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/tweets',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'start_time': startTime,
            'end_time': endTime,
            'since_id': sinceTweetId,
            'until_id': untilTweetId,
            'exclude': excludes,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<TwitterResponse<List<TweetData>, TweetMeta>> lookupHomeTimeline({
    required String userId,
    int? maxResults,
    String? paginationToken,
    DateTime? startTime,
    DateTime? endTime,
    String? sinceTweetId,
    String? untilTweetId,
    List<ExcludeTweetType>? excludes,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async =>
      super.transformMultiDataResponse(
        await super.get(
          UserContext.oauth2OrOAuth1,
          '/twitterv2/2/users/$userId/timelines/reverse_chronological',
          queryParameters: {
            'max_results': maxResults,
            'pagination_token': paginationToken,
            'start_time': startTime,
            'end_time': endTime,
            'since_id': sinceTweetId,
            'until_id': untilTweetId,
            'exclude': excludes,
            'expansions': expansions,
            'tweet.fields': tweetFields,
            'user.fields': userFields,
            'place.fields': placeFields,
            'poll.fields': pollFields,
            'media.fields': mediaFields,
          },
        ),
        dataBuilder: TweetData.fromJson,
        metaBuilder: TweetMeta.fromJson,
      );

  @override
  Future<Stream<TwitterResponse<TweetData, void>>> connectVolumeStream({
    int? backfillMinutes,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async {
    final stream = await super.getStream(
      UserContext.oauth2Only,
      '/twitterv2/2/tweets/sample/stream',
      queryParameters: {
        'backfill_minutes': backfillMinutes,
        'expansions': expansions,
        'tweet.fields': tweetFields,
        'user.fields': userFields,
        'place.fields': placeFields,
        'poll.fields': pollFields,
        'media.fields': mediaFields,
      },
    );

    return stream.map(
      (event) => TwitterResponse(
        data: TweetData.fromJson(event[ResponseField.data.value]),
        includes: event.containsKey(ResponseField.includes.value)
            ? Includes.fromJson(event[ResponseField.includes.value])
            : null,
      ),
    );
  }

  @override
  Future<Stream<FilteredStreamResponse>> connectFilteredStream({
    int? backfillMinutes,
    List<TweetExpansion>? expansions,
    List<TweetField>? tweetFields,
    List<UserField>? userFields,
    List<PlaceField>? placeFields,
    List<PollField>? pollFields,
    List<MediaField>? mediaFields,
  }) async {
    final stream = await super.getStream(
      UserContext.oauth2Only,
      '/twitterv2/2/tweets/search/stream',
      queryParameters: {
        'backfill_minutes': backfillMinutes,
        'expansions': expansions,
        'tweet.fields': tweetFields,
        'user.fields': userFields,
        'place.fields': placeFields,
        'poll.fields': pollFields,
        'media.fields': mediaFields,
      },
    );

    return stream.map(
      (event) => FilteredStreamResponse(
        data: TweetData.fromJson(event[ResponseField.data.value]),
        includes: event.containsKey(ResponseField.includes.value)
            ? Includes.fromJson(event[ResponseField.includes.value])
            : null,
        matchingRules: (event[ResponseField.matchingRules.value] as List)
            .map((json) => MatchingRule.fromJson(json))
            .toList(),
      ),
    );
  }

  @override
  Future<TwitterResponse<List<FilteringRuleData>, FilteringRuleMeta>>
      lookupFilteringRules({List<String>? ruleIds}) async =>
          super.transformMultiDataResponse(
            await super.get(
              UserContext.oauth2Only,
              '/twitterv2/2/tweets/search/stream/rules',
              queryParameters: {
                'ids': ruleIds,
              },
            ),
            dataBuilder: FilteringRuleData.fromJson,
            metaBuilder: FilteringRuleMeta.fromJson,
          );

  @override
  Future<TwitterResponse<List<FilteringRuleData>, FilteringRuleMeta>>
      createFilteringRules({
    required List<FilteringRuleParam> rules,
    bool? dryRun,
  }) async =>
          super.transformMultiDataResponse(
            await super.post(
              UserContext.oauth2Only,
              '/twitterv2/2/tweets/search/stream/rules',
              queryParameters: {
                'dry_run': dryRun,
              },
              body: {
                'add': rules
                    .map((rule) => {'value': rule.value, 'tag': rule.tag})
                    .toList(),
              },
            ),
            dataBuilder: FilteringRuleData.fromJson,
            metaBuilder: FilteringRuleMeta.fromJson,
          );

  @override
  Future<bool> destroyFilteringRules({
    required List<String> ruleIds,
  }) async =>
      super.evaluateResponse(
        await super.post(
          UserContext.oauth2Only,
          '/twitterv2/2/tweets/search/stream/rules',
          body: {
            'delete': {'ids': ruleIds},
          },
        ),
      );
}
