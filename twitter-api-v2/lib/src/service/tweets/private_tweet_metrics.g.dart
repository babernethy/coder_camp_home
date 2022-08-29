// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'private_tweet_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrivateTweetMetrics _$$_PrivateTweetMetricsFromJson(Map json) =>
    $checkedCreate(
      r'_$_PrivateTweetMetrics',
      json,
      ($checkedConvert) {
        final val = _$_PrivateTweetMetrics(
          impressionCount: $checkedConvert('impression_count', (v) => v as int),
          profileClickCount:
              $checkedConvert('user_profile_clicks', (v) => v as int),
          linkClickCount: $checkedConvert('url_link_clicks', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'impressionCount': 'impression_count',
        'profileClickCount': 'user_profile_clicks',
        'linkClickCount': 'url_link_clicks'
      },
    );

Map<String, dynamic> _$$_PrivateTweetMetricsToJson(
        _$_PrivateTweetMetrics instance) =>
    <String, dynamic>{
      'impression_count': instance.impressionCount,
      'user_profile_clicks': instance.profileClickCount,
      'url_link_clicks': instance.linkClickCount,
    };
