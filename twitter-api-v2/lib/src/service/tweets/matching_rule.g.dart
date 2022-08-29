// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'matching_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchingRule _$$_MatchingRuleFromJson(Map json) => $checkedCreate(
      r'_$_MatchingRule',
      json,
      ($checkedConvert) {
        final val = _$_MatchingRule(
          id: $checkedConvert('id', (v) => v as String),
          tag: $checkedConvert('tag', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MatchingRuleToJson(_$_MatchingRule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag': instance.tag,
    };
