// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../common/serializable.dart';

/// Represents an extensible field about Tweet.
enum TweetExpansion implements Serializable {
  /// `author_id`
  authorId('author_id'),

  /// `in_reply_to_user_id`
  inReplyToUserId('in_reply_to_user_id'),

  /// `attachments.poll_ids`
  attachmentsPollIds('attachments.poll_ids'),

  /// `attachments.media_keys`
  attachmentsMediaKeys('attachments.media_keys'),

  /// `entities.mentions.username`
  entitiesMentionsUsername('entities.mentions.username'),

  /// `geo.place_id`
  geoPlaceId('geo.place_id'),

  /// `referenced_tweets.id`
  referencedTweetsId('referenced_tweets.id'),

  /// `referenced_tweets.id.author_id`
  referencedTweetsIdAuthorId('referenced_tweets.id.author_id');

  @override
  final String value;

  const TweetExpansion(this.value);
}
