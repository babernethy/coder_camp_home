// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

/// This enum represents the compliance job status.
enum JobStatus {
  created,

  @JsonValue('in_progress')
  inProgress,

  failed,

  complete,
}
