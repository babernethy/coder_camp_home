// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'poll_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PollOption _$$_PollOptionFromJson(Map json) => $checkedCreate(
      r'_$_PollOption',
      json,
      ($checkedConvert) {
        final val = _$_PollOption(
          position: $checkedConvert('position', (v) => v as int),
          label: $checkedConvert('label', (v) => v as String),
          votes: $checkedConvert('votes', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PollOptionToJson(_$_PollOption instance) =>
    <String, dynamic>{
      'position': instance.position,
      'label': instance.label,
      'votes': instance.votes,
    };
