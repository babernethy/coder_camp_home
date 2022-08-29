// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

enum ResponseField {
  /// `data`
  data('data'),

  /// `includes`
  includes('includes'),

  /// `meta`
  meta('meta'),

  /// `errors`
  errors('errors'),

  /// `matching_rules`
  matchingRules('matching_rules');

  /// The value of element.
  final String value;

  const ResponseField(this.value);
}
