// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import 'tweets/matching_rule.dart';
import 'tweets/tweet_data.dart';
import 'twitter_response.dart';

class FilteredStreamResponse extends TwitterResponse<TweetData, void> {
  /// Returns the new instance of [FilteredStreamResponse].
  FilteredStreamResponse({
    required super.data,
    super.includes,
    required this.matchingRules,
  });

  /// The matching rules
  final List<MatchingRule> matchingRules;

  @override
  String toString() =>
      'FilteredStreamResponse(data: $data, includes: $includes, meta: null, '
      'matchingRules: $matchingRules)';
}
