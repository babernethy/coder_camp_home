// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'organic_media_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganicMediaMetrics _$OrganicMediaMetricsFromJson(Map<String, dynamic> json) {
  return _OrganicMediaMetrics.fromJson(json);
}

/// @nodoc
mixin _$OrganicMediaMetrics {
  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_0_count')
  int get playback0Count => throw _privateConstructorUsedError;

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_25_count')
  int get playback25Count => throw _privateConstructorUsedError;

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_50_count')
  int get playback50Count => throw _privateConstructorUsedError;

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_75_count')
  int get playback75Count => throw _privateConstructorUsedError;

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_100_count')
  int get playback100Count => throw _privateConstructorUsedError;

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
  $OrganicMediaMetricsCopyWith<OrganicMediaMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganicMediaMetricsCopyWith<$Res> {
  factory $OrganicMediaMetricsCopyWith(
          OrganicMediaMetrics value, $Res Function(OrganicMediaMetrics) then) =
      _$OrganicMediaMetricsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'playback_0_count') int playback0Count,
      @JsonKey(name: 'playback_25_count') int playback25Count,
      @JsonKey(name: 'playback_50_count') int playback50Count,
      @JsonKey(name: 'playback_75_count') int playback75Count,
      @JsonKey(name: 'playback_100_count') int playback100Count,
      int viewCount});
}

