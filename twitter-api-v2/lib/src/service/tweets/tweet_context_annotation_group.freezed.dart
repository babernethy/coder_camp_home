// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_context_annotation_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetContextAnnotationGroup _$TweetContextAnnotationGroupFromJson(
    Map<String, dynamic> json) {
  return _TweetContextAnnotationGroup.fromJson(json);
}

/// @nodoc
mixin _$TweetContextAnnotationGroup {
  /// Contains elements which identify detailed information regarding the
  /// domain classification based on Tweet text.
  TweetContextAnnotation get domain => throw _privateConstructorUsedError;

  /// Contains elements which identify detailed information regarding the
  /// entity classification bases on Tweet text.
  TweetContextAnnotation get entity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetContextAnnotationGroupCopyWith<TweetContextAnnotationGroup>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetContextAnnotationGroupCopyWith<$Res> {
  factory $TweetContextAnnotationGroupCopyWith(
          TweetContextAnnotationGroup value,
          $Res Function(TweetContextAnnotationGroup) then) =
      _$TweetContextAnnotationGroupCopyWithImpl<$Res>;
  $Res call({TweetContextAnnotation domain, TweetContextAnnotation entity});

  $TweetContextAnnotationCopyWith<$Res> get domain;
  $TweetContextAnnotationCopyWith<$Res> get entity;
}

/// @nodoc
class _$TweetContextAnnotationGroupCopyWithImpl<$Res>
    implements $TweetContextAnnotationGroupCopyWith<$Res> {
  _$TweetContextAnnotationGroupCopyWithImpl(this._value, this._then);

  final TweetContextAnnotationGroup _value;
  // ignore: unused_field
  final $Res Function(TweetContextAnnotationGroup) _then;

  @override
  $Res call({
    Object? domain = freezed,
    Object? entity = freezed,
  }) {
    return _then(_value.copyWith(
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as TweetContextAnnotation,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as TweetContextAnnotation,
    ));
  }

  @override
  $TweetContextAnnotationCopyWith<$Res> get domain {
    return $TweetContextAnnotationCopyWith<$Res>(_value.domain, (value) {
      return _then(_value.copyWith(domain: value));
    });
  }

  @override
  $TweetContextAnnotationCopyWith<$Res> get entity {
    return $TweetContextAnnotationCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc
abstract class _$$_TweetContextAnnotationGroupCopyWith<$Res>
    implements $TweetContextAnnotationGroupCopyWith<$Res> {
  factory _$$_TweetContextAnnotationGroupCopyWith(
          _$_TweetContextAnnotationGroup value,
          $Res Function(_$_TweetContextAnnotationGroup) then) =
      __$$_TweetContextAnnotationGroupCopyWithImpl<$Res>;
  @override
  $Res call({TweetContextAnnotation domain, TweetContextAnnotation entity});

  @override
  $TweetContextAnnotationCopyWith<$Res> get domain;
  @override
  $TweetContextAnnotationCopyWith<$Res> get entity;
}

/// @nodoc
class __$$_TweetContextAnnotationGroupCopyWithImpl<$Res>
    extends _$TweetContextAnnotationGroupCopyWithImpl<$Res>
    implements _$$_TweetContextAnnotationGroupCopyWith<$Res> {
  __$$_TweetContextAnnotationGroupCopyWithImpl(
      _$_TweetContextAnnotationGroup _value,
      $Res Function(_$_TweetContextAnnotationGroup) _then)
      : super(_value, (v) => _then(v as _$_TweetContextAnnotationGroup));

  @override
  _$_TweetContextAnnotationGroup get _value =>
      super._value as _$_TweetContextAnnotationGroup;

  @override
  $Res call({
    Object? domain = freezed,
    Object? entity = freezed,
  }) {
    return _then(_$_TweetContextAnnotationGroup(
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as TweetContextAnnotation,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as TweetContextAnnotation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetContextAnnotationGroup implements _TweetContextAnnotationGroup {
  const _$_TweetContextAnnotationGroup(
      {required this.domain, required this.entity});

  factory _$_TweetContextAnnotationGroup.fromJson(Map<String, dynamic> json) =>
      _$$_TweetContextAnnotationGroupFromJson(json);

  /// Contains elements which identify detailed information regarding the
  /// domain classification based on Tweet text.
  @override
  final TweetContextAnnotation domain;

  /// Contains elements which identify detailed information regarding the
  /// entity classification bases on Tweet text.
  @override
  final TweetContextAnnotation entity;

  @override
  String toString() {
    return 'TweetContextAnnotationGroup(domain: $domain, entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetContextAnnotationGroup &&
            const DeepCollectionEquality().equals(other.domain, domain) &&
            const DeepCollectionEquality().equals(other.entity, entity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(domain),
      const DeepCollectionEquality().hash(entity));

  @JsonKey(ignore: true)
  @override
  _$$_TweetContextAnnotationGroupCopyWith<_$_TweetContextAnnotationGroup>
      get copyWith => __$$_TweetContextAnnotationGroupCopyWithImpl<
          _$_TweetContextAnnotationGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetContextAnnotationGroupToJson(
      this,
    );
  }
}

abstract class _TweetContextAnnotationGroup
    implements TweetContextAnnotationGroup {
  const factory _TweetContextAnnotationGroup(
          {required final TweetContextAnnotation domain,
          required final TweetContextAnnotation entity}) =
      _$_TweetContextAnnotationGroup;

  factory _TweetContextAnnotationGroup.fromJson(Map<String, dynamic> json) =
      _$_TweetContextAnnotationGroup.fromJson;

  @override

  /// Contains elements which identify detailed information regarding the
  /// domain classification based on Tweet text.
  TweetContextAnnotation get domain;
  @override

  /// Contains elements which identify detailed information regarding the
  /// entity classification bases on Tweet text.
  TweetContextAnnotation get entity;
  @override
  @JsonKey(ignore: true)
  _$$_TweetContextAnnotationGroupCopyWith<_$_TweetContextAnnotationGroup>
      get copyWith => throw _privateConstructorUsedError;
}
