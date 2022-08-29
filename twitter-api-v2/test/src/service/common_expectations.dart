// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/exception/rate_limit_exceeded_exception.dart';
import 'package:twitter_api_v2/src/exception/twitter_exception.dart';
import 'package:twitter_api_v2/src/exception/unauthorized_exception.dart';

void expectUnauthorizedException(Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(
      allOf(
        isA<UnauthorizedException>(),
        predicate(
          (e) =>
              e.toString() ==
              'UnauthorizedException: The specified access token is invalid.',
        ),
      ),
    ),
  );
}

void expectRateLimitExceededException(Function fn) {
  expect(
    () async => fn.call(),
    throwsA(
      allOf(
        isA<RateLimitExceededException>(),
        predicate(
          (e) =>
              e.toString() == 'RateLimitExceededException: Rate limit exceeded',
        ),
      ),
    ),
  );
}

void expectTwitterExceptionDueToNoData(Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(
      allOf(
        isA<TwitterException>(),
        predicate(
          (TwitterException e) =>
              e.message == 'No response data exists for the request.',
        ),
      ),
    ),
  );
}

void expectTwitterExceptionDueToNoJson(Function fn) {
  expect(
    () async => await fn.call(),
    throwsA(
      allOf(
        isA<TwitterException>(),
        predicate(
          (TwitterException e) =>
              e.message == 'Failed to decode the response body as JSON.',
        ),
      ),
    ),
  );
}
