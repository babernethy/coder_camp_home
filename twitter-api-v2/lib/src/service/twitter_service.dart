// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../client/client_context.dart';
import 'compliance/compliance_service.dart';
import 'lists/lists_service.dart';
import 'spaces/spaces_service.dart';
import 'tweets/tweets_service.dart';
import 'users/users_service.dart';

/// The class represents the twitter services.
abstract class TwitterService {
  factory TwitterService({required ClientContext context}) =>
      _TwitterService(context: context);

  /// Returns the tweets service.
  TweetsService get tweetsService;

  /// Returns the users service.
  UsersService get usersService;

  /// Returns the spaces service.
  SpacesService get spacesService;

  /// Returns the lists service.
  ListsService get listsService;

  /// Returns the compliance service.
  ComplianceService get complianceService;
}

class _TwitterService implements TwitterService {
  /// Returns the new instance of [_TwitterService].
  _TwitterService({required ClientContext context})
      : tweetsService = TweetsService(context: context),
        usersService = UsersService(context: context),
        spacesService = SpacesService(context: context),
        listsService = ListsService(context: context),
        complianceService = ComplianceService(context: context);

  @override
  final TweetsService tweetsService;

  @override
  final UsersService usersService;

  @override
  final SpacesService spacesService;

  @override
  final ListsService listsService;

  @override
  final ComplianceService complianceService;
}
