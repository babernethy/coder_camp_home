// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'public_tweet_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicTweetMetrics _$$_PublicTweetMetricsFromJson(Map json) =>
    $checkedCreate(
      r'_$_PublicTweetMetrics',
      json,
      ($checkedConvert) {
        final val = _$_PublicTweetMetrics(
          likeCount: $checkedConvert('like_count', (v) => v as int),
          retweetCount: $checkedConvert('retweet_count', (v) => v as int),
          replyCount: $checkedConvert('reply_count', (v) => v as int),
          quoteCount: $checkedConvert('quote_count', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'likeCount': 'like_count',
        'retweetCount': 'retweet_count',
        'replyCount': 'reply_count',
        'quoteCount': 'quote_count'
      },
    );

Map<String, dynamic> _$$_PublicTweetMetricsToJson(
        _$_PublicTweetMetrics instance) =>
    <String, dynamic>{
      'like_count': instance.likeCount,
      'retweet_count': instance.retweetCount,
      'reply_count': instance.replyCount,
      'quote_count': instance.quoteCount,
    };
