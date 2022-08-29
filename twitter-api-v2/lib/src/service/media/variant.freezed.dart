// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return _Variant.fromJson(json);
}

/// @nodoc
mixin _$Variant {
  /// The number of bit rates in the content.
  ///
  /// It may be null when content type is `application/x-mpegURL`.
  int? get bitRate => throw _privateConstructorUsedError;

  /// The content type.
  String get contentType => throw _privateConstructorUsedError;

  /// The url to the content.
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res>;
  $Res call({int? bitRate, String contentType, String url});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res> implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  final Variant _value;
  // ignore: unused_field
  final $Res Function(Variant) _then;

  @override
  $Res call({
    Object? bitRate = freezed,
    Object? contentType = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      bitRate: bitRate == freezed
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VariantCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$_VariantCopyWith(
          _$_Variant value, $Res Function(_$_Variant) then) =
      __$$_VariantCopyWithImpl<$Res>;
  @override
  $Res call({int? bitRate, String contentType, String url});
}

/// @nodoc
class __$$_VariantCopyWithImpl<$Res> extends _$VariantCopyWithImpl<$Res>
    implements _$$_VariantCopyWith<$Res> {
  __$$_VariantCopyWithImpl(_$_Variant _value, $Res Function(_$_Variant) _then)
      : super(_value, (v) => _then(v as _$_Variant));

  @override
  _$_Variant get _value => super._value as _$_Variant;

  @override
  $Res call({
    Object? bitRate = freezed,
    Object? contentType = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Variant(
      bitRate: bitRate == freezed
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Variant implements _Variant {
  const _$_Variant(
      {this.bitRate, required this.contentType, required this.url});

  factory _$_Variant.fromJson(Map<String, dynamic> json) =>
      _$$_VariantFromJson(json);

  /// The number of bit rates in the content.
  ///
  /// It may be null when content type is `application/x-mpegURL`.
  @override
  final int? bitRate;

  /// The content type.
  @override
  final String contentType;

  /// The url to the content.
  @override
  final String url;

  @override
  String toString() {
    return 'Variant(bitRate: $bitRate, contentType: $contentType, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Variant &&
            const DeepCollectionEquality().equals(other.bitRate, bitRate) &&
            const DeepCollectionEquality()
                .equals(other.contentType, contentType) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bitRate),
      const DeepCollectionEquality().hash(contentType),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_VariantCopyWith<_$_Variant> get copyWith =>
      __$$_VariantCopyWithImpl<_$_Variant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantToJson(
      this,
    );
  }
}

abstract class _Variant implements Variant {
  const factory _Variant(
      {final int? bitRate,
      required final String contentType,
      required final String url}) = _$_Variant;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$_Variant.fromJson;

  @override

  /// The number of bit rates in the content.
  ///
  /// It may be null when content type is `application/x-mpegURL`.
  int? get bitRate;
  @override

  /// The content type.
  String get contentType;
  @override

  /// The url to the content.
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_VariantCopyWith<_$_Variant> get copyWith =>
      throw _privateConstructorUsedError;
}
