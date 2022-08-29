// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_context_annotation_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetContextAnnotationGroup _$$_TweetContextAnnotationGroupFromJson(
        Map json) =>
    $checkedCreate(
      r'_$_TweetContextAnnotationGroup',
      json,
      ($checkedConvert) {
        final val = _$_TweetContextAnnotationGroup(
          domain: $checkedConvert(
              'domain',
              (v) => TweetContextAnnotation.fromJson(
                  Map<String, Object?>.from(v as Map))),
          entity: $checkedConvert(
              'entity',
              (v) => TweetContextAnnotation.fromJson(
                  Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TweetContextAnnotationGroupToJson(
        _$_TweetContextAnnotationGroup instance) =>
    <String, dynamic>{
      'domain': instance.domain.toJson(),
      'entity': instance.entity.toJson(),
    };
