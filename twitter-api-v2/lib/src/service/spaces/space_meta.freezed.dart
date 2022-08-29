// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'space_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpaceMeta _$SpaceMetaFromJson(Map<String, dynamic> json) {
  return _SpaceMeta.fromJson(json);
}

/// @nodoc
mixin _$SpaceMeta {
  /// The number of spaces returned in this request.
  int? get resultCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpaceMetaCopyWith<SpaceMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceMetaCopyWith<$Res> {
  factory $SpaceMetaCopyWith(SpaceMeta value, $Res Function(SpaceMeta) then) =
      _$SpaceMetaCopyWithImpl<$Res>;
  $Res call({int? resultCount});
}

/// @nodoc
class _$SpaceMetaCopyWithImpl<$Res> implements $SpaceMetaCopyWith<$Res> {
  _$SpaceMetaCopyWithImpl(this._value, this._then);

  final SpaceMeta _value;
  // ignore: unused_field
  final $Res Function(SpaceMeta) _then;

  @override
  $Res call({
    Object? resultCount = freezed,
  }) {
    return _then(_value.copyWith(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_SpaceMetaCopyWith<$Res> implements $SpaceMetaCopyWith<$Res> {
  factory _$$_SpaceMetaCopyWith(
          _$_SpaceMeta value, $Res Function(_$_SpaceMeta) then) =
      __$$_SpaceMetaCopyWithImpl<$Res>;
  @override
  $Res call({int? resultCount});
}

/// @nodoc
class __$$_SpaceMetaCopyWithImpl<$Res> extends _$SpaceMetaCopyWithImpl<$Res>
    implements _$$_SpaceMetaCopyWith<$Res> {
  __$$_SpaceMetaCopyWithImpl(
      _$_SpaceMeta _value, $Res Function(_$_SpaceMeta) _then)
      : super(_value, (v) => _then(v as _$_SpaceMeta));

  @override
  _$_SpaceMeta get _value => super._value as _$_SpaceMeta;

  @override
  $Res call({
    Object? resultCount = freezed,
  }) {
    return _then(_$_SpaceMeta(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpaceMeta implements _SpaceMeta {
  const _$_SpaceMeta({required this.resultCount});

  factory _$_SpaceMeta.fromJson(Map<String, dynamic> json) =>
      _$$_SpaceMetaFromJson(json);

  /// The number of spaces returned in this request.
  @override
  final int? resultCount;

  @override
  String toString() {
    return 'SpaceMeta(resultCount: $resultCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpaceMeta &&
            const DeepCollectionEquality()
                .equals(other.resultCount, resultCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(resultCount));

  @JsonKey(ignore: true)
  @override
  _$$_SpaceMetaCopyWith<_$_SpaceMeta> get copyWith =>
      __$$_SpaceMetaCopyWithImpl<_$_SpaceMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpaceMetaToJson(
      this,
    );
  }
}

abstract class _SpaceMeta implements SpaceMeta {
  const factory _SpaceMeta({required final int? resultCount}) = _$_SpaceMeta;

  factory _SpaceMeta.fromJson(Map<String, dynamic> json) =
      _$_SpaceMeta.fromJson;

  @override

  /// The number of spaces returned in this request.
  int? get resultCount;
  @override
  @JsonKey(ignore: true)
  _$$_SpaceMetaCopyWith<_$_SpaceMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
