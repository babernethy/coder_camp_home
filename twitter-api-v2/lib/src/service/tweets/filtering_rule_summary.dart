// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filtering_rule_summary.freezed.dart';
part 'filtering_rule_summary.g.dart';

@freezed
class FilteringRuleSummary with _$FilteringRuleSummary {
  const factory FilteringRuleSummary({
    /// The count of created filtering rules.
    @JsonKey(name: 'created') int? createdCount,

    /// The count of not created filtering rules.
    @JsonKey(name: 'not_created') int? notCreatedCount,

    /// The count of deleted filtering rules.
    @JsonKey(name: 'deleted') int? deletedCount,

    /// The count of not deleted filtering rules.
    @JsonKey(name: 'not_deleted') int? notDeletedCount,
  }) = _FilteringRuleSummary;

  factory FilteringRuleSummary.fromJson(Map<String, Object?> json) =>
      _$FilteringRuleSummaryFromJson(json);
}
