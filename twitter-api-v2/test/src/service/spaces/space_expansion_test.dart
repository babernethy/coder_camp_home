// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/spaces/space_expansion.dart';

void main() {
  test('.name', () {
    expect(SpaceExpansion.invitedUserIds.name, 'invitedUserIds');
    expect(SpaceExpansion.speakerIds.name, 'speakerIds');
    expect(SpaceExpansion.creatorId.name, 'creatorId');
    expect(SpaceExpansion.hostIds.name, 'hostIds');
    expect(SpaceExpansion.topicIds.name, 'topicIds');
  });

  test('.value', () {
    expect(SpaceExpansion.invitedUserIds.value, 'invited_user_ids');
    expect(SpaceExpansion.speakerIds.value, 'speaker_ids');
    expect(SpaceExpansion.creatorId.value, 'creator_id');
    expect(SpaceExpansion.hostIds.value, 'host_ids');
    expect(SpaceExpansion.topicIds.value, 'topic_ids');
  });
}
