// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tag _$$_TagFromJson(Map json) => $checkedCreate(
      r'_$_Tag',
      json,
      ($checkedConvert) {
        final val = _$_Tag(
          start: $checkedConvert('start', (v) => v as int),
          end: $checkedConvert('end', (v) => v as int),
          tag: $checkedConvert('tag', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'tag': instance.tag,
    };
