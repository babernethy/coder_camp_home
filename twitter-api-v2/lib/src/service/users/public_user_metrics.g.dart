// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'public_user_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicUserMetrics _$$_PublicUserMetricsFromJson(Map json) => $checkedCreate(
      r'_$_PublicUserMetrics',
      json,
      ($checkedConvert) {
        final val = _$_PublicUserMetrics(
          followersCount: $checkedConvert('followers_count', (v) => v as int),
          followingCount: $checkedConvert('following_count', (v) => v as int),
          tweetCount: $checkedConvert('tweet_count', (v) => v as int),
          listedCount: $checkedConvert('listed_count', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'followersCount': 'followers_count',
        'followingCount': 'following_count',
        'tweetCount': 'tweet_count',
        'listedCount': 'listed_count'
      },
    );

Map<String, dynamic> _$$_PublicUserMetricsToJson(
        _$_PublicUserMetrics instance) =>
    <String, dynamic>{
      'followers_count': instance.followersCount,
      'following_count': instance.followingCount,
      'tweet_count': instance.tweetCount,
      'listed_count': instance.listedCount,
    };
