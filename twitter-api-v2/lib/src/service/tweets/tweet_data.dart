// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'geo.dart';
import 'organic_tweet_metrics.dart';
import 'private_tweet_metrics.dart';
import 'promoted_tweet_metrics.dart';
import 'public_tweet_metrics.dart';
import 'referenced_tweet.dart';
import 'reply_setting.dart';
import 'tweet_attachments.dart';
import 'tweet_context_annotation_group.dart';
import 'tweet_entities.dart';
import 'tweet_language.dart';
import 'tweet_withheld.dart';

part 'tweet_data.freezed.dart';
part 'tweet_data.g.dart';

/// Tweets are the basic building block of all things Twitter. The Tweet object
/// has a long list of `root-level` fields, such as [id], [text], and
/// [createdAt].
///
/// Tweet objects are also the `parent` object to several child objects
/// including `user`, `media`, `poll`, and `place`. Use the field parameter
/// tweet.fields when requesting these root-level fields on the Tweet object.
///
/// The Tweet object that can be found and expanded in the user resource.
/// Additional Tweets related to the requested Tweet can also be found and
/// expanded in the Tweet resource. The object is available for expansion with
/// `UserExpansion.pinnedTweetId` in the user resource or
/// `TweetExpansion.referencedTweetsId` in the Tweet resource to get the object
/// with only default fields. Use the expansion with the field parameter:
/// tweet.fields when requesting additional fields to complete the object.
@freezed
class TweetData with _$TweetData {
  const factory TweetData({
    /// Unique identifier of this Tweet. This is returned as a string in order
    /// to avoid complications with languages and tools that cannot handle
    /// large integers.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to programmatically retrieve a specific Tweet.
    required String id,

    /// The actual UTF-8 text of the Tweet. See [twitter-text](https://github.com/twitter/twitter-text/) for details on
    /// what characters are currently considered valid.
    ///
    /// ## How It Can Be Used
    ///
    /// - Keyword extraction and sentiment analysis/classification.
    required String text,

    /// Unique identifier of this user. This is returned as a string in order
    /// to avoid complications with languages and tools that cannot handle large
    /// integers.
    ///
    /// You can obtain the expanded object in `includes.users` by adding
    /// `TweetExpansion.authorId` in the request's query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Hydrating User object, sharing dataset for peer review.
    String? authorId,

    /// If this Tweet is a Reply, indicates the user ID of the parent Tweet's
    /// author. This is returned as a string in order to avoid complications
    /// with languages and tools that cannot handle large integers.
    ///
    /// You can obtain the expanded object in `includes.users` by adding
    /// `TweetExpansion.inReplyToUserId` in the request's query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to determine if this Tweet was in reply to another Tweet.
    String? inReplyToUserId,

    /// The Tweet ID of the original Tweet of the conversation (which includes
    /// direct replies, replies of replies).
    ///
    /// To obtain this field, add `TweetField.conversationId` in the request's
    /// query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to reconstruct the conversation from a Tweet.
    String? conversationId,

    /// A list of Tweets this Tweet refers to. For example, if the parent Tweet
    /// is a Retweet, a Retweet with comment (also known as Quoted Tweet) or a
    /// Reply, it will include the related Tweet referenced to by its parent.
    ///
    /// To obtain this field, add `TweetField.referencedTweets` in the
    /// request's query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - This field can be used to understand conversational aspects of
    ///   retweets etc.
    List<ReferencedTweet>? referencedTweets,

    /// Contains context annotations for the Tweet.
    ///
    /// To obtain this field, add `TweetField.contextAnnotations` in the
    /// request's query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Entity recognition/extraction, topical analysis.
    List<TweetContextAnnotationGroup>? contextAnnotations,

    /// Contains details about text that has a special meaning in a Tweet.
    ///
    /// To obtain this field, add `TweetField.entities` in the request's query
    /// parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Entities are objects that provide additional information about
    ///   hashtags, urls, user mentions, and cashtags associated with a Tweet.
    ///   Reference each respective entity for further details. Please note that
    ///   all start indices are inclusive. The majority of end indices are
    ///   exclusive, except for entities.annotations.end, which is currently
    ///   inclusive.
    TweetEntities? entities,

    /// Specifies the type of attachments (if any) present in this Tweet.
    ///
    /// To obtain this field, add `TweetField.attachments` in the request's
    /// query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Understanding the objects returned for requested expansions
    TweetAttachments? attachments,

    /// Non-public engagement metrics for the Tweet at the time of the request.
    ///
    ///Requires user context authentication.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to determine the total number of impressions generated for
    ///   the Tweet.
    @JsonKey(name: 'non_public_metrics') PrivateTweetMetrics? privateMetrics,

    /// Engagement metrics, tracked in an organic context, for the Tweet at
    /// the time of the request.
    ///
    /// Requires user context authentication.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to measure organic engagement for the Tweet.
    OrganicTweetMetrics? organicMetrics,

    /// Engagement metrics, tracked in a promoted context, for the Tweet at the
    /// time of the request.
    ///
    /// Requires user context authentication.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to measure engagement for the Tweet when it was promoted.
    PromotedTweetMetrics? promotedMetrics,

    /// Engagement metrics for the Tweet at the time of the request.
    ///
    /// To obtain this field, add `TweetField.publicMetrics` in the request's
    /// query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to measure Tweet engagement.
    PublicTweetMetrics? publicMetrics,

    /// Contains details about the location tagged by the user in this Tweet,
    /// if they specified one.
    ///
    /// To obtain this field, add `TweetField.geo` in the request's query
    /// parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine if a Tweet is related to a named location with corresponding
    ///   geo coordinates.
    Geo? geo,

    /// Language of the Tweet, if detected by Twitter. Returned as a BCP47
    /// language.
    ///
    /// To return this field, add `TweetField.lang` in the request's
    /// query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Classify Tweets by spoken language.
    TweetLanguage? lang,

    /// Indicates if this Tweet contains URLs marked as sensitive, for example
    /// content suitable for mature audiences.
    ///
    /// To obtain this field, add `TweetField.possiblySensitive` in the
    /// request's query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Studying circulation of certain types of content.
    @JsonKey(name: 'possibly_sensitive') bool? isPossiblySensitive,

    /// Shows who can reply to this Tweet. Fields returned are
    /// [ReplySetting.everyone], [ReplySetting.mentionedUsers],
    /// and [ReplySetting.following].

    /// To obtain this field, add `TweeField.replySetting` in the
    /// request's query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - This field allows you to determine whether conversation reply settings
    /// have been set for the Tweet and if so, what settings have been set.
    @JsonKey(name: 'reply_settings') ReplySetting? replySetting,

    /// The name of the app the user Tweeted from.
    ///
    /// To obtain this field, add `TweetField.source` in the request's
    /// query parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine if a Twitter user posted from the web, mobile device, or
    /// other app.
    String? source,

    /// Contains withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country).
    ///
    /// To return this field, add `TweetField.withheld` in the request's query
    /// parameter.
    TweetWithheld? withheld,

    /// Creation time of the Tweet.
    ///
    /// To obtain this field, add `TweetField.createdAt` in the request's query
    /// parameter.
    ///
    /// ## How It Can Be Used
    ///
    /// - This field can be used to understand when a Tweet was created and
    ///   used for time-series analysis etc.
    DateTime? createdAt,
  }) = _TweetData;

  factory TweetData.fromJson(Map<String, Object?> json) =>
      _$TweetDataFromJson(json);
}
