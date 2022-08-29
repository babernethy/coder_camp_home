// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'public_media_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicMediaMetrics _$$_PublicMediaMetricsFromJson(Map json) =>
    $checkedCreate(
      r'_$_PublicMediaMetrics',
      json,
      ($checkedConvert) {
        final val = _$_PublicMediaMetrics(
          viewCount: $checkedConvert('view_count', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {'viewCount': 'view_count'},
    );

Map<String, dynamic> _$$_PublicMediaMetricsToJson(
        _$_PublicMediaMetrics instance) =>
    <String, dynamic>{
      'view_count': instance.viewCount,
    };
