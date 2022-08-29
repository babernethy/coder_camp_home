// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/spaces/space_state.dart';

void main() {
  test('.name', () {
    expect(SpaceState.live.name == 'live', isTrue);
    expect(SpaceState.scheduled.name == 'scheduled', isTrue);
    expect(SpaceState.ended.name == 'ended', isTrue);
  });
}
