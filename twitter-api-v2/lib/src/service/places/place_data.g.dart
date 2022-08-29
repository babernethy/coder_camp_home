// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'place_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceData _$$_PlaceDataFromJson(Map json) => $checkedCreate(
      r'_$_PlaceData',
      json,
      ($checkedConvert) {
        final val = _$_PlaceData(
          id: $checkedConvert('id', (v) => v as String),
          fullName: $checkedConvert('full_name', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String?),
          placeType: $checkedConvert('place_type', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          geo: $checkedConvert(
              'geo',
              (v) => v == null
                  ? null
                  : PlaceGeo.fromJson(Map<String, Object?>.from(v as Map))),
          containedWithin: $checkedConvert('contained_within',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'fullName': 'full_name',
        'placeType': 'place_type',
        'countryCode': 'country_code',
        'containedWithin': 'contained_within'
      },
    );

Map<String, dynamic> _$$_PlaceDataToJson(_$_PlaceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'name': instance.name,
      'place_type': instance.placeType,
      'country': instance.country,
      'country_code': instance.countryCode,
      'geo': instance.geo?.toJson(),
      'contained_within': instance.containedWithin,
    };
