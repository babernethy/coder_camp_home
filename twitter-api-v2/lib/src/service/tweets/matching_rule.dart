// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'matching_rule.freezed.dart';
part 'matching_rule.g.dart';

@freezed
class MatchingRule with _$MatchingRule {
  const factory MatchingRule({
    /// ID of the filter rule that matched against the Tweet delivered.
    required String id,

    /// The tag label of the filter rule that matched against the
    /// Tweet delivered.
    required String tag,
  }) = _MatchingRule;

  factory MatchingRule.fromJson(Map<String, Object?> json) =>
      _$MatchingRuleFromJson(json);
}
