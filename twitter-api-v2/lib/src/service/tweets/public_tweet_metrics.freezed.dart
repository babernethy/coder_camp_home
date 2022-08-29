// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'public_tweet_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublicTweetMetrics _$PublicTweetMetricsFromJson(Map<String, dynamic> json) {
  return _PublicTweetMetrics.fromJson(json);
}

/// @nodoc
mixin _$PublicTweetMetrics {
  /// Number of Likes of this Tweet.
  int get likeCount => throw _privateConstructorUsedError;

  /// Number of times this Tweet has been Retweeted.
  int get retweetCount => throw _privateConstructorUsedError;

  /// Number of Replies of this Tweet.
  int get replyCount => throw _privateConstructorUsedError;

  /// Number of times this Tweet has been Retweeted with a comment
  /// (also known as Quote).
  int get quoteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicTweetMetricsCopyWith<PublicTweetMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicTweetMetricsCopyWith<$Res> {
  factory $PublicTweetMetricsCopyWith(
          PublicTweetMetrics value, $Res Function(PublicTweetMetrics) then) =
      _$PublicTweetMetricsCopyWithImpl<$Res>;
  $Res call({int likeCount, int retweetCount, int replyCount, int quoteCount});
}

/// @nodoc
class _$PublicTweetMetricsCopyWithImpl<$Res>
    implements $PublicTweetMetricsCopyWith<$Res> {
  _$PublicTweetMetricsCopyWithImpl(this._value, this._then);

  final PublicTweetMetrics _value;
  // ignore: unused_field
  final $Res Function(PublicTweetMetrics) _then;

  @override
  $Res call({
    Object? likeCount = freezed,
    Object? retweetCount = freezed,
    Object? replyCount = freezed,
    Object? quoteCount = freezed,
  }) {
    return _then(_value.copyWith(
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      retweetCount: retweetCount == freezed
          ? _value.retweetCount
          : retweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      quoteCount: quoteCount == freezed
          ? _value.quoteCount
          : quoteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PublicTweetMetricsCopyWith<$Res>
    implements $PublicTweetMetricsCopyWith<$Res> {
  factory _$$_PublicTweetMetricsCopyWith(_$_PublicTweetMetrics value,
          $Res Function(_$_PublicTweetMetrics) then) =
      __$$_PublicTweetMetricsCopyWithImpl<$Res>;
  @override
  $Res call({int likeCount, int retweetCount, int replyCount, int quoteCount});
}

/// @nodoc
class __$$_PublicTweetMetricsCopyWithImpl<$Res>
    extends _$PublicTweetMetricsCopyWithImpl<$Res>
    implements _$$_PublicTweetMetricsCopyWith<$Res> {
  __$$_PublicTweetMetricsCopyWithImpl(
      _$_PublicTweetMetrics _value, $Res Function(_$_PublicTweetMetrics) _then)
      : super(_value, (v) => _then(v as _$_PublicTweetMetrics));

  @override
  _$_PublicTweetMetrics get _value => super._value as _$_PublicTweetMetrics;

  @override
  $Res call({
    Object? likeCount = freezed,
    Object? retweetCount = freezed,
    Object? replyCount = freezed,
    Object? quoteCount = freezed,
  }) {
    return _then(_$_PublicTweetMetrics(
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      retweetCount: retweetCount == freezed
          ? _value.retweetCount
          : retweetCount // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      quoteCount: quoteCount == freezed
          ? _value.quoteCount
          : quoteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PublicTweetMetrics implements _PublicTweetMetrics {
  const _$_PublicTweetMetrics(
      {required this.likeCount,
      required this.retweetCount,
      required this.replyCount,
      required this.quoteCount});

  factory _$_PublicTweetMetrics.fromJson(Map<String, dynamic> json) =>
      _$$_PublicTweetMetricsFromJson(json);

  /// Number of Likes of this Tweet.
  @override
  final int likeCount;

  /// Number of times this Tweet has been Retweeted.
  @override
  final int retweetCount;

  /// Number of Replies of this Tweet.
  @override
  final int replyCount;

  /// Number of times this Tweet has been Retweeted with a comment
  /// (also known as Quote).
  @override
  final int quoteCount;

  @override
  String toString() {
    return 'PublicTweetMetrics(likeCount: $likeCount, retweetCount: $retweetCount, replyCount: $replyCount, quoteCount: $quoteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublicTweetMetrics &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.retweetCount, retweetCount) &&
            const DeepCollectionEquality()
                .equals(other.replyCount, replyCount) &&
            const DeepCollectionEquality()
                .equals(other.quoteCount, quoteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(likeCount),
      const DeepCollectionEquality().hash(retweetCount),
      const DeepCollectionEquality().hash(replyCount),
      const DeepCollectionEquality().hash(quoteCount));

  @JsonKey(ignore: true)
  @override
  _$$_PublicTweetMetricsCopyWith<_$_PublicTweetMetrics> get copyWith =>
      __$$_PublicTweetMetricsCopyWithImpl<_$_PublicTweetMetrics>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublicTweetMetricsToJson(
      this,
    );
  }
}

abstract class _PublicTweetMetrics implements PublicTweetMetrics {
  const factory _PublicTweetMetrics(
      {required final int likeCount,
      required final int retweetCount,
      required final int replyCount,
      required final int quoteCount}) = _$_PublicTweetMetrics;

  factory _PublicTweetMetrics.fromJson(Map<String, dynamic> json) =
      _$_PublicTweetMetrics.fromJson;

  @override

  /// Number of Likes of this Tweet.
  int get likeCount;
  @override

  /// Number of times this Tweet has been Retweeted.
  int get retweetCount;
  @override

  /// Number of Replies of this Tweet.
  int get replyCount;
  @override

  /// Number of times this Tweet has been Retweeted with a comment
  /// (also known as Quote).
  int get quoteCount;
  @override
  @JsonKey(ignore: true)
  _$$_PublicTweetMetricsCopyWith<_$_PublicTweetMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
