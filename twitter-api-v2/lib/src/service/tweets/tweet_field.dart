// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../common/serializable.dart';

enum TweetField implements Serializable {
  /// `attachments`
  attachments('attachments'),

  /// `author_id`
  authorId('author_id'),

  /// `context_annotations`
  contextAnnotations('context_annotations'),

  /// `conversation_id`
  conversationId('conversation_id'),

  /// `created_at`
  createdAt('created_at'),

  /// `entities`
  entities('entities'),

  /// `geo`
  geo('geo'),

  /// `id`
  id('id'),

  /// `in_reply_to_user_id`
  inReplyToUserId('in_reply_to_user_id'),

  /// `lang`
  lang('lang'),

  /// `non_public_metrics`
  privateMetrics('non_public_metrics'),

  /// `organic_metrics`
  organicMetrics('organic_metrics'),

  /// `promoted_metrics`
  promotedMetrics('promoted_metrics'),

  /// `public_metrics`
  publicMetrics('public_metrics'),

  /// `possibly_sensitive`
  possiblySensitive('possibly_sensitive'),

  /// `referenced_tweets`
  referencedTweets('referenced_tweets'),

  /// `reply_settings`
  replySettings('reply_settings'),

  /// `source`
  source('source'),

  /// `text`
  text('text'),

  /// `withheld`
  withheld('withheld');

  @override
  final String value;

  const TweetField(this.value);
}
