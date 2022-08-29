// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_count_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetCountData _$TweetCountDataFromJson(Map<String, dynamic> json) {
  return _TweetCountData.fromJson(json);
}

/// @nodoc
mixin _$TweetCountData {
  /// Start time for the granularity.
  DateTime get start => throw _privateConstructorUsedError;

  /// End time for the granularity.
  DateTime get end => throw _privateConstructorUsedError;

  /// Count of the volume of Tweets that match the query.
  @JsonKey(name: 'tweet_count')
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetCountDataCopyWith<TweetCountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCountDataCopyWith<$Res> {
  factory $TweetCountDataCopyWith(
          TweetCountData value, $Res Function(TweetCountData) then) =
      _$TweetCountDataCopyWithImpl<$Res>;
  $Res call(
      {DateTime start, DateTime end, @JsonKey(name: 'tweet_count') int count});
}

/// @nodoc
class _$TweetCountDataCopyWithImpl<$Res>
    implements $TweetCountDataCopyWith<$Res> {
  _$TweetCountDataCopyWithImpl(this._value, this._then);

  final TweetCountData _value;
  // ignore: unused_field
  final $Res Function(TweetCountData) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetCountDataCopyWith<$Res>
    implements $TweetCountDataCopyWith<$Res> {
  factory _$$_TweetCountDataCopyWith(
          _$_TweetCountData value, $Res Function(_$_TweetCountData) then) =
      __$$_TweetCountDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime start, DateTime end, @JsonKey(name: 'tweet_count') int count});
}

/// @nodoc
class __$$_TweetCountDataCopyWithImpl<$Res>
    extends _$TweetCountDataCopyWithImpl<$Res>
    implements _$$_TweetCountDataCopyWith<$Res> {
  __$$_TweetCountDataCopyWithImpl(
      _$_TweetCountData _value, $Res Function(_$_TweetCountData) _then)
      : super(_value, (v) => _then(v as _$_TweetCountData));

  @override
  _$_TweetCountData get _value => super._value as _$_TweetCountData;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_TweetCountData(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetCountData implements _TweetCountData {
  const _$_TweetCountData(
      {required this.start,
      required this.end,
      @JsonKey(name: 'tweet_count') required this.count});

  factory _$_TweetCountData.fromJson(Map<String, dynamic> json) =>
      _$$_TweetCountDataFromJson(json);

  /// Start time for the granularity.
  @override
  final DateTime start;

  /// End time for the granularity.
  @override
  final DateTime end;

  /// Count of the volume of Tweets that match the query.
  @override
  @JsonKey(name: 'tweet_count')
  final int count;

  @override
  String toString() {
    return 'TweetCountData(start: $start, end: $end, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetCountData &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_TweetCountDataCopyWith<_$_TweetCountData> get copyWith =>
      __$$_TweetCountDataCopyWithImpl<_$_TweetCountData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetCountDataToJson(
      this,
    );
  }
}

abstract class _TweetCountData implements TweetCountData {
  const factory _TweetCountData(
          {required final DateTime start,
          required final DateTime end,
          @JsonKey(name: 'tweet_count') required final int count}) =
      _$_TweetCountData;

  factory _TweetCountData.fromJson(Map<String, dynamic> json) =
      _$_TweetCountData.fromJson;

  @override

  /// Start time for the granularity.
  DateTime get start;
  @override

  /// End time for the granularity.
  DateTime get end;
  @override

  /// Count of the volume of Tweets that match the query.
  @JsonKey(name: 'tweet_count')
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_TweetCountDataCopyWith<_$_TweetCountData> get copyWith =>
      throw _privateConstructorUsedError;
}
