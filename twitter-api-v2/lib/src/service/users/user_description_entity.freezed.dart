// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_description_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDescriptionEntity _$UserDescriptionEntityFromJson(
    Map<String, dynamic> json) {
  return _UserDescriptionEntity.fromJson(json);
}

/// @nodoc
mixin _$UserDescriptionEntity {
  /// Contains details about any URLs included in the user's description.
  List<Url>? get urls => throw _privateConstructorUsedError;

  /// Contains details about text recognized as a Hashtag.
  List<Tag>? get hashtags => throw _privateConstructorUsedError;

  /// Contains details about text recognized as a Cashtag.
  List<Tag>? get cashtags => throw _privateConstructorUsedError;

  /// Contains details about text recognized as a user mention.
  List<Mention>? get mentions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDescriptionEntityCopyWith<UserDescriptionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDescriptionEntityCopyWith<$Res> {
  factory $UserDescriptionEntityCopyWith(UserDescriptionEntity value,
          $Res Function(UserDescriptionEntity) then) =
      _$UserDescriptionEntityCopyWithImpl<$Res>;
  $Res call(
      {List<Url>? urls,
      List<Tag>? hashtags,
      List<Tag>? cashtags,
      List<Mention>? mentions});
}

/// @nodoc
class _$UserDescriptionEntityCopyWithImpl<$Res>
    implements $UserDescriptionEntityCopyWith<$Res> {
  _$UserDescriptionEntityCopyWithImpl(this._value, this._then);

  final UserDescriptionEntity _value;
  // ignore: unused_field
  final $Res Function(UserDescriptionEntity) _then;

  @override
  $Res call({
    Object? urls = freezed,
    Object? hashtags = freezed,
    Object? cashtags = freezed,
    Object? mentions = freezed,
  }) {
    return _then(_value.copyWith(
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>?,
      hashtags: hashtags == freezed
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      cashtags: cashtags == freezed
          ? _value.cashtags
          : cashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      mentions: mentions == freezed
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<Mention>?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDescriptionEntityCopyWith<$Res>
    implements $UserDescriptionEntityCopyWith<$Res> {
  factory _$$_UserDescriptionEntityCopyWith(_$_UserDescriptionEntity value,
          $Res Function(_$_UserDescriptionEntity) then) =
      __$$_UserDescriptionEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Url>? urls,
      List<Tag>? hashtags,
      List<Tag>? cashtags,
      List<Mention>? mentions});
}

/// @nodoc
class __$$_UserDescriptionEntityCopyWithImpl<$Res>
    extends _$UserDescriptionEntityCopyWithImpl<$Res>
    implements _$$_UserDescriptionEntityCopyWith<$Res> {
  __$$_UserDescriptionEntityCopyWithImpl(_$_UserDescriptionEntity _value,
      $Res Function(_$_UserDescriptionEntity) _then)
      : super(_value, (v) => _then(v as _$_UserDescriptionEntity));

  @override
  _$_UserDescriptionEntity get _value =>
      super._value as _$_UserDescriptionEntity;

  @override
  $Res call({
    Object? urls = freezed,
    Object? hashtags = freezed,
    Object? cashtags = freezed,
    Object? mentions = freezed,
  }) {
    return _then(_$_UserDescriptionEntity(
      urls: urls == freezed
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>?,
      hashtags: hashtags == freezed
          ? _value._hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      cashtags: cashtags == freezed
          ? _value._cashtags
          : cashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      mentions: mentions == freezed
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<Mention>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDescriptionEntity implements _UserDescriptionEntity {
  const _$_UserDescriptionEntity(
      {final List<Url>? urls,
      final List<Tag>? hashtags,
      final List<Tag>? cashtags,
      final List<Mention>? mentions})
      : _urls = urls,
        _hashtags = hashtags,
        _cashtags = cashtags,
        _mentions = mentions;

  factory _$_UserDescriptionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserDescriptionEntityFromJson(json);

  /// Contains details about any URLs included in the user's description.
  final List<Url>? _urls;

  /// Contains details about any URLs included in the user's description.
  @override
  List<Url>? get urls {
    final value = _urls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains details about text recognized as a Hashtag.
  final List<Tag>? _hashtags;

  /// Contains details about text recognized as a Hashtag.
  @override
  List<Tag>? get hashtags {
    final value = _hashtags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains details about text recognized as a Cashtag.
  final List<Tag>? _cashtags;

  /// Contains details about text recognized as a Cashtag.
  @override
  List<Tag>? get cashtags {
    final value = _cashtags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains details about text recognized as a user mention.
  final List<Mention>? _mentions;

  /// Contains details about text recognized as a user mention.
  @override
  List<Mention>? get mentions {
    final value = _mentions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserDescriptionEntity(urls: $urls, hashtags: $hashtags, cashtags: $cashtags, mentions: $mentions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDescriptionEntity &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality().equals(other._hashtags, _hashtags) &&
            const DeepCollectionEquality().equals(other._cashtags, _cashtags) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_urls),
      const DeepCollectionEquality().hash(_hashtags),
      const DeepCollectionEquality().hash(_cashtags),
      const DeepCollectionEquality().hash(_mentions));

  @JsonKey(ignore: true)
  @override
  _$$_UserDescriptionEntityCopyWith<_$_UserDescriptionEntity> get copyWith =>
      __$$_UserDescriptionEntityCopyWithImpl<_$_UserDescriptionEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDescriptionEntityToJson(
      this,
    );
  }
}

abstract class _UserDescriptionEntity implements UserDescriptionEntity {
  const factory _UserDescriptionEntity(
      {final List<Url>? urls,
      final List<Tag>? hashtags,
      final List<Tag>? cashtags,
      final List<Mention>? mentions}) = _$_UserDescriptionEntity;

  factory _UserDescriptionEntity.fromJson(Map<String, dynamic> json) =
      _$_UserDescriptionEntity.fromJson;

  @override

  /// Contains details about any URLs included in the user's description.
  List<Url>? get urls;
  @override

  /// Contains details about text recognized as a Hashtag.
  List<Tag>? get hashtags;
  @override

  /// Contains details about text recognized as a Cashtag.
  List<Tag>? get cashtags;
  @override

  /// Contains details about text recognized as a user mention.
  List<Mention>? get mentions;
  @override
  @JsonKey(ignore: true)
  _$$_UserDescriptionEntityCopyWith<_$_UserDescriptionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
