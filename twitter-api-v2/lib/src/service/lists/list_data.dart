// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_data.freezed.dart';
part 'list_data.g.dart';

/// The list object contains Twitter Lists metadata describing the referenced
/// List.
///
/// The List object is the primary object returned in the List lookup endpoint.
/// When requesting additional List fields on this endpoint, simply use the
/// fields parameter `list.fields`.
///
/// At the moment, the List object cannot be found as a child object from any
/// other data object. However, user objects can be found and expanded in the
/// user resource. These objects are available for expansion by adding [ownerId]
/// to the expansions query parameter.
///
/// Use the expansion with the field parameter: `list.fields` when requesting
/// additional fields to complete the primary List object and `user.fields` to
/// complete the expansion object.
@freezed
class ListData with _$ListData {
  const factory ListData({
    /// The unique identifier of this List.
    ///
    /// ## How It Can Be Used
    ///
    /// - Use this to programmatically retrieve information about a specific
    ///   Twitter List.
    required String id,

    /// The name of the List, as defined when creating the List.
    required String name,

    /// A brief description to let users know about the List.
    String? description,

    /// Unique identifier of this List's owner.
    ///
    /// ## How It Can Be Used
    ///
    /// - Returns the List owner ID. Can potentially be used to find out if
    ///   this specific user owns any other Lists. Can also be used to expand
    ///   user objects.
    String? ownerId,

    /// Shows how many users follow this List.
    int? followerCount,

    /// Shows how many members are part of this List.
    int? memberCount,

    /// Indicates if the List is private.
    @JsonKey(name: 'private') bool? isPrivate,

    /// The UTC date time that the List was created on Twitter.
    ///
    /// ## How It Can Be Used
    ///
    /// - Can be used to determine how long a List has been on Twitter.
    DateTime? createdAt,
  }) = _ListData;

  factory ListData.fromJson(Map<String, Object?> json) =>
      _$ListDataFromJson(json);
}
