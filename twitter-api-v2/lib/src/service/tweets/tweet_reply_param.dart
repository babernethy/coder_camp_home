// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// The object that contains information of the Tweet being replied to.
class TweetReplyParam {
  /// Returns the new instance of [TweetReplyParam].
  TweetReplyParam({required this.inReplyToTweetId, this.excludeReplyUserIds});

  /// Tweet ID of the Tweet being replied to.
  ///
  /// Please note that [inReplyToTweetId] needs to be in the request
  /// if [excludeReplyUserIds] is present.
  final String inReplyToTweetId;

  /// A list of User IDs to be excluded from the reply Tweet thus removing
  /// a user from a thread.
  final List<String>? excludeReplyUserIds;
}
