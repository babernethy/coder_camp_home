// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'filtering_rule_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilteringRuleData _$$_FilteringRuleDataFromJson(Map json) => $checkedCreate(
      r'_$_FilteringRuleData',
      json,
      ($checkedConvert) {
        final val = _$_FilteringRuleData(
          id: $checkedConvert('id', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
          tag: $checkedConvert('tag', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FilteringRuleDataToJson(
        _$_FilteringRuleData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'tag': instance.tag,
    };
