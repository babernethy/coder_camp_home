// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/places/place_field.dart';

void main() {
  test('.name', () {
    expect(PlaceField.containedWithin.name, 'containedWithin');
    expect(PlaceField.country.name, 'country');
    expect(PlaceField.countryCode.name, 'countryCode');
    expect(PlaceField.fullName.name, 'fullName');
    expect(PlaceField.geo.name, 'geo');
    expect(PlaceField.id.name, 'id');
    expect(PlaceField.name.name, 'name');
    expect(PlaceField.placeType.name, 'placeType');
  });

  test('.value', () {
    expect(PlaceField.containedWithin.value, 'contained_within');
    expect(PlaceField.country.value, 'country');
    expect(PlaceField.countryCode.value, 'country_code');
    expect(PlaceField.fullName.value, 'full_name');
    expect(PlaceField.geo.value, 'geo');
    expect(PlaceField.id.value, 'id');
    expect(PlaceField.name.value, 'name');
    expect(PlaceField.placeType.value, 'place_type');
  });
}
