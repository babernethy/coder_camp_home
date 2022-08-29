// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'poll_option.dart';
import 'poll_voting_status.dart';

part 'poll_data.freezed.dart';
part 'poll_data.g.dart';

/// A poll included in a Tweet is not a primary object on any endpoint,
/// but can be found and expanded in the Tweet object.
///
/// The object is available for expansion with `expansions=attachments.poll_ids`
/// to get the condensed object with only default fields.
///
/// Use the expansion with the field parameter: poll.fields when requesting
/// additional fields to complete the object.
@freezed
class PollData with _$PollData {
  const factory PollData({
    /// Unique identifier of the expanded poll.
    required String id,

    /// Contains objects describing each choice in the referenced poll.
    required List<PollOption> options,

    /// Indicates if this poll is still active and can receive votes,
    /// or if the voting is now closed.
    PollVotingStatus? votingStatus,

    /// Specifies the total duration of this poll.
    int? durationMinutes,

    /// Specifies the end date and time for this poll.
    @JsonKey(name: 'end_datetime') DateTime? endAt,
  }) = _PollData;

  factory PollData.fromJson(Map<String, Object?> json) =>
      _$PollDataFromJson(json);
}
