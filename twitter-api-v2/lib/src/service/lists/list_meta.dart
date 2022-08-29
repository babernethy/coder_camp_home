// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_meta.freezed.dart';
part 'list_meta.g.dart';

@freezed
class ListMeta with _$ListMeta {
  const factory ListMeta({
    /// The number of users returned in this request. Note that this number
    /// may be lower than what was specified in the max_results query parameter.
    int? resultCount,

    /// Pagination token for the next page of results. This value is returned
    /// when there are multiple pages of results, as the current request may
    /// only return a subset of results. To retrieve the full list, keep passing
    /// the value from this field in the pagination_token query parameter. When
    /// this field is not returned in the response, it means you've reached the
    /// last page of results, and that there are no further pages.
    String? nextToken,

    /// Pagination token for the previous page of results. This value is
    /// returned when there are multiple pages of results, as the current
    /// request may only return a subset of results. To go back to the previous
    /// page, passing the value from this field in the pagination_token query
    /// parameter. When this field is not returned in the response, it means you
    /// are on the first page of results.
    String? previousToken,
  }) = _ListMeta;

  factory ListMeta.fromJson(Map<String, Object?> json) =>
      _$ListMetaFromJson(json);
}
