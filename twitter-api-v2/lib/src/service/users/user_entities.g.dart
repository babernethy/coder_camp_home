// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntities _$$_UserEntitiesFromJson(Map json) => $checkedCreate(
      r'_$_UserEntities',
      json,
      ($checkedConvert) {
        final val = _$_UserEntities(
          url: $checkedConvert(
              'url',
              (v) => v == null
                  ? null
                  : UserUrlEntity.fromJson(
                      Map<String, Object?>.from(v as Map))),
          description: $checkedConvert(
              'description',
              (v) => v == null
                  ? null
                  : UserDescriptionEntity.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UserEntitiesToJson(_$_UserEntities instance) =>
    <String, dynamic>{
      'url': instance.url?.toJson(),
      'description': instance.description?.toJson(),
    };
