// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Variant _$$_VariantFromJson(Map json) => $checkedCreate(
      r'_$_Variant',
      json,
      ($checkedConvert) {
        final val = _$_Variant(
          bitRate: $checkedConvert('bit_rate', (v) => v as int?),
          contentType: $checkedConvert('content_type', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'bitRate': 'bit_rate', 'contentType': 'content_type'},
    );

Map<String, dynamic> _$$_VariantToJson(_$_Variant instance) =>
    <String, dynamic>{
      'bit_rate': instance.bitRate,
      'content_type': instance.contentType,
      'url': instance.url,
    };