/// @nodoc
class _$OrganicMediaMetricsCopyWithImpl<$Res>
    implements $OrganicMediaMetricsCopyWith<$Res> {
  _$OrganicMediaMetricsCopyWithImpl(this._value, this._then);

  final OrganicMediaMetrics _value;
  // ignore: unused_field
  final $Res Function(OrganicMediaMetrics) _then;

  @override
  $Res call({
    Object? playback0Count = freezed,
    Object? playback25Count = freezed,
    Object? playback50Count = freezed,
    Object? playback75Count = freezed,
    Object? playback100Count = freezed,
    Object? viewCount = freezed,
  }) {
    return _then(_value.copyWith(
      playback0Count: playback0Count == freezed
          ? _value.playback0Count
          : playback0Count // ignore: cast_nullable_to_non_nullable
              as int,
      playback25Count: playback25Count == freezed
          ? _value.playback25Count
          : playback25Count // ignore: cast_nullable_to_non_nullable
              as int,
      playback50Count: playback50Count == freezed
          ? _value.playback50Count
          : playback50Count // ignore: cast_nullable_to_non_nullable
              as int,
      playback75Count: playback75Count == freezed
          ? _value.playback75Count
          : playback75Count // ignore: cast_nullable_to_non_nullable
              as int,
      playback100Count: playback100Count == freezed
          ? _value.playback100Count
          : playback100Count // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_OrganicMediaMetricsCopyWith<$Res>
    implements $OrganicMediaMetricsCopyWith<$Res> {
  factory _$$_OrganicMediaMetricsCopyWith(_$_OrganicMediaMetrics value,
          $Res Function(_$_OrganicMediaMetrics) then) =
      __$$_OrganicMediaMetricsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'playback_0_count') int playback0Count,
      @JsonKey(name: 'playback_25_count') int playback25Count,
      @JsonKey(name: 'playback_50_count') int playback50Count,
      @JsonKey(name: 'playback_75_count') int playback75Count,
      @JsonKey(name: 'playback_100_count') int playback100Count,
      int viewCount});
}

/// @nodoc
class __$$_OrganicMediaMetricsCopyWithImpl<$Res>
    extends _$OrganicMediaMetricsCopyWithImpl<$Res>
    implements _$$_OrganicMediaMetricsCopyWith<$Res> {
  __$$_OrganicMediaMetricsCopyWithImpl(_$_OrganicMediaMetrics _value,
      $Res Function(_$_OrganicMediaMetrics) _then)
      : super(_value, (v) => _then(v as _$_OrganicMediaMetrics));

  @override
  _$_OrganicMediaMetrics get _value => super._value as _$_OrganicMediaMetrics;

  @override
  $Res call({
    Object? playback0Count = freezed,
    Object? playback25Count = freezed,
    Object? playback50Count = freezed,
    Object? playback75Count = freezed,
    Object? playback100Count = freezed,
    Object? viewCount = freezed,
  }) {
    return _then(_$_OrganicMediaMetrics(
      playback0Count: playback0Count == freezed
          ? _value.playback0Count
          : playback0Count // ignore: cast_nullable_to_non_nullable
              as int,
      playback25Count: playback25Count == freezed
          ? _value.playback25Count
          : playback25Count // ignore: cast_nullable_to_non_nullable
              as int,
      playback50Count: playback50Count == freezed
          ? _value.playback50Count
          : playback50Count // ignore: cast_nullable_to_non_nullable
              as int,
      playback75Count: playback75Count == freezed
          ? _value.playback75Count
          : playback75Count // ignore: cast_nullable_to_non_nullable
              as int,
      playback100Count: playback100Count == freezed
          ? _value.playback100Count
          : playback100Count // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrganicMediaMetrics implements _OrganicMediaMetrics {
  const _$_OrganicMediaMetrics(
      {@JsonKey(name: 'playback_0_count') required this.playback0Count,
      @JsonKey(name: 'playback_25_count') required this.playback25Count,
      @JsonKey(name: 'playback_50_count') required this.playback50Count,
      @JsonKey(name: 'playback_75_count') required this.playback75Count,
      @JsonKey(name: 'playback_100_count') required this.playback100Count,
      required this.viewCount});

  factory _$_OrganicMediaMetrics.fromJson(Map<String, dynamic> json) =>
      _$$_OrganicMediaMetricsFromJson(json);

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @override
  @JsonKey(name: 'playback_0_count')
  final int playback0Count;

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @override
  @JsonKey(name: 'playback_25_count')
  final int playback25Count;

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @override
  @JsonKey(name: 'playback_50_count')
  final int playback50Count;

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @override
  @JsonKey(name: 'playback_75_count')
  final int playback75Count;

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @override
  @JsonKey(name: 'playback_100_count')
  final int playback100Count;

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
    return 'OrganicMediaMetrics(playback0Count: $playback0Count, playback25Count: $playback25Count, playback50Count: $playback50Count, playback75Count: $playback75Count, playback100Count: $playback100Count, viewCount: $viewCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganicMediaMetrics &&
            const DeepCollectionEquality()
                .equals(other.playback0Count, playback0Count) &&
            const DeepCollectionEquality()
                .equals(other.playback25Count, playback25Count) &&
            const DeepCollectionEquality()
                .equals(other.playback50Count, playback50Count) &&
            const DeepCollectionEquality()
                .equals(other.playback75Count, playback75Count) &&
            const DeepCollectionEquality()
                .equals(other.playback100Count, playback100Count) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(playback0Count),
      const DeepCollectionEquality().hash(playback25Count),
      const DeepCollectionEquality().hash(playback50Count),
      const DeepCollectionEquality().hash(playback75Count),
      const DeepCollectionEquality().hash(playback100Count),
      const DeepCollectionEquality().hash(viewCount));

  @JsonKey(ignore: true)
  @override
  _$$_OrganicMediaMetricsCopyWith<_$_OrganicMediaMetrics> get copyWith =>
      __$$_OrganicMediaMetricsCopyWithImpl<_$_OrganicMediaMetrics>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganicMediaMetricsToJson(
      this,
    );
  }
}

abstract class _OrganicMediaMetrics implements OrganicMediaMetrics {
  const factory _OrganicMediaMetrics(
      {@JsonKey(name: 'playback_0_count') required final int playback0Count,
      @JsonKey(name: 'playback_25_count') required final int playback25Count,
      @JsonKey(name: 'playback_50_count') required final int playback50Count,
      @JsonKey(name: 'playback_75_count') required final int playback75Count,
      @JsonKey(name: 'playback_100_count') required final int playback100Count,
      required final int viewCount}) = _$_OrganicMediaMetrics;

  factory _OrganicMediaMetrics.fromJson(Map<String, dynamic> json) =
      _$_OrganicMediaMetrics.fromJson;

  @override

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_0_count')
  int get playback0Count;
  @override

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_25_count')
  int get playback25Count;
  @override

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_50_count')
  int get playback50Count;
  @override

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_75_count')
  int get playback75Count;
  @override

  /// The number of users who played through to each quartile in a video.
  ///
  /// This reflects the number of quartile views across all Tweets in which
  /// the given video has been posted.
  @JsonKey(name: 'playback_100_count')
  int get playback100Count;
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
  _$$_OrganicMediaMetricsCopyWith<_$_OrganicMediaMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
