// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_withheld.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserWithheld _$$_UserWithheldFromJson(Map json) => $checkedCreate(
      r'_$_UserWithheld',
      json,
      ($checkedConvert) {
        final val = _$_UserWithheld(
          countryCodes: $checkedConvert('country_codes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'countryCodes': 'country_codes'},
    );

Map<String, dynamic> _$$_UserWithheldToJson(_$_UserWithheld instance) =>
    <String, dynamic>{
      'country_codes': instance.countryCodes,
    };
