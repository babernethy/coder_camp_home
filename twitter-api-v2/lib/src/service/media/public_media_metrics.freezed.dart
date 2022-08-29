// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'public_media_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublicMediaMetrics _$PublicMediaMetricsFromJson(Map<String, dynamic> json) {
  return _PublicMediaMetrics.fromJson(json);
}

/// @nodoc
mixin _$PublicMediaMetrics {
  /// A count of how many times the video included in the Tweet has been
  /// viewed.
  ///
  /// This is the number of video views aggregated across all Tweets in which
  /// the given video has been posted. That means that the metric includes
  /// the combined views from any instance where the video has been Retweeted
  /// or re-posted in separate Tweets.
  int get viewCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicMediaMetricsCopyWith<PublicMediaMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicMediaMetricsCopyWith<$Res> {
  factory $PublicMediaMetricsCopyWith(
          PublicMediaMetrics value, $Res Function(PublicMediaMetrics) then) =
      _$PublicMediaMetricsCopyWithImpl<$Res>;
  $Res call({int viewCount});
}

/// @nodoc
class _$PublicMediaMetricsCopyWithImpl<$Res>
    implements $PublicMediaMetricsCopyWith<$Res> {
  _$PublicMediaMetricsCopyWithImpl(this._value, this._then);

  final PublicMediaMetrics _value;
  // ignore: unused_field
  final $Res Function(PublicMediaMetrics) _then;

  @override
  $Res call({
    Object? viewCount = freezed,
  }) {
    return _then(_value.copyWith(
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PublicMediaMetricsCopyWith<$Res>
    implements $PublicMediaMetricsCopyWith<$Res> {
  factory _$$_PublicMediaMetricsCopyWith(_$_PublicMediaMetrics value,
          $Res Function(_$_PublicMediaMetrics) then) =
      __$$_PublicMediaMetricsCopyWithImpl<$Res>;
  @override
  $Res call({int viewCount});
}

/// @nodoc
class __$$_PublicMediaMetricsCopyWithImpl<$Res>
    extends _$PublicMediaMetricsCopyWithImpl<$Res>
    implements _$$_PublicMediaMetricsCopyWith<$Res> {
  __$$_PublicMediaMetricsCopyWithImpl(
      _$_PublicMediaMetrics _value, $Res Function(_$_PublicMediaMetrics) _then)
      : super(_value, (v) => _then(v as _$_PublicMediaMetrics));

  @override
  _$_PublicMediaMetrics get _value => super._value as _$_PublicMediaMetrics;

  @override
  $Res call({
    Object? viewCount = freezed,
  }) {
    return _then(_$_PublicMediaMetrics(
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PublicMediaMetrics implements _PublicMediaMetrics {
  const _$_PublicMediaMetrics({required this.viewCount});

  factory _$_PublicMediaMetrics.fromJson(Map<String, dynamic> json) =>
      _$$_PublicMediaMetricsFromJson(json);

  /// A count of how many times the video included in the Tweet has been
  /// viewed.
  ///
  /// This is the number of video views aggregated across all Tweets in which
  /// the given video has been posted. That means that the metric includes
  /// the combined views from any instance where the video has been Retweeted
  /// or re-posted in separate Tweets.
  @override
  final int viewCount;

  @override
  String toString() {
    return 'PublicMediaMetrics(viewCount: $viewCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublicMediaMetrics &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(viewCount));

  @JsonKey(ignore: true)
  @override
  _$$_PublicMediaMetricsCopyWith<_$_PublicMediaMetrics> get copyWith =>
      __$$_PublicMediaMetricsCopyWithImpl<_$_PublicMediaMetrics>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublicMediaMetricsToJson(
      this,
    );
  }
}

abstract class _PublicMediaMetrics implements PublicMediaMetrics {
  const factory _PublicMediaMetrics({required final int viewCount}) =
      _$_PublicMediaMetrics;

  factory _PublicMediaMetrics.fromJson(Map<String, dynamic> json) =
      _$_PublicMediaMetrics.fromJson;

  @override

  /// A count of how many times the video included in the Tweet has been
  /// viewed.
  ///
  /// This is the number of video views aggregated across all Tweets in which
  /// the given video has been posted. That means that the metric includes
  /// the combined views from any instance where the video has been Retweeted
  /// or re-posted in separate Tweets.
  int get viewCount;
  @override
  @JsonKey(ignore: true)
  _$$_PublicMediaMetricsCopyWith<_$_PublicMediaMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
