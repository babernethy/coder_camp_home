// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/response_field.dart';

void main() {
  test('.name', () {
    expect(ResponseField.data.name, 'data');
    expect(ResponseField.includes.name, 'includes');
    expect(ResponseField.meta.name, 'meta');
    expect(ResponseField.errors.name, 'errors');
    expect(ResponseField.matchingRules.name, 'matchingRules');
  });

  test('.value', () {
    expect(ResponseField.data.value, 'data');
    expect(ResponseField.includes.value, 'includes');
    expect(ResponseField.meta.value, 'meta');
    expect(ResponseField.errors.value, 'errors');
    expect(ResponseField.matchingRules.value, 'matching_rules');
  });
}
