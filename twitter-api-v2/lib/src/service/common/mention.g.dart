// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'mention.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mention _$$_MentionFromJson(Map json) => $checkedCreate(
      r'_$_Mention',
      json,
      ($checkedConvert) {
        final val = _$_Mention(
          id: $checkedConvert('id', (v) => v as String?),
          username: $checkedConvert('username', (v) => v as String),
          start: $checkedConvert('start', (v) => v as int),
          end: $checkedConvert('end', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MentionToJson(_$_Mention instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'start': instance.start,
      'end': instance.end,
    };
