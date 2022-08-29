// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// This enum is used to control who can reply to Tweet.
///
/// [everyone]: Everyone can reply. This is default value
///
/// [mentionedUsers]: Only mentioned users can reply
///
/// [following]: Only people you follow can reply
enum ReplySetting {
  /// Everyone can reply
  everyone,

  /// Only mentioned users can reply
  mentionedUsers,

  /// Only people you follow can reply
  following,
}
