// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/spaces/topic_field.dart';

void main() {
  test('.name', () {
    expect(TopicField.id.name, 'id');
    expect(TopicField.description.name, 'description');
    expect(TopicField.name.name, 'name');
  });

  test('.value', () {
    expect(TopicField.id.value, 'id');
    expect(TopicField.description.value, 'description');
    expect(TopicField.name.value, 'name');
  });
}
