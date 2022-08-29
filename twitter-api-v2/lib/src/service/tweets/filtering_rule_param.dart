// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// The object that contains filtering rule information.
class FilteringRuleParam {
  /// Returns the new instance of [FilteringRuleParam].
  FilteringRuleParam({required this.value, this.tag});

  /// The rule text.
  ///
  /// You can learn how to build a rule by following our guide on
  /// [how to build a rule](https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/integrate/build-a-rule).
  final String value;

  /// The tag label.
  ///
  /// This is a free-form text you can use to identify the rules that
  /// matched a specific Tweet in the streaming response.
  ///
  /// Tags can be the same across rules.
  final String? tag;
}
