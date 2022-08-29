// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'job_status.dart';
import 'job_type.dart';

part 'compliance_data.freezed.dart';
part 'compliance_data.g.dart';

@freezed
class ComplianceData with _$ComplianceData {
  const factory ComplianceData({
    /// The unique identifier for this job.
    required String id,

    /// The type of the job, whether tweets or users.
    required JobType type,

    /// Current status of this job.
    required JobStatus status,

    /// Indicates this job is enabled the upload URL with support for resumable
    /// uploads.
    required bool resumable,

    /// A URL representing the location where to upload IDs consumed by your
    /// app. This URL is already signed with an authentication key, so you
    /// will not need to pass any additional credentials or headers to
    /// authenticate the request.
    required String uploadUrl,

    /// The predefined location where to download the results from the
    /// compliance job. This URL is already signed with an authentication key,
    /// so you will not need to pass any additional credential or header to
    /// authenticate the request.
    required String downloadUrl,

    /// The date and time until which the upload URL will be available
    /// (usually 15 minutes from the request time).
    required DateTime uploadExpiresAt,

    /// The date and time until which the download URL will be available
    /// (usually 7 days from the request time).
    required DateTime downloadExpiresAt,

    /// The date and time when the job was created.
    required DateTime createdAt,
  }) = _ComplianceData;

  factory ComplianceData.fromJson(Map<String, Object?> json) =>
      _$ComplianceDataFromJson(json);
}
