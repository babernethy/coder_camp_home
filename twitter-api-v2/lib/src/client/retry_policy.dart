// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:math' as math;

// Project imports:
import '../config/retry_config.dart';
import 'retry_event.dart';
import 'retry_strategy.dart';

abstract class RetryPolicy {
  /// Returns the new instance of [RetryPolicy].
  factory RetryPolicy(
    final RetryConfig? retryConfig,
  ) =>
      _RetryPolicy(retryConfig);

  /// Returns true if the retry should be performed, otherwise false.
  bool shouldRetry(final int retryCount);

  Future wait(final int retryCount);
}

class _RetryPolicy implements RetryPolicy {
  /// Returns the new instance of [_RetryPolicy].
  _RetryPolicy(RetryConfig? retryConfig) : _retryConfig = retryConfig;

  /// The random generator.
  static final _random = math.Random();

  /// The configuration of retry.
  final RetryConfig? _retryConfig;

  @override
  bool shouldRetry(final int retryCount) {
    _checkRetryCount(retryCount);

    if (!_hasRetryConfig) {
      return false;
    }

    return _retryConfig!.maxAttempts > retryCount;
  }

  @override
  Future wait(final int retryCount) async {
    _checkRetryCount(retryCount);

    if (!_hasRetryConfig) {
      return;
    }

    final int intervalInSeconds = _computeWaitIntervals(retryCount);

    await _retryConfig!.onExecute?.call(
      RetryEvent(
        retryCount: retryCount,
        intervalInSeconds: intervalInSeconds,
      ),
    );

    return await Future.delayed(
      Duration(seconds: intervalInSeconds),
    );
  }

  void _checkRetryCount(final int retryCount) {
    if (retryCount < 0) {
      //! There is no use case where the number of retries is negative.
      throw ArgumentError.value(
        retryCount,
        'retryCount',
        'must be greater than or equal to 0',
      );
    }
  }

  bool get _hasRetryConfig => _retryConfig != null;

  int _computeWaitIntervals(final int retryCount) {
    if (_retryConfig!.strategy == RetryStrategy.exponentialBackOff ||
        _retryConfig!.strategy == RetryStrategy.exponentialBackOffAndJitter) {
      return _computeExponentialBackOff(retryCount) + _jitter;
    }

    return _retryConfig!.intervalInSeconds;
  }

  int _computeExponentialBackOff(final int retryCount) =>
      math.pow(2, retryCount).toInt();

  int get _jitter {
    if (_retryConfig!.strategy == RetryStrategy.exponentialBackOffAndJitter) {
      return _random.nextInt(4);
    }

    return 0;
  }
}
