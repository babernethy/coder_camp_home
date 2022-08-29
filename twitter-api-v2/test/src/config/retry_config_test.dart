// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/client/retry_strategy.dart';
import 'package:twitter_api_v2/src/config/retry_config.dart';

void main() {
  group('regularIntervals', () {
    test('with default intervals', () {
      final config = RetryConfig.regularIntervals(maxAttempts: 10);

      expect(config.strategy, RetryStrategy.regularIntervals);
      expect(config.maxAttempts, 10);
      expect(config.intervalInSeconds, 2);
      expect(config.onExecute, null);
    });

    test('with specified intervals', () {
      final config = RetryConfig.regularIntervals(
        maxAttempts: 10,
        intervalInSeconds: 5,
      );

      expect(config.strategy, RetryStrategy.regularIntervals);
      expect(config.maxAttempts, 10);
      expect(config.intervalInSeconds, 5);
      expect(config.onExecute, null);
    });

    test('with negative maxAttempts', () {
      expect(
        () => RetryConfig.regularIntervals(maxAttempts: -1),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (maxAttempts): must be greater than or '
                      'equal to 0: -1')),
        ),
      );
    });

    test('with negative intervals', () {
      expect(
        () => RetryConfig.regularIntervals(
          maxAttempts: 10,
          intervalInSeconds: -1,
        ),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (intervalInSeconds): must be greater than '
                      'or equal to 0: -1')),
        ),
      );
    });

    test('with negative maxAttempts and intervals', () {
      expect(
        () => RetryConfig.regularIntervals(
          maxAttempts: -1,
          intervalInSeconds: -1,
        ),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (maxAttempts): must be greater than '
                      'or equal to 0: -1')),
        ),
      );
    });

    test('with onExecute', () {
      expect(
        () => RetryConfig.regularIntervals(
          maxAttempts: 5,
          onExecute: print,
        ),
        returnsNormally,
      );
    });
  });

  group('exponentialBackOff', () {
    test('with specified attempts', () {
      final config = RetryConfig.exponentialBackOff(
        maxAttempts: 10,
      );

      expect(config.strategy, RetryStrategy.exponentialBackOff);
      expect(config.maxAttempts, 10);
      expect(config.intervalInSeconds, 0);
      expect(config.onExecute, null);
    });

    test('with negative maxAttempts', () {
      expect(
        () => RetryConfig.exponentialBackOff(maxAttempts: -1),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (maxAttempts): must be greater than or '
                      'equal to 0: -1')),
        ),
      );
    });

    test('with onExecute', () {
      expect(
        () => RetryConfig.exponentialBackOff(
          maxAttempts: 5,
          onExecute: print,
        ),
        returnsNormally,
      );
    });
  });

  group('exponentialBackOffAndJitter', () {
    test('with specified attempts', () {
      final config = RetryConfig.exponentialBackOffAndJitter(
        maxAttempts: 10,
      );

      expect(config.strategy, RetryStrategy.exponentialBackOffAndJitter);
      expect(config.maxAttempts, 10);
      expect(config.intervalInSeconds, 0);
      expect(config.onExecute, null);
    });

    test('with negative maxAttempts', () {
      expect(
        () => RetryConfig.exponentialBackOffAndJitter(maxAttempts: -1),
        throwsA(
          allOf(
              isA<ArgumentError>(),
              predicate((e) =>
                  e.toString() ==
                  'Invalid argument (maxAttempts): must be greater than or '
                      'equal to 0: -1')),
        ),
      );
    });

    test('with onExecute', () {
      expect(
        () => RetryConfig.exponentialBackOffAndJitter(
          maxAttempts: 5,
          onExecute: print,
        ),
        returnsNormally,
      );
    });
  });
}
