// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_count_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetCountData _$$_TweetCountDataFromJson(Map json) => $checkedCreate(
      r'_$_TweetCountData',
      json,
      ($checkedConvert) {
        final val = _$_TweetCountData(
          start: $checkedConvert('start', (v) => DateTime.parse(v as String)),
          end: $checkedConvert('end', (v) => DateTime.parse(v as String)),
          count: $checkedConvert('tweet_count', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {'count': 'tweet_count'},
    );

Map<String, dynamic> _$$_TweetCountDataToJson(_$_TweetCountData instance) =>
    <String, dynamic>{
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'tweet_count': instance.count,
    };
