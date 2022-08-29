// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'organic_media_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrganicMediaMetrics _$$_OrganicMediaMetricsFromJson(Map json) =>
    $checkedCreate(
      r'_$_OrganicMediaMetrics',
      json,
      ($checkedConvert) {
        final val = _$_OrganicMediaMetrics(
          playback0Count: $checkedConvert('playback_0_count', (v) => v as int),
          playback25Count:
              $checkedConvert('playback_25_count', (v) => v as int),
          playback50Count:
              $checkedConvert('playback_50_count', (v) => v as int),
          playback75Count:
              $checkedConvert('playback_75_count', (v) => v as int),
          playback100Count:
              $checkedConvert('playback_100_count', (v) => v as int),
          viewCount: $checkedConvert('view_count', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'playback0Count': 'playback_0_count',
        'playback25Count': 'playback_25_count',
        'playback50Count': 'playback_50_count',
        'playback75Count': 'playback_75_count',
        'playback100Count': 'playback_100_count',
        'viewCount': 'view_count'
      },
    );

Map<String, dynamic> _$$_OrganicMediaMetricsToJson(
        _$_OrganicMediaMetrics instance) =>
    <String, dynamic>{
      'playback_0_count': instance.playback0Count,
      'playback_25_count': instance.playback25Count,
      'playback_50_count': instance.playback50Count,
      'playback_75_count': instance.playback75Count,
      'playback_100_count': instance.playback100Count,
      'view_count': instance.viewCount,
    };
