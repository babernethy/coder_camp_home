// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../media/media_data.dart';
import '../places/place_data.dart';
import '../polls/poll_data.dart';
import '../spaces/topic_data.dart';
import '../tweets/tweet_data.dart';
import '../users/user_data.dart';

part 'includes.freezed.dart';
part 'includes.g.dart';

@freezed
class Includes with _$Includes {
  const factory Includes({
    /// This includes a list of referenced Retweets, Quoted Tweets, or replies
    /// in the form of Tweet objects with their default fields and any
    /// additional fields requested using the `tweet.fields` parameter, assuming
    /// there is a referenced Tweet present in the returned Tweet(s).
    List<TweetData>? tweets,

    /// This includes a list of referenced Tweet authors in the form of user
    /// objects with their default fields and any additional fields requested
    /// using the user.fields parameter.
    List<UserData>? users,

    /// This includes a list of images, videos, and GIFs included in Tweets in
    /// the form of media objects with their default fields and any additional
    /// fields requested using the media.fields parameter, assuming there is a
    /// media attachment present in the returned Tweet(s).
    List<MediaData>? media,

    /// This includes a list of referenced places in Tweets in the form of place
    /// objects with their default fields and any additional fields requested
    /// using the place.fields parameter, assuming there is a place present in
    /// the returned Tweet(s).
    List<PlaceData>? places,

    /// This includes a list of polls that are attached to Tweets in the form
    /// of poll objects with their default fields and any additional fields
    /// requested using the poll.fields parameter, assuming there is a poll
    /// present in the returned Tweet(s).
    List<PollData>? polls,

    /// This includes a list of topics that are attached to Spaces in the form
    /// of topic objects with their default fields and any additional fields
    /// requested using the topic.fields parameter, assuming there is a topic
    /// present in the returned Space(s).
    List<TopicData>? topics,
  }) = _Includes;

  factory Includes.fromJson(Map<String, Object?> json) =>
      _$IncludesFromJson(json);
}
