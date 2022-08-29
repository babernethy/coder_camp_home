// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_annotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetAnnotation _$$_TweetAnnotationFromJson(Map json) => $checkedCreate(
      r'_$_TweetAnnotation',
      json,
      ($checkedConvert) {
        final val = _$_TweetAnnotation(
          start: $checkedConvert('start', (v) => v as int),
          end: $checkedConvert('end', (v) => v as int),
          probability:
              $checkedConvert('probability', (v) => (v as num).toDouble()),
          type: $checkedConvert('type', (v) => v as String),
          normalizedText:
              $checkedConvert('normalized_text', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'normalizedText': 'normalized_text'},
    );

Map<String, dynamic> _$$_TweetAnnotationToJson(_$_TweetAnnotation instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'probability': instance.probability,
      'type': instance.type,
      'normalized_text': instance.normalizedText,
    };
