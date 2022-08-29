// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_attachments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetAttachments _$$_TweetAttachmentsFromJson(Map json) => $checkedCreate(
      r'_$_TweetAttachments',
      json,
      ($checkedConvert) {
        final val = _$_TweetAttachments(
          mediaKeys: $checkedConvert('media_keys',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          pollIds: $checkedConvert('poll_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'mediaKeys': 'media_keys', 'pollIds': 'poll_ids'},
    );

Map<String, dynamic> _$$_TweetAttachmentsToJson(_$_TweetAttachments instance) =>
    <String, dynamic>{
      'media_keys': instance.mediaKeys,
      'poll_ids': instance.pollIds,
    };
