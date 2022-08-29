// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'public_user_metrics.dart';
import 'user_entities.dart';
import 'user_withheld.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

/// The user object contains Twitter user account metadata describing the
/// referenced user.
///
/// The user object is the primary object returned in the users lookup endpoint.
/// When requesting additional user fields on this endpoint, simply use the
/// fields parameter user.fields.
///
/// The user object can also be found as a child object and expanded in the
/// Tweet object. The object is available for expansion with
/// `TweetExpansion.authorId` or `TweetExpansion.inReplyToUserId` to get the
/// condensed object with only default fields. Use the expansion with the field
/// parameter: user.fields when requesting additional fields to complete the
/// object.
@freezed
class UserData with _$UserData {
  const factory UserData({
    /// The unique identifier of this user.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to programmatically retrieve information about a specific
    ///   Twitter user.
    required String id,

    /// The name of the user, as they’ve defined it on their profile.
    /// Not necessarily a person’s name. Typically capped at 50 characters,
    /// but subject to change.
    required String name,

    /// The Twitter screen name, handle, or alias that this user identifies
    /// themselves with. Usernames are unique but subject to change. Typically
    ///  a maximum of 15 characters long, but some historical accounts may exist
    /// with longer names.
    required String username,

    /// The text of this user's profile description (also known as bio),
    /// if the user provided one.
    String? description,

    /// The URL specified in the user's profile, if present.
    ///
    /// ## How It Can Be Used
    ///
    /// - A URL provided by a Twitter user in their profile.
    ///   This could be a homepage, but is not always the case.
    String? url,

    /// The URL to the profile image for this user, as shown on the user's
    /// profile.
    ///
    /// ## How It Can Be Used
    ///
    /// - Can be used to download this user's profile image.
    String? profileImageUrl,

    /// The location specified in the user's profile, if the user provided one.
    /// As this is a freeform value, it may not indicate a valid location,
    /// but it may be fuzzily evaluated when performing searches with
    /// location queries.
    String? location,

    /// Indicates if this user has chosen to protect their Tweets
    /// (in other words, if this user's Tweets are private).
    @JsonKey(name: 'protected') bool? isProtected,

    /// Indicates if this user is a verified Twitter User.
    ///
    /// ## How It Can Be Used
    ///
    /// - Indicates whether or not this Twitter user has a verified account.
    ///   A verified account lets people know that an account of public
    ///   interest is authentic.
    @JsonKey(name: 'verified') bool? isVerified,

    /// Unique identifier of this user's pinned Tweet.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine the Tweet pinned to the top of the user’s profile.
    ///   Can potentially be used to determine the user’s language.
    String? pinnedTweetId,

    /// Contains details about text that has a special meaning in the user's
    /// description.
    ///
    /// ## How It Can Be Used
    ///
    /// - Entities are objects that provide additional information about
    ///   hashtags, urls, user mentions, and cashtags associated with the
    ///   description. Reference each respective entity for further details. All
    ///   user start indices are inclusive, while all user end indices are
    ///   exclusive.
    UserEntities? entities,

    /// Contains details about activity for this user.
    ///
    /// ## How It Can Be Used
    ///
    /// - Can potentially be used to determine a Twitter user’s reach or
    ///   influence, quantify the user’s range of interests, and the user’s
    ///   level of engagement on Twitter.
    PublicUserMetrics? publicMetrics,

    /// The UTC date time that the user account was created on Twitter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Can be used to determine how long a someone has been using Twitter.
    DateTime? createdAt,

    /// Contains withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country), if applicable.
    UserWithheld? withheld,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}
