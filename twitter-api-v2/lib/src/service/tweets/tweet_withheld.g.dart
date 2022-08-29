// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_withheld.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetWithheld _$$_TweetWithheldFromJson(Map json) => $checkedCreate(
      r'_$_TweetWithheld',
      json,
      ($checkedConvert) {
        final val = _$_TweetWithheld(
          isCopyright: $checkedConvert('copyright', (v) => v as bool),
          countryCodes: $checkedConvert('country_codes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'isCopyright': 'copyright',
        'countryCodes': 'country_codes'
      },
    );

Map<String, dynamic> _$$_TweetWithheldToJson(_$_TweetWithheld instance) =>
    <String, dynamic>{
      'copyright': instance.isCopyright,
      'country_codes': instance.countryCodes,
    };
