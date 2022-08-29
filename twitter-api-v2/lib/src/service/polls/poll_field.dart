// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../common/serializable.dart';

enum PollField implements Serializable {
  /// `id`
  id('id'),

  /// `duration_minutes`
  durationMinutes('duration_minutes'),

  /// `end_datetime`
  endAt('end_datetime'),

  /// `options`
  options('options'),

  /// `voting_status`
  votingStatus('voting_status');

  @override
  final String value;

  const PollField(this.value);
}
