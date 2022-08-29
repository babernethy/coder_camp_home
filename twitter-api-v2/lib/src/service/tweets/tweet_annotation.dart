// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_annotation.freezed.dart';
part 'tweet_annotation.g.dart';

@freezed
class TweetAnnotation with _$TweetAnnotation {
  const factory TweetAnnotation({
    /// The start position (zero-based) of the text used to annotate the Tweet.
    /// All start indices are inclusive.
    required int start,

    /// The end position (zero based) of the text used to annotate the Tweet.
    /// While all other end indices are exclusive, this one is inclusive.
    required int end,

    /// The confidence score for the annotation as it correlates to the
    /// Tweet text.
    required double probability,

    /// The description of the type of entity identified when the Tweet text
    /// was interpreted.
    required String type,

    /// The text used to determine the annotation type.
    required String normalizedText,
  }) = _TweetAnnotation;

  factory TweetAnnotation.fromJson(Map<String, Object?> json) =>
      _$TweetAnnotationFromJson(json);
}
