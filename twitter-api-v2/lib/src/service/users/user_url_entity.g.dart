// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_url_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserUrlEntity _$$_UserUrlEntityFromJson(Map json) => $checkedCreate(
      r'_$_UserUrlEntity',
      json,
      ($checkedConvert) {
        final val = _$_UserUrlEntity(
          urls: $checkedConvert(
              'urls',
              (v) => (v as List<dynamic>)
                  .map((e) => Url.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UserUrlEntityToJson(_$_UserUrlEntity instance) =>
    <String, dynamic>{
      'urls': instance.urls.map((e) => e.toJson()).toList(),
    };
