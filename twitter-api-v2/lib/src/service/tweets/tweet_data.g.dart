// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'tweet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TweetData _$$_TweetDataFromJson(Map json) => $checkedCreate(
      r'_$_TweetData',
      json,
      ($checkedConvert) {
        final val = _$_TweetData(
          id: $checkedConvert('id', (v) => v as String),
          text: $checkedConvert('text', (v) => v as String),
          authorId: $checkedConvert('author_id', (v) => v as String?),
          inReplyToUserId:
              $checkedConvert('in_reply_to_user_id', (v) => v as String?),
          conversationId:
              $checkedConvert('conversation_id', (v) => v as String?),
          referencedTweets: $checkedConvert(
              'referenced_tweets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ReferencedTweet.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          contextAnnotations: $checkedConvert(
              'context_annotations',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TweetContextAnnotationGroup.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          entities: $checkedConvert(
              'entities',
              (v) => v == null
                  ? null
                  : TweetEntities.fromJson(
                      Map<String, Object?>.from(v as Map))),
          attachments: $checkedConvert(
              'attachments',
              (v) => v == null
                  ? null
                  : TweetAttachments.fromJson(
                      Map<String, Object?>.from(v as Map))),
          privateMetrics: $checkedConvert(
              'non_public_metrics',
              (v) => v == null
                  ? null
                  : PrivateTweetMetrics.fromJson(
                      Map<String, Object?>.from(v as Map))),
          organicMetrics: $checkedConvert(
              'organic_metrics',
              (v) => v == null
                  ? null
                  : OrganicTweetMetrics.fromJson(
                      Map<String, Object?>.from(v as Map))),
          promotedMetrics: $checkedConvert(
              'promoted_metrics',
              (v) => v == null
                  ? null
                  : PromotedTweetMetrics.fromJson(
                      Map<String, Object?>.from(v as Map))),
          publicMetrics: $checkedConvert(
              'public_metrics',
              (v) => v == null
                  ? null
                  : PublicTweetMetrics.fromJson(
                      Map<String, Object?>.from(v as Map))),
          geo: $checkedConvert(
              'geo',
              (v) => v == null
                  ? null
                  : Geo.fromJson(Map<String, Object?>.from(v as Map))),
          lang: $checkedConvert(
              'lang', (v) => $enumDecodeNullable(_$TweetLanguageEnumMap, v)),
          isPossiblySensitive:
              $checkedConvert('possibly_sensitive', (v) => v as bool?),
          replySetting: $checkedConvert('reply_settings',
              (v) => $enumDecodeNullable(_$ReplySettingEnumMap, v)),
          source: $checkedConvert('source', (v) => v as String?),
          withheld: $checkedConvert(
              'withheld',
              (v) => v == null
                  ? null
                  : TweetWithheld.fromJson(
                      Map<String, Object?>.from(v as Map))),
          createdAt: $checkedConvert('created_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'authorId': 'author_id',
        'inReplyToUserId': 'in_reply_to_user_id',
        'conversationId': 'conversation_id',
        'referencedTweets': 'referenced_tweets',
        'contextAnnotations': 'context_annotations',
        'privateMetrics': 'non_public_metrics',
        'organicMetrics': 'organic_metrics',
        'promotedMetrics': 'promoted_metrics',
        'publicMetrics': 'public_metrics',
        'isPossiblySensitive': 'possibly_sensitive',
        'replySetting': 'reply_settings',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_TweetDataToJson(_$_TweetData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'author_id': instance.authorId,
      'in_reply_to_user_id': instance.inReplyToUserId,
      'conversation_id': instance.conversationId,
      'referenced_tweets':
          instance.referencedTweets?.map((e) => e.toJson()).toList(),
      'context_annotations':
          instance.contextAnnotations?.map((e) => e.toJson()).toList(),
      'entities': instance.entities?.toJson(),
      'attachments': instance.attachments?.toJson(),
      'non_public_metrics': instance.privateMetrics?.toJson(),
      'organic_metrics': instance.organicMetrics?.toJson(),
      'promoted_metrics': instance.promotedMetrics?.toJson(),
      'public_metrics': instance.publicMetrics?.toJson(),
      'geo': instance.geo?.toJson(),
      'lang': _$TweetLanguageEnumMap[instance.lang],
      'possibly_sensitive': instance.isPossiblySensitive,
      'reply_settings': _$ReplySettingEnumMap[instance.replySetting],
      'source': instance.source,
      'withheld': instance.withheld?.toJson(),
      'created_at': instance.createdAt?.toIso8601String(),
    };

const _$TweetLanguageEnumMap = {
  TweetLanguage.amharic: 'am',
  TweetLanguage.german: 'de',
  TweetLanguage.malayalam: 'ml',
  TweetLanguage.slovak: 'sk',
  TweetLanguage.arabic: 'ar',
  TweetLanguage.greek: 'el',
  TweetLanguage.maldivian: 'dv',
  TweetLanguage.slovenian: 'sl',
  TweetLanguage.armenian: 'hy',
  TweetLanguage.gujarati: 'gu',
  TweetLanguage.marathi: 'mr',
  TweetLanguage.soraniKurdish: 'ckb',
  TweetLanguage.basque: 'eu',
  TweetLanguage.haitianCreole: 'ht',
  TweetLanguage.nepali: 'ne',
  TweetLanguage.spanish: 'es',
  TweetLanguage.bengali: 'bn',
  TweetLanguage.hebrew: 'iw',
  TweetLanguage.norwegian: 'no',
  TweetLanguage.swedish: 'sv',
  TweetLanguage.bosnian: 'bs',
  TweetLanguage.hindi: 'hi',
  TweetLanguage.oriya: 'or',
  TweetLanguage.tagalog: 'tl',
  TweetLanguage.bulgarian: 'bg',
  TweetLanguage.latinizedHindi: 'hi-Latn',
  TweetLanguage.panjabi: 'pa',
  TweetLanguage.tamil: 'ta',
  TweetLanguage.burmese: 'my',
  TweetLanguage.hungarian: 'hu',
  TweetLanguage.pashto: 'ps',
  TweetLanguage.telugu: 'te',
  TweetLanguage.croatian: 'hr',
  TweetLanguage.icelandic: 'is',
  TweetLanguage.persian: 'fa',
  TweetLanguage.thai: 'th',
  TweetLanguage.catalan: 'ca',
  TweetLanguage.indonesian: 'in',
  TweetLanguage.polish: 'pl',
  TweetLanguage.tibetan: 'bo',
  TweetLanguage.czech: 'cs',
  TweetLanguage.italian: 'it',
  TweetLanguage.portuguese: 'pt',
  TweetLanguage.chinese: 'zh',
  TweetLanguage.traditionalChinese: 'zh-TW',
  TweetLanguage.danish: 'da',
  TweetLanguage.japanese: 'ja',
  TweetLanguage.romanian: 'ro',
  TweetLanguage.turkish: 'tr',
  TweetLanguage.dutch: 'nl',
  TweetLanguage.kannada: 'kn',
  TweetLanguage.russian: 'ru',
  TweetLanguage.ukrainian: 'uk',
  TweetLanguage.english: 'en',
  TweetLanguage.khmer: 'km',
  TweetLanguage.serbian: 'sr',
  TweetLanguage.urdu: 'ur',
  TweetLanguage.estonian: 'et',
  TweetLanguage.korean: 'ko',
  TweetLanguage.simplifiedChinese: 'zh-CN',
  TweetLanguage.uyghur: 'ug',
  TweetLanguage.finnish: 'fi',
  TweetLanguage.lao: 'lo',
  TweetLanguage.sindhi: 'sd',
  TweetLanguage.vietnamese: 'vi',
  TweetLanguage.french: 'fr',
  TweetLanguage.latvian: 'lv',
  TweetLanguage.sinhala: 'si',
  TweetLanguage.welsh: 'cy',
  TweetLanguage.georgian: 'ka',
  TweetLanguage.lithuanian: 'lt',
  TweetLanguage.undetermined: 'und',
};

const _$ReplySettingEnumMap = {
  ReplySetting.everyone: 'everyone',
  ReplySetting.mentionedUsers: 'mentionedUsers',
  ReplySetting.following: 'following',
};
