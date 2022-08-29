// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'space_language.dart';
import 'space_state.dart';

part 'space_data.freezed.dart';
part 'space_data.g.dart';

/// Spaces allow expression and interaction via live audio conversations.
///
/// The Space data dictionary contains relevant metadata about a Space;
/// `all the details are updated in real time`.
///
/// User objects can found and expanded in the user resource. These objects
/// are available for expansion by adding at least one of [hostIds],
/// [creatorId], [speakerIds] to the expansions query parameter.
///
/// Unlike Tweets, Spaces are ephemeral and become unavailable after they end
/// or when they are canceled by their creator. When your app handles Spaces
/// data, you are responsible for returning the most up-to-date information,
/// and must remove data that is no longer available from the platform.
///
/// The Spaces lookup endpoints can help you ensure you respect the users’
/// expectations and intent.
@freezed
class SpaceData with _$SpaceData {
  const factory SpaceData({
    /// The unique identifier of the requested Space.
    ///
    /// ## How It Can Be Used
    ///
    /// - Uniquely identify a Space returned in the response.
    required String id,

    /// The title of the Space as specified by the creator.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine the title of a Space, understand referenced keywords,
    ///   hashtags, and mentions.
    String? title,

    /// Indicates if the Space has started or will start in the future,
    /// or if it has ended.
    ///
    /// ## How It Can Be Used
    ///
    /// - Filter live or scheduled Spaces.
    SpaceState? state,

    /// The id of the Space creator.
    String? creatorId,

    /// Language of the Space, if detected by Twitter. Returned as a BCP47
    /// language tag.
    ///
    /// ## How It Can Be Used
    ///
    /// - Classify Spaces by inferred language.
    SpaceLanguage? lang,

    /// The unique identifier of the users who are hosting this Space.
    ///
    /// ## How It Can Be Used
    ///
    /// - Expand User objects, understand engagement.
    List<String>? hostIds,

    /// A list of IDs of the topics selected by the creator of the Space.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine the title of a Space, understand referenced keywords,
    ///   hashtags, and mentions.
    List<String>? topicIds,

    /// The list of users who were speaking at any point during the Space.
    /// This list contains all the users in invited_user_ids in addition to any
    /// user who requested to speak and was allowed via the Add speaker option.
    ///
    /// ## How It Can Be Used
    ///
    /// - Expand User objects, understand engagement.
    List<String>? speakerIds,

    /// The list of user IDs that were invited to join as speakers. Usually,
    /// users in this list are invited to speak via the Invite user option.
    ///
    /// ## How It Can Be Used
    ///
    /// - Expand User objects, understand engagement.
    List<String>? invitedUserIds,

    /// The number of people who set a reminder to a Space.
    ///
    /// ## How It Can Be Used
    ///
    /// - Understand how many people are interested in attending the event.
    ///   This metric is available for scheduled Spaces and Spaces scheduled in
    ///   the past that are currently live.
    int? subscriberCount,

    /// The current number of users in the Space, including Hosts and Speakers.
    ///
    /// ## How It Can Be Used
    ///
    /// - Understand engagement, and create reports and visualizations for
    ///   creators.
    int? participantCount,

    /// Indicates is this is a ticketed Space.
    ///
    /// ## How It Can Be Used
    ///
    /// - Create user experiences to highlight content of interest.
    bool? isTicketed,

    /// Indicates the start time of a scheduled Space, as set by the creator
    /// of the Space. This field is returned only if the Space has been
    /// scheduled; in other words, if the field is returned, it means the Space
    /// is a scheduled Space.
    ///
    /// ## How It Can Be Used
    ///
    /// - Integrate with calendar notifications, filter and sort Spaces by time.
    DateTime? scheduledStart,

    /// Indicates the actual start time of a Space.
    ///
    /// ## How It Can Be Used
    ///
    /// - Determine start time of a Space.
    DateTime? startedAt,

    /// Time when the Space was ended. Only available for ended Spaces.
    ///
    /// ## How It Can Be Used
    ///
    /// - Understand when a live Space ended in order to compute
    ///   its runtime duration.
    DateTime? endedAt,

    /// Creation time of this Space.
    ///
    /// ## How It Can Be Used
    ///
    /// - Understand when a Space was first created and sort Spaces by
    ///   creation time.
    DateTime? createdAt,

    /// Specifies the date and time of the last update to any of the Space's
    /// metadata, such as its title or scheduled time.
    ///
    /// ## How It Can Be Used
    ///
    /// - Keep information up to date.
    DateTime? updatedAt,
  }) = _SpaceData;

  factory SpaceData.fromJson(Map<String, Object?> json) =>
      _$SpaceDataFromJson(json);
}
