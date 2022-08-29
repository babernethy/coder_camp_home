// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_coordinates.freezed.dart';
part 'geo_coordinates.g.dart';

@freezed
class GeoCoordinates with _$GeoCoordinates {
  const factory GeoCoordinates({
    /// Describes the type of coordinate. The only value supported at present
    /// is Point.
    required String type,

    /// A pair of decimal values representing the precise location of the user
    /// (latitude, longitude). This value be `null` unless the user explicitly
    /// shared their precise location.
    required List<double> coordinates,
  }) = _GeoCoordinates;

  factory GeoCoordinates.fromJson(Map<String, Object?> json) =>
      _$GeoCoordinatesFromJson(json);
}
