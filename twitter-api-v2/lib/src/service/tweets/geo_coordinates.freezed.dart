// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoCoordinates _$GeoCoordinatesFromJson(Map<String, dynamic> json) {
  return _GeoCoordinates.fromJson(json);
}

/// @nodoc
mixin _$GeoCoordinates {
  /// Describes the type of coordinate. The only value supported at present
  /// is Point.
  String get type => throw _privateConstructorUsedError;

  /// A pair of decimal values representing the precise location of the user
  /// (latitude, longitude). This value be `null` unless the user explicitly
  /// shared their precise location.
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCoordinatesCopyWith<GeoCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCoordinatesCopyWith<$Res> {
  factory $GeoCoordinatesCopyWith(
          GeoCoordinates value, $Res Function(GeoCoordinates) then) =
      _$GeoCoordinatesCopyWithImpl<$Res>;
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$GeoCoordinatesCopyWithImpl<$Res>
    implements $GeoCoordinatesCopyWith<$Res> {
  _$GeoCoordinatesCopyWithImpl(this._value, this._then);

  final GeoCoordinates _value;
  // ignore: unused_field
  final $Res Function(GeoCoordinates) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
abstract class _$$_GeoCoordinatesCopyWith<$Res>
    implements $GeoCoordinatesCopyWith<$Res> {
  factory _$$_GeoCoordinatesCopyWith(
          _$_GeoCoordinates value, $Res Function(_$_GeoCoordinates) then) =
      __$$_GeoCoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$_GeoCoordinatesCopyWithImpl<$Res>
    extends _$GeoCoordinatesCopyWithImpl<$Res>
    implements _$$_GeoCoordinatesCopyWith<$Res> {
  __$$_GeoCoordinatesCopyWithImpl(
      _$_GeoCoordinates _value, $Res Function(_$_GeoCoordinates) _then)
      : super(_value, (v) => _then(v as _$_GeoCoordinates));

  @override
  _$_GeoCoordinates get _value => super._value as _$_GeoCoordinates;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_GeoCoordinates(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoCoordinates implements _GeoCoordinates {
  const _$_GeoCoordinates(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$_GeoCoordinates.fromJson(Map<String, dynamic> json) =>
      _$$_GeoCoordinatesFromJson(json);

  /// Describes the type of coordinate. The only value supported at present
  /// is Point.
  @override
  final String type;

  /// A pair of decimal values representing the precise location of the user
  /// (latitude, longitude). This value be `null` unless the user explicitly
  /// shared their precise location.
  final List<double> _coordinates;

  /// A pair of decimal values representing the precise location of the user
  /// (latitude, longitude). This value be `null` unless the user explicitly
  /// shared their precise location.
  @override
  List<double> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'GeoCoordinates(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoCoordinates &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  _$$_GeoCoordinatesCopyWith<_$_GeoCoordinates> get copyWith =>
      __$$_GeoCoordinatesCopyWithImpl<_$_GeoCoordinates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoCoordinatesToJson(
      this,
    );
  }
}

abstract class _GeoCoordinates implements GeoCoordinates {
  const factory _GeoCoordinates(
      {required final String type,
      required final List<double> coordinates}) = _$_GeoCoordinates;

  factory _GeoCoordinates.fromJson(Map<String, dynamic> json) =
      _$_GeoCoordinates.fromJson;

  @override

  /// Describes the type of coordinate. The only value supported at present
  /// is Point.
  String get type;
  @override

  /// A pair of decimal values representing the precise location of the user
  /// (latitude, longitude). This value be `null` unless the user explicitly
  /// shared their precise location.
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_GeoCoordinatesCopyWith<_$_GeoCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
