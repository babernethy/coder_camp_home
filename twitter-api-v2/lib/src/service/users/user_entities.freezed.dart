// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntities _$UserEntitiesFromJson(Map<String, dynamic> json) {
  return _UserEntities.fromJson(json);
}

/// @nodoc
mixin _$UserEntities {
  /// Contains details about the user's profile website.
  UserUrlEntity? get url => throw _privateConstructorUsedError;

  /// Contains details about URLs, Hashtags, Cashtags, or mentions located
  /// within a user's description.
  UserDescriptionEntity? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntitiesCopyWith<UserEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntitiesCopyWith<$Res> {
  factory $UserEntitiesCopyWith(
          UserEntities value, $Res Function(UserEntities) then) =
      _$UserEntitiesCopyWithImpl<$Res>;
  $Res call({UserUrlEntity? url, UserDescriptionEntity? description});

  $UserUrlEntityCopyWith<$Res>? get url;
  $UserDescriptionEntityCopyWith<$Res>? get description;
}

/// @nodoc
class _$UserEntitiesCopyWithImpl<$Res> implements $UserEntitiesCopyWith<$Res> {
  _$UserEntitiesCopyWithImpl(this._value, this._then);

  final UserEntities _value;
  // ignore: unused_field
  final $Res Function(UserEntities) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as UserUrlEntity?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as UserDescriptionEntity?,
    ));
  }

  @override
  $UserUrlEntityCopyWith<$Res>? get url {
    if (_value.url == null) {
      return null;
    }

    return $UserUrlEntityCopyWith<$Res>(_value.url!, (value) {
      return _then(_value.copyWith(url: value));
    });
  }

  @override
  $UserDescriptionEntityCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $UserDescriptionEntityCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserEntitiesCopyWith<$Res>
    implements $UserEntitiesCopyWith<$Res> {
  factory _$$_UserEntitiesCopyWith(
          _$_UserEntities value, $Res Function(_$_UserEntities) then) =
      __$$_UserEntitiesCopyWithImpl<$Res>;
  @override
  $Res call({UserUrlEntity? url, UserDescriptionEntity? description});

  @override
  $UserUrlEntityCopyWith<$Res>? get url;
  @override
  $UserDescriptionEntityCopyWith<$Res>? get description;
}

/// @nodoc
class __$$_UserEntitiesCopyWithImpl<$Res>
    extends _$UserEntitiesCopyWithImpl<$Res>
    implements _$$_UserEntitiesCopyWith<$Res> {
  __$$_UserEntitiesCopyWithImpl(
      _$_UserEntities _value, $Res Function(_$_UserEntities) _then)
      : super(_value, (v) => _then(v as _$_UserEntities));

  @override
  _$_UserEntities get _value => super._value as _$_UserEntities;

  @override
  $Res call({
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_UserEntities(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as UserUrlEntity?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as UserDescriptionEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEntities implements _UserEntities {
  const _$_UserEntities({this.url, this.description});

  factory _$_UserEntities.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntitiesFromJson(json);

  /// Contains details about the user's profile website.
  @override
  final UserUrlEntity? url;

  /// Contains details about URLs, Hashtags, Cashtags, or mentions located
  /// within a user's description.
  @override
  final UserDescriptionEntity? description;

  @override
  String toString() {
    return 'UserEntities(url: $url, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntities &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_UserEntitiesCopyWith<_$_UserEntities> get copyWith =>
      __$$_UserEntitiesCopyWithImpl<_$_UserEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntitiesToJson(
      this,
    );
  }
}

abstract class _UserEntities implements UserEntities {
  const factory _UserEntities(
      {final UserUrlEntity? url,
      final UserDescriptionEntity? description}) = _$_UserEntities;

  factory _UserEntities.fromJson(Map<String, dynamic> json) =
      _$_UserEntities.fromJson;

  @override

  /// Contains details about the user's profile website.
  UserUrlEntity? get url;
  @override

  /// Contains details about URLs, Hashtags, Cashtags, or mentions located
  /// within a user's description.
  UserDescriptionEntity? get description;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntitiesCopyWith<_$_UserEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
