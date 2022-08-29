// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_context_annotation.freezed.dart';
part 'tweet_context_annotation.g.dart';

@freezed
class TweetContextAnnotation with _$TweetContextAnnotation {
  const factory TweetContextAnnotation({
    /// Domain: Contains the numeric value of the domain.
    ///
    /// Entity: Unique value which correlates to an explicitly mentioned Person,
    /// Place, Product or Organization
    required String id,

    /// Domain: Domain name based on the Tweet text.
    ///
    /// Entity: Name or reference of entity referenced in the Tweet.
    required String name,

    /// Domain: Long form description of domain classification.
    ///
    /// Entity: Additional information regarding referenced entity.
    String? description,
  }) = _TweetContextAnnotation;

  factory TweetContextAnnotation.fromJson(Map<String, Object?> json) =>
      _$TweetContextAnnotationFromJson(json);
}
