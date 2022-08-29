// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'compliance_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComplianceData _$$_ComplianceDataFromJson(Map json) => $checkedCreate(
      r'_$_ComplianceData',
      json,
      ($checkedConvert) {
        final val = _$_ComplianceData(
          id: $checkedConvert('id', (v) => v as String),
          type:
              $checkedConvert('type', (v) => $enumDecode(_$JobTypeEnumMap, v)),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$JobStatusEnumMap, v)),
          resumable: $checkedConvert('resumable', (v) => v as bool),
          uploadUrl: $checkedConvert('upload_url', (v) => v as String),
          downloadUrl: $checkedConvert('download_url', (v) => v as String),
          uploadExpiresAt: $checkedConvert(
              'upload_expires_at', (v) => DateTime.parse(v as String)),
          downloadExpiresAt: $checkedConvert(
              'download_expires_at', (v) => DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'uploadUrl': 'upload_url',
        'downloadUrl': 'download_url',
        'uploadExpiresAt': 'upload_expires_at',
        'downloadExpiresAt': 'download_expires_at',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_ComplianceDataToJson(_$_ComplianceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$JobTypeEnumMap[instance.type]!,
      'status': _$JobStatusEnumMap[instance.status]!,
      'resumable': instance.resumable,
      'upload_url': instance.uploadUrl,
      'download_url': instance.downloadUrl,
      'upload_expires_at': instance.uploadExpiresAt.toIso8601String(),
      'download_expires_at': instance.downloadExpiresAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$JobTypeEnumMap = {
  JobType.tweets: 'tweets',
  JobType.users: 'users',
};

const _$JobStatusEnumMap = {
  JobStatus.created: 'created',
  JobStatus.inProgress: 'in_progress',
  JobStatus.failed: 'failed',
  JobStatus.complete: 'complete',
};
