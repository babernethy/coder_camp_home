// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'space_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpaceData _$$_SpaceDataFromJson(Map json) => $checkedCreate(
      r'_$_SpaceData',
      json,
      ($checkedConvert) {
        final val = _$_SpaceData(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String?),
          state: $checkedConvert(
              'state', (v) => $enumDecodeNullable(_$SpaceStateEnumMap, v)),
          creatorId: $checkedConvert('creator_id', (v) => v as String?),
          lang: $checkedConvert(
              'lang', (v) => $enumDecodeNullable(_$SpaceLanguageEnumMap, v)),
          hostIds: $checkedConvert('host_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          topicIds: $checkedConvert('topic_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          speakerIds: $checkedConvert('speaker_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          invitedUserIds: $checkedConvert('invited_user_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          subscriberCount:
              $checkedConvert('subscriber_count', (v) => v as int?),
          participantCount:
              $checkedConvert('participant_count', (v) => v as int?),
          isTicketed: $checkedConvert('is_ticketed', (v) => v as bool?),
          scheduledStart: $checkedConvert('scheduled_start',
              (v) => v == null ? null : DateTime.parse(v as String)),
          startedAt: $checkedConvert('started_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          endedAt: $checkedConvert('ended_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdAt: $checkedConvert('created_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updated_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'creatorId': 'creator_id',
        'hostIds': 'host_ids',
        'topicIds': 'topic_ids',
        'speakerIds': 'speaker_ids',
        'invitedUserIds': 'invited_user_ids',
        'subscriberCount': 'subscriber_count',
        'participantCount': 'participant_count',
        'isTicketed': 'is_ticketed',
        'scheduledStart': 'scheduled_start',
        'startedAt': 'started_at',
        'endedAt': 'ended_at',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at'
      },
    );

Map<String, dynamic> _$$_SpaceDataToJson(_$_SpaceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'state': _$SpaceStateEnumMap[instance.state],
      'creator_id': instance.creatorId,
      'lang': _$SpaceLanguageEnumMap[instance.lang],
      'host_ids': instance.hostIds,
      'topic_ids': instance.topicIds,
      'speaker_ids': instance.speakerIds,
      'invited_user_ids': instance.invitedUserIds,
      'subscriber_count': instance.subscriberCount,
      'participant_count': instance.participantCount,
      'is_ticketed': instance.isTicketed,
      'scheduled_start': instance.scheduledStart?.toIso8601String(),
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$SpaceStateEnumMap = {
  SpaceState.scheduled: 'scheduled',
  SpaceState.live: 'live',
  SpaceState.ended: 'ended',
};

const _$SpaceLanguageEnumMap = {
  SpaceLanguage.arabic: 'ar',
  SpaceLanguage.armenian: 'hy',
  SpaceLanguage.chinese: 'zh',
  SpaceLanguage.danish: 'da',
  SpaceLanguage.english: 'en',
  SpaceLanguage.finnish: 'fi',
  SpaceLanguage.french: 'fr',
  SpaceLanguage.german: 'de',
  SpaceLanguage.hindi: 'hi',
  SpaceLanguage.hebrew: 'iw',
  SpaceLanguage.indonesian: 'id',
  SpaceLanguage.italian: 'it',
  SpaceLanguage.japanese: 'ja',
  SpaceLanguage.kazakh: 'kk',
  SpaceLanguage.korean: 'ko',
  SpaceLanguage.norwegian: 'no',
  SpaceLanguage.polish: 'pl',
  SpaceLanguage.portuguese: 'pt',
  SpaceLanguage.romanian: 'ro',
  SpaceLanguage.russian: 'ru',
  SpaceLanguage.spanish: 'es',
  SpaceLanguage.swedish: 'sv',
  SpaceLanguage.turkish: 'tr',
  SpaceLanguage.ukrainian: 'uk',
  SpaceLanguage.undetermined: 'other',
};
