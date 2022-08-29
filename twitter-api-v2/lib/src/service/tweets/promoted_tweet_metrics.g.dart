// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'promoted_tweet_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotedTweetMetrics _$$_PromotedTweetMetricsFromJson(Map json) =>
    $checkedCreate(
      r'_$_PromotedTweetMetrics',
      json,
      ($checkedConvert) {
        final val = _$_PromotedTweetMetrics(
          impressionCount: $checkedConvert('impression_count', (v) => v as int),
          likeCount: $checkedConvert('like_count', (v) => v as int),
          retweetCount: $checkedConvert('retweet_count', (v) => v as int),
          replyCount: $checkedConvert('reply_count', (v) => v as int),
          profileClickCount:
              $checkedConvert('user_profile_clicks', (v) => v as int),
          linkClickCount: $checkedConvert('url_link_clicks', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'impressionCount': 'impression_count',
        'likeCount': 'like_count',
        'retweetCount': 'retweet_count',
        'replyCount': 'reply_count',
        'profileClickCount': 'user_profile_clicks',
        'linkClickCount': 'url_link_clicks'
      },
    );

Map<String, dynamic> _$$_PromotedTweetMetricsToJson(
        _$_PromotedTweetMetrics instance) =>
    <String, dynamic>{
      'impression_count': instance.impressionCount,
      'like_count': instance.likeCount,
      'retweet_count': instance.retweetCount,
      'reply_count': instance.replyCount,
      'user_profile_clicks': instance.profileClickCount,
      'url_link_clicks': instance.linkClickCount,
    };
