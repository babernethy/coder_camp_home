// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'filtering_rule_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilteringRuleMeta _$$_FilteringRuleMetaFromJson(Map json) => $checkedCreate(
      r'_$_FilteringRuleMeta',
      json,
      ($checkedConvert) {
        final val = _$_FilteringRuleMeta(
          sentAt: $checkedConvert(
              'sent', (v) => v == null ? null : DateTime.parse(v as String)),
          summary: $checkedConvert(
              'summary',
              (v) => v == null
                  ? null
                  : FilteringRuleSummary.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {'sentAt': 'sent'},
    );

Map<String, dynamic> _$$_FilteringRuleMetaToJson(
        _$_FilteringRuleMeta instance) =>
    <String, dynamic>{
      'sent': instance.sentAt?.toIso8601String(),
      'summary': instance.summary?.toJson(),
    };
