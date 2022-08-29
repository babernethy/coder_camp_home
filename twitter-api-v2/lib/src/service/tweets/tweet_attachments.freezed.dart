// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_attachments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetAttachments _$TweetAttachmentsFromJson(Map<String, dynamic> json) {
  return _TweetAttachments.fromJson(json);
}

/// @nodoc
mixin _$TweetAttachments {
  /// List of unique identifiers of media attached to this Tweet. These
  /// identifiers use the same media key format as those returned by the
  /// Media Library.
  ///
  /// You can obtain the expanded object in includes.media by adding
  /// `TweetExpansion.attachmentsMediaKeys` in the request's query parameter.
  List<String>? get mediaKeys => throw _privateConstructorUsedError;

  /// List of unique identifiers of polls present in the Tweets returned.
  /// These are returned as a string in order to avoid complications with
  /// languages and tools that cannot handle large integers.
  ///
  /// You can obtain the expanded object in includes.polls by adding
  /// `TweetExpansion.attachmentsPollIds` in the request's query parameter.
  List<String>? get pollIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetAttachmentsCopyWith<TweetAttachments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetAttachmentsCopyWith<$Res> {
  factory $TweetAttachmentsCopyWith(
          TweetAttachments value, $Res Function(TweetAttachments) then) =
      _$TweetAttachmentsCopyWithImpl<$Res>;
  $Res call({List<String>? mediaKeys, List<String>? pollIds});
}

/// @nodoc
class _$TweetAttachmentsCopyWithImpl<$Res>
    implements $TweetAttachmentsCopyWith<$Res> {
  _$TweetAttachmentsCopyWithImpl(this._value, this._then);

  final TweetAttachments _value;
  // ignore: unused_field
  final $Res Function(TweetAttachments) _then;

  @override
  $Res call({
    Object? mediaKeys = freezed,
    Object? pollIds = freezed,
  }) {
    return _then(_value.copyWith(
      mediaKeys: mediaKeys == freezed
          ? _value.mediaKeys
          : mediaKeys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pollIds: pollIds == freezed
          ? _value.pollIds
          : pollIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetAttachmentsCopyWith<$Res>
    implements $TweetAttachmentsCopyWith<$Res> {
  factory _$$_TweetAttachmentsCopyWith(
          _$_TweetAttachments value, $Res Function(_$_TweetAttachments) then) =
      __$$_TweetAttachmentsCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? mediaKeys, List<String>? pollIds});
}

/// @nodoc
class __$$_TweetAttachmentsCopyWithImpl<$Res>
    extends _$TweetAttachmentsCopyWithImpl<$Res>
    implements _$$_TweetAttachmentsCopyWith<$Res> {
  __$$_TweetAttachmentsCopyWithImpl(
      _$_TweetAttachments _value, $Res Function(_$_TweetAttachments) _then)
      : super(_value, (v) => _then(v as _$_TweetAttachments));

  @override
  _$_TweetAttachments get _value => super._value as _$_TweetAttachments;

  @override
  $Res call({
    Object? mediaKeys = freezed,
    Object? pollIds = freezed,
  }) {
    return _then(_$_TweetAttachments(
      mediaKeys: mediaKeys == freezed
          ? _value._mediaKeys
          : mediaKeys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pollIds: pollIds == freezed
          ? _value._pollIds
          : pollIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetAttachments implements _TweetAttachments {
  const _$_TweetAttachments(
      {final List<String>? mediaKeys, final List<String>? pollIds})
      : _mediaKeys = mediaKeys,
        _pollIds = pollIds;

  factory _$_TweetAttachments.fromJson(Map<String, dynamic> json) =>
      _$$_TweetAttachmentsFromJson(json);

  /// List of unique identifiers of media attached to this Tweet. These
  /// identifiers use the same media key format as those returned by the
  /// Media Library.
  ///
  /// You can obtain the expanded object in includes.media by adding
  /// `TweetExpansion.attachmentsMediaKeys` in the request's query parameter.
  final List<String>? _mediaKeys;

  /// List of unique identifiers of media attached to this Tweet. These
  /// identifiers use the same media key format as those returned by the
  /// Media Library.
  ///
  /// You can obtain the expanded object in includes.media by adding
  /// `TweetExpansion.attachmentsMediaKeys` in the request's query parameter.
  @override
  List<String>? get mediaKeys {
    final value = _mediaKeys;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// List of unique identifiers of polls present in the Tweets returned.
  /// These are returned as a string in order to avoid complications with
  /// languages and tools that cannot handle large integers.
  ///
  /// You can obtain the expanded object in includes.polls by adding
  /// `TweetExpansion.attachmentsPollIds` in the request's query parameter.
  final List<String>? _pollIds;

  /// List of unique identifiers of polls present in the Tweets returned.
  /// These are returned as a string in order to avoid complications with
  /// languages and tools that cannot handle large integers.
  ///
  /// You can obtain the expanded object in includes.polls by adding
  /// `TweetExpansion.attachmentsPollIds` in the request's query parameter.
  @override
  List<String>? get pollIds {
    final value = _pollIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TweetAttachments(mediaKeys: $mediaKeys, pollIds: $pollIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetAttachments &&
            const DeepCollectionEquality()
                .equals(other._mediaKeys, _mediaKeys) &&
            const DeepCollectionEquality().equals(other._pollIds, _pollIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mediaKeys),
      const DeepCollectionEquality().hash(_pollIds));

  @JsonKey(ignore: true)
  @override
  _$$_TweetAttachmentsCopyWith<_$_TweetAttachments> get copyWith =>
      __$$_TweetAttachmentsCopyWithImpl<_$_TweetAttachments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetAttachmentsToJson(
      this,
    );
  }
}

abstract class _TweetAttachments implements TweetAttachments {
  const factory _TweetAttachments(
      {final List<String>? mediaKeys,
      final List<String>? pollIds}) = _$_TweetAttachments;

  factory _TweetAttachments.fromJson(Map<String, dynamic> json) =
      _$_TweetAttachments.fromJson;

  @override

  /// List of unique identifiers of media attached to this Tweet. These
  /// identifiers use the same media key format as those returned by the
  /// Media Library.
  ///
  /// You can obtain the expanded object in includes.media by adding
  /// `TweetExpansion.attachmentsMediaKeys` in the request's query parameter.
  List<String>? get mediaKeys;
  @override

  /// List of unique identifiers of polls present in the Tweets returned.
  /// These are returned as a string in order to avoid complications with
  /// languages and tools that cannot handle large integers.
  ///
  /// You can obtain the expanded object in includes.polls by adding
  /// `TweetExpansion.attachmentsPollIds` in the request's query parameter.
  List<String>? get pollIds;
  @override
  @JsonKey(ignore: true)
  _$$_TweetAttachmentsCopyWith<_$_TweetAttachments> get copyWith =>
      throw _privateConstructorUsedError;
}
