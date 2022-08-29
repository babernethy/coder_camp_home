// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_data.freezed.dart';
part 'topic_data.g.dart';

@freezed
class TopicData with _$TopicData {
  const factory TopicData({
    /// The id of this topic.
    required String id,

    /// The name of this topic.
    required String name,

    /// The description of this topic.
    required String description,
  }) = _TopicData;

  factory TopicData.fromJson(Map<String, Object?> json) =>
      _$TopicDataFromJson(json);
}
