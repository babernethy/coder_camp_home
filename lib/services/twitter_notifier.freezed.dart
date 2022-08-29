// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twitter_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TwitterState {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  List<TweetData>? get tweets => throw _privateConstructorUsedError;
  UserData? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwitterStateCopyWith<TwitterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterStateCopyWith<$Res> {
  factory $TwitterStateCopyWith(
          TwitterState value, $Res Function(TwitterState) then) =
      _$TwitterStateCopyWithImpl<$Res>;
  $Res call(
      {String? accessToken,
      String? refreshToken,
      List<TweetData>? tweets,
      UserData? user});

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$TwitterStateCopyWithImpl<$Res> implements $TwitterStateCopyWith<$Res> {
  _$TwitterStateCopyWithImpl(this._value, this._then);

  final TwitterState _value;
  // ignore: unused_field
  final $Res Function(TwitterState) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? tweets = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tweets: tweets == freezed
          ? _value.tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetData>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }

  @override
  $UserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_TwitterStateCopyWith<$Res>
    implements $TwitterStateCopyWith<$Res> {
  factory _$$_TwitterStateCopyWith(
          _$_TwitterState value, $Res Function(_$_TwitterState) then) =
      __$$_TwitterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? accessToken,
      String? refreshToken,
      List<TweetData>? tweets,
      UserData? user});

  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_TwitterStateCopyWithImpl<$Res>
    extends _$TwitterStateCopyWithImpl<$Res>
    implements _$$_TwitterStateCopyWith<$Res> {
  __$$_TwitterStateCopyWithImpl(
      _$_TwitterState _value, $Res Function(_$_TwitterState) _then)
      : super(_value, (v) => _then(v as _$_TwitterState));

  @override
  _$_TwitterState get _value => super._value as _$_TwitterState;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? tweets = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_TwitterState(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tweets: tweets == freezed
          ? _value._tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetData>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc

class _$_TwitterState implements _TwitterState {
  _$_TwitterState(
      {this.accessToken,
      this.refreshToken,
      final List<TweetData>? tweets,
      this.user})
      : _tweets = tweets;

  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  final List<TweetData>? _tweets;
  @override
  List<TweetData>? get tweets {
    final value = _tweets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserData? user;

  @override
  String toString() {
    return 'TwitterState(accessToken: $accessToken, refreshToken: $refreshToken, tweets: $tweets, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitterState &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality().equals(other._tweets, _tweets) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(_tweets),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_TwitterStateCopyWith<_$_TwitterState> get copyWith =>
      __$$_TwitterStateCopyWithImpl<_$_TwitterState>(this, _$identity);
}

abstract class _TwitterState implements TwitterState {
  factory _TwitterState(
      {final String? accessToken,
      final String? refreshToken,
      final List<TweetData>? tweets,
      final UserData? user}) = _$_TwitterState;

  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  List<TweetData>? get tweets;
  @override
  UserData? get user;
  @override
  @JsonKey(ignore: true)
  _$$_TwitterStateCopyWith<_$_TwitterState> get copyWith =>
      throw _privateConstructorUsedError;
}
