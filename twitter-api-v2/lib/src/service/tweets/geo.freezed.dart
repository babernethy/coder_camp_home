// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Geo _$GeoFromJson(Map<String, dynamic> json) {
  return _Geo.fromJson(json);
}

/// @nodoc
mixin _$Geo {
  /// The unique identifier of the place, if this is a point of interest
  /// tagged in the Tweet.
  ///
  /// You can obtain the expanded object in includes.places by adding
  /// `TweetExpansion.geoPlaceId` in the request's query parameter.
  String? get placeId => throw _privateConstructorUsedError;

  /// Contains details about the coordinates of the location tagged by the
  /// user in this Tweet, if they specified one.
  GeoCoordinates? get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCopyWith<Geo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCopyWith<$Res> {
  factory $GeoCopyWith(Geo value, $Res Function(Geo) then) =
      _$GeoCopyWithImpl<$Res>;
  $Res call({String? placeId, GeoCoordinates? coordinates});

  $GeoCoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$GeoCopyWithImpl<$Res> implements $GeoCopyWith<$Res> {
  _$GeoCopyWithImpl(this._value, this._then);

  final Geo _value;
  // ignore: unused_field
  final $Res Function(Geo) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as GeoCoordinates?,
    ));
  }

  @override
  $GeoCoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $GeoCoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$$_GeoCopyWith<$Res> implements $GeoCopyWith<$Res> {
  factory _$$_GeoCopyWith(_$_Geo value, $Res Function(_$_Geo) then) =
      __$$_GeoCopyWithImpl<$Res>;
  @override
  $Res call({String? placeId, GeoCoordinates? coordinates});

  @override
  $GeoCoordinatesCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$_GeoCopyWithImpl<$Res> extends _$GeoCopyWithImpl<$Res>
    implements _$$_GeoCopyWith<$Res> {
  __$$_GeoCopyWithImpl(_$_Geo _value, $Res Function(_$_Geo) _then)
      : super(_value, (v) => _then(v as _$_Geo));

  @override
  _$_Geo get _value => super._value as _$_Geo;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_Geo(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as GeoCoordinates?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geo implements _Geo {
  const _$_Geo({this.placeId, this.coordinates});

  factory _$_Geo.fromJson(Map<String, dynamic> json) => _$$_GeoFromJson(json);

  /// The unique identifier of the place, if this is a point of interest
  /// tagged in the Tweet.
  ///
  /// You can obtain the expanded object in includes.places by adding
  /// `TweetExpansion.geoPlaceId` in the request's query parameter.
  @override
  final String? placeId;

  /// Contains details about the coordinates of the location tagged by the
  /// user in this Tweet, if they specified one.
  @override
  final GeoCoordinates? coordinates;

  @override
  String toString() {
    return 'Geo(placeId: $placeId, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Geo &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(coordinates));

  @JsonKey(ignore: true)
  @override
  _$$_GeoCopyWith<_$_Geo> get copyWith =>
      __$$_GeoCopyWithImpl<_$_Geo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoToJson(
      this,
    );
  }
}

abstract class _Geo implements Geo {
  const factory _Geo(
      {final String? placeId, final GeoCoordinates? coordinates}) = _$_Geo;

  factory _Geo.fromJson(Map<String, dynamic> json) = _$_Geo.fromJson;

  @override

  /// The unique identifier of the place, if this is a point of interest
  /// tagged in the Tweet.
  ///
  /// You can obtain the expanded object in includes.places by adding
  /// `TweetExpansion.geoPlaceId` in the request's query parameter.
  String? get placeId;
  @override

  /// Contains details about the coordinates of the location tagged by the
  /// user in this Tweet, if they specified one.
  GeoCoordinates? get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_GeoCopyWith<_$_Geo> get copyWith => throw _privateConstructorUsedError;
}
