// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_geo.freezed.dart';
part 'place_geo.g.dart';

@freezed
class PlaceGeo with _$PlaceGeo {
  const factory PlaceGeo({
    /// The place type.
    required String type,

    /// The bounding box.
    required List<double> bbox,

    /// The place properties.
    required Map<String, dynamic> properties,
  }) = _PlaceGeo;

  factory PlaceGeo.fromJson(Map<String, Object?> json) =>
      _$PlaceGeoFromJson(json);
}
