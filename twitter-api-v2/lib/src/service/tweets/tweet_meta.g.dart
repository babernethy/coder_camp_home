// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetMeta _$$_TweetMetaFromJson(Map json) => $checkedCreate(
      r'_$_TweetMeta',
      json,
      ($checkedConvert) {
        final val = _$_TweetMeta(
          newestId: $checkedConvert('newest_id', (v) => v as String?),
          oldestId: $checkedConvert('oldest_id', (v) => v as String?),
          resultCount: $checkedConvert('result_count', (v) => v as int?),
          nextToken: $checkedConvert('next_token', (v) => v as String?),
          previousToken: $checkedConvert('previous_token', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'newestId': 'newest_id',
        'oldestId': 'oldest_id',
        'resultCount': 'result_count',
        'nextToken': 'next_token',
        'previousToken': 'previous_token'
      },
    );

Map<String, dynamic> _$$_TweetMetaToJson(_$_TweetMeta instance) =>
    <String, dynamic>{
      'newest_id': instance.newestId,
      'oldest_id': instance.oldestId,
      'result_count': instance.resultCount,
      'next_token': instance.nextToken,
      'previous_token': instance.previousToken,
    };
