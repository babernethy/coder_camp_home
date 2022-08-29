// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'place_geo.dart';

part 'place_data.freezed.dart';
part 'place_data.g.dart';

/// The place tagged in a Tweet is not a primary object on any endpoint, but
/// can be found and expanded in the Tweet resource.
///
/// The object is available for expansion with `expansions=geo.place_id` to get
/// the condensed object with only default fields.
///
/// Use the expansion with the field parameter: place.fields when requesting
/// additional fields to complete the object.
@freezed
class PlaceData with _$PlaceData {
  const factory PlaceData({
    /// The unique identifier of the expanded place, if this is a point of
    /// interest tagged in the Tweet.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to programmatically retrieve a place.
    required String id,

    /// A longer-form detailed place name.
    ///
    /// ## How It Can Be Used
    ///
    /// - Classify a Tweet by a specific place name.
    required String fullName,

    /// The short name of this place.
    ///
    /// ## How It Can Be Used
    ///
    /// - Classify a Tweet by a specific place name
    String? name,

    /// Specified the particular type of information represented by this place
    /// information, such as a city name, or a point of interest.
    ///
    /// ## How It Can Be Used
    ///
    /// - Classify a Tweet by a specific type of place.
    String? placeType,

    /// The full-length name of the country this place belongs to.
    ///
    /// ## How It Can Be Used
    ///
    /// - Classify a Tweet by country name.
    String? country,

    /// The ISO Alpha-2 country code this place belongs to.
    ///
    /// ## How It Can Be Used
    ///
    /// - Classify a Tweet by country code.
    String? countryCode,

    /// Contains place details in GeoJSON format.
    PlaceGeo? geo,

    /// Returns the identifiers of known places that contain the referenced
    /// place.
    List<String>? containedWithin,
  }) = _PlaceData;

  factory PlaceData.fromJson(Map<String, Object?> json) =>
      _$PlaceDataFromJson(json);
}
