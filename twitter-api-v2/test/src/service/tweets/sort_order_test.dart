// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/tweets/sort_order.dart';

void main() {
  test('.name', () {
    expect(SortOrder.recency.name, 'recency');
    expect(SortOrder.relevancy.name, 'relevancy');
  });
}
