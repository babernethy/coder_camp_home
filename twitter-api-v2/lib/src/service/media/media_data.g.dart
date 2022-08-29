// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'media_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaData _$$_MediaDataFromJson(Map json) => $checkedCreate(
      r'_$_MediaData',
      json,
      ($checkedConvert) {
        final val = _$_MediaData(
          key: $checkedConvert('media_key', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$MediaTypeEnumMap, v)),
          url: $checkedConvert('url', (v) => v as String?),
          altText: $checkedConvert('alt_text', (v) => v as String?),
          durationMilliseconds:
              $checkedConvert('duration_ms', (v) => v as int?),
          height: $checkedConvert('height', (v) => v as int?),
          width: $checkedConvert('width', (v) => v as int?),
          privateMetrics: $checkedConvert(
              'non_public_metrics',
              (v) => v == null
                  ? null
                  : PrivateMediaMetrics.fromJson(
                      Map<String, Object?>.from(v as Map))),
          organicMetrics: $checkedConvert(
              'organic_metrics',
              (v) => v == null
                  ? null
                  : OrganicMediaMetrics.fromJson(
                      Map<String, Object?>.from(v as Map))),
          previewImageUrl:
              $checkedConvert('preview_image_url', (v) => v as String?),
          promotedMetrics: $checkedConvert(
              'promoted_metrics',
              (v) => v == null
                  ? null
                  : PromotedMediaMetrics.fromJson(
                      Map<String, Object?>.from(v as Map))),
          publicMetrics: $checkedConvert(
              'public_metrics',
              (v) => v == null
                  ? null
                  : PublicMediaMetrics.fromJson(
                      Map<String, Object?>.from(v as Map))),
          variants: $checkedConvert(
              'variants',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Variant.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'key': 'media_key',
        'altText': 'alt_text',
        'durationMilliseconds': 'duration_ms',
        'privateMetrics': 'non_public_metrics',
        'organicMetrics': 'organic_metrics',
        'previewImageUrl': 'preview_image_url',
        'promotedMetrics': 'promoted_metrics',
        'publicMetrics': 'public_metrics'
      },
    );

Map<String, dynamic> _$$_MediaDataToJson(_$_MediaData instance) =>
    <String, dynamic>{
      'media_key': instance.key,
      'type': _$MediaTypeEnumMap[instance.type]!,
      'url': instance.url,
      'alt_text': instance.altText,
      'duration_ms': instance.durationMilliseconds,
      'height': instance.height,
      'width': instance.width,
      'non_public_metrics': instance.privateMetrics?.toJson(),
      'organic_metrics': instance.organicMetrics?.toJson(),
      'preview_image_url': instance.previewImageUrl,
      'promoted_metrics': instance.promotedMetrics?.toJson(),
      'public_metrics': instance.publicMetrics?.toJson(),
      'variants': instance.variants?.map((e) => e.toJson()).toList(),
    };

const _$MediaTypeEnumMap = {
  MediaType.photo: 'photo',
  MediaType.video: 'video',
  MediaType.animatedGif: 'animated_gif',
};
