// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'filtering_rule_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilteringRuleSummary _$$_FilteringRuleSummaryFromJson(Map json) =>
    $checkedCreate(
      r'_$_FilteringRuleSummary',
      json,
      ($checkedConvert) {
        final val = _$_FilteringRuleSummary(
          createdCount: $checkedConvert('created', (v) => v as int?),
          notCreatedCount: $checkedConvert('not_created', (v) => v as int?),
          deletedCount: $checkedConvert('deleted', (v) => v as int?),
          notDeletedCount: $checkedConvert('not_deleted', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdCount': 'created',
        'notCreatedCount': 'not_created',
        'deletedCount': 'deleted',
        'notDeletedCount': 'not_deleted'
      },
    );

Map<String, dynamic> _$$_FilteringRuleSummaryToJson(
        _$_FilteringRuleSummary instance) =>
    <String, dynamic>{
      'created': instance.createdCount,
      'not_created': instance.notCreatedCount,
      'deleted': instance.deletedCount,
      'not_deleted': instance.notDeletedCount,
    };
