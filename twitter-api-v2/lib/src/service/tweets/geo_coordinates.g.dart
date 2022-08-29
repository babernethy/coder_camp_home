// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'geo_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoCoordinates _$$_GeoCoordinatesFromJson(Map json) => $checkedCreate(
      r'_$_GeoCoordinates',
      json,
      ($checkedConvert) {
        final val = _$_GeoCoordinates(
          type: $checkedConvert('type', (v) => v as String),
          coordinates: $checkedConvert(
              'coordinates',
              (v) => (v as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_GeoCoordinatesToJson(_$_GeoCoordinates instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
