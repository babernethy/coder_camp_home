// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../common/url.dart';

part 'user_url_entity.freezed.dart';
part 'user_url_entity.g.dart';

@freezed
class UserUrlEntity with _$UserUrlEntity {
  const factory UserUrlEntity({
    /// Contains details about the user's profile website.
    required List<Url> urls,
  }) = _UserUrlEntity;

  factory UserUrlEntity.fromJson(Map<String, Object?> json) =>
      _$UserUrlEntityFromJson(json);
}
