// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'tweet_context_annotation.dart';

part 'tweet_context_annotation_group.freezed.dart';
part 'tweet_context_annotation_group.g.dart';

@freezed
class TweetContextAnnotationGroup with _$TweetContextAnnotationGroup {
  const factory TweetContextAnnotationGroup({
    /// Contains elements which identify detailed information regarding the
    /// domain classification based on Tweet text.
    required TweetContextAnnotation domain,

    /// Contains elements which identify detailed information regarding the
    /// entity classification bases on Tweet text.
    required TweetContextAnnotation entity,
  }) = _TweetContextAnnotationGroup;

  factory TweetContextAnnotationGroup.fromJson(Map<String, Object?> json) =>
      _$TweetContextAnnotationGroupFromJson(json);
}
