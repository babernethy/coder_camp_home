// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// The object that contains media information being attached to create Tweet.
///
/// This is mutually exclusive from Quote Tweet ID and Poll.
class TweetMediaParam {
  /// Returns the new instance of [TweetMediaParam].
  TweetMediaParam({required this.mediaIds, this.taggedUserIds});

  /// A list of Media IDs being attached to the Tweet.
  ///
  /// This is only required if the request includes the [taggedUserIds].
  final List<String> mediaIds;

  /// A list of User IDs being tagged in the Tweet with Media.
  ///
  /// If the user you're tagging doesn't have photo-tagging enabled, their names
  /// won't show up in the list of tagged users even though the Tweet is
  /// successfully created.
  final List<String>? taggedUserIds;
}
