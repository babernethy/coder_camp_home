// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/tweet_expansion.dart';

void main() {
  test('.name', () {
    expect(TweetExpansion.authorId.name, 'authorId');
    expect(TweetExpansion.inReplyToUserId.name, 'inReplyToUserId');
    expect(TweetExpansion.attachmentsPollIds.name, 'attachmentsPollIds');
    expect(TweetExpansion.attachmentsMediaKeys.name, 'attachmentsMediaKeys');
    expect(TweetExpansion.entitiesMentionsUsername.name,
        'entitiesMentionsUsername');
    expect(TweetExpansion.geoPlaceId.name, 'geoPlaceId');
    expect(TweetExpansion.referencedTweetsId.name, 'referencedTweetsId');
    expect(TweetExpansion.referencedTweetsIdAuthorId.name,
        'referencedTweetsIdAuthorId');
  });

  test('.fieldName', () {
    expect(TweetExpansion.authorId.value, 'author_id');
    expect(TweetExpansion.inReplyToUserId.value, 'in_reply_to_user_id');
    expect(TweetExpansion.attachmentsPollIds.value, 'attachments.poll_ids');
    expect(TweetExpansion.attachmentsMediaKeys.value, 'attachments.media_keys');
    expect(TweetExpansion.entitiesMentionsUsername.value,
        'entities.mentions.username');
    expect(TweetExpansion.geoPlaceId.value, 'geo.place_id');
    expect(TweetExpansion.referencedTweetsId.value, 'referenced_tweets.id');
    expect(TweetExpansion.referencedTweetsIdAuthorId.value,
        'referenced_tweets.id.author_id');
  });
}
