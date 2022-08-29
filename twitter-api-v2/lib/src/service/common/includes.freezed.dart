// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'includes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Includes _$IncludesFromJson(Map<String, dynamic> json) {
  return _Includes.fromJson(json);
}

/// @nodoc
mixin _$Includes {
  /// This includes a list of referenced Retweets, Quoted Tweets, or replies
  /// in the form of Tweet objects with their default fields and any
  /// additional fields requested using the `tweet.fields` parameter, assuming
  /// there is a referenced Tweet present in the returned Tweet(s).
  List<TweetData>? get tweets => throw _privateConstructorUsedError;

  /// This includes a list of referenced Tweet authors in the form of user
  /// objects with their default fields and any additional fields requested
  /// using the user.fields parameter.
  List<UserData>? get users => throw _privateConstructorUsedError;

  /// This includes a list of images, videos, and GIFs included in Tweets in
  /// the form of media objects with their default fields and any additional
  /// fields requested using the media.fields parameter, assuming there is a
  /// media attachment present in the returned Tweet(s).
  List<MediaData>? get media => throw _privateConstructorUsedError;

  /// This includes a list of referenced places in Tweets in the form of place
  /// objects with their default fields and any additional fields requested
  /// using the place.fields parameter, assuming there is a place present in
  /// the returned Tweet(s).
  List<PlaceData>? get places => throw _privateConstructorUsedError;

  /// This includes a list of polls that are attached to Tweets in the form
  /// of poll objects with their default fields and any additional fields
  /// requested using the poll.fields parameter, assuming there is a poll
  /// present in the returned Tweet(s).
  List<PollData>? get polls => throw _privateConstructorUsedError;

  /// This includes a list of topics that are attached to Spaces in the form
  /// of topic objects with their default fields and any additional fields
  /// requested using the topic.fields parameter, assuming there is a topic
  /// present in the returned Space(s).
  List<TopicData>? get topics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncludesCopyWith<Includes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncludesCopyWith<$Res> {
  factory $IncludesCopyWith(Includes value, $Res Function(Includes) then) =
      _$IncludesCopyWithImpl<$Res>;
  $Res call(
      {List<TweetData>? tweets,
      List<UserData>? users,
      List<MediaData>? media,
      List<PlaceData>? places,
      List<PollData>? polls,
      List<TopicData>? topics});
}

/// @nodoc
class _$IncludesCopyWithImpl<$Res> implements $IncludesCopyWith<$Res> {
  _$IncludesCopyWithImpl(this._value, this._then);

  final Includes _value;
  // ignore: unused_field
  final $Res Function(Includes) _then;

  @override
  $Res call({
    Object? tweets = freezed,
    Object? users = freezed,
    Object? media = freezed,
    Object? places = freezed,
    Object? polls = freezed,
    Object? topics = freezed,
  }) {
    return _then(_value.copyWith(
      tweets: tweets == freezed
          ? _value.tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetData>?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserData>?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaData>?,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceData>?,
      polls: polls == freezed
          ? _value.polls
          : polls // ignore: cast_nullable_to_non_nullable
              as List<PollData>?,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_IncludesCopyWith<$Res> implements $IncludesCopyWith<$Res> {
  factory _$$_IncludesCopyWith(
          _$_Includes value, $Res Function(_$_Includes) then) =
      __$$_IncludesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TweetData>? tweets,
      List<UserData>? users,
      List<MediaData>? media,
      List<PlaceData>? places,
      List<PollData>? polls,
      List<TopicData>? topics});
}

/// @nodoc
class __$$_IncludesCopyWithImpl<$Res> extends _$IncludesCopyWithImpl<$Res>
    implements _$$_IncludesCopyWith<$Res> {
  __$$_IncludesCopyWithImpl(
      _$_Includes _value, $Res Function(_$_Includes) _then)
      : super(_value, (v) => _then(v as _$_Includes));

  @override
  _$_Includes get _value => super._value as _$_Includes;

  @override
  $Res call({
    Object? tweets = freezed,
    Object? users = freezed,
    Object? media = freezed,
    Object? places = freezed,
    Object? polls = freezed,
    Object? topics = freezed,
  }) {
    return _then(_$_Includes(
      tweets: tweets == freezed
          ? _value._tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetData>?,
      users: users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserData>?,
      media: media == freezed
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaData>?,
      places: places == freezed
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceData>?,
      polls: polls == freezed
          ? _value._polls
          : polls // ignore: cast_nullable_to_non_nullable
              as List<PollData>?,
      topics: topics == freezed
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Includes implements _Includes {
  const _$_Includes(
      {final List<TweetData>? tweets,
      final List<UserData>? users,
      final List<MediaData>? media,
      final List<PlaceData>? places,
      final List<PollData>? polls,
      final List<TopicData>? topics})
      : _tweets = tweets,
        _users = users,
        _media = media,
        _places = places,
        _polls = polls,
        _topics = topics;

  factory _$_Includes.fromJson(Map<String, dynamic> json) =>
      _$$_IncludesFromJson(json);

  /// This includes a list of referenced Retweets, Quoted Tweets, or replies
  /// in the form of Tweet objects with their default fields and any
  /// additional fields requested using the `tweet.fields` parameter, assuming
  /// there is a referenced Tweet present in the returned Tweet(s).
  final List<TweetData>? _tweets;

  /// This includes a list of referenced Retweets, Quoted Tweets, or replies
  /// in the form of Tweet objects with their default fields and any
  /// additional fields requested using the `tweet.fields` parameter, assuming
  /// there is a referenced Tweet present in the returned Tweet(s).
  @override
  List<TweetData>? get tweets {
    final value = _tweets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// This includes a list of referenced Tweet authors in the form of user
  /// objects with their default fields and any additional fields requested
  /// using the user.fields parameter.
  final List<UserData>? _users;

  /// This includes a list of referenced Tweet authors in the form of user
  /// objects with their default fields and any additional fields requested
  /// using the user.fields parameter.
  @override
  List<UserData>? get users {
    final value = _users;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// This includes a list of images, videos, and GIFs included in Tweets in
  /// the form of media objects with their default fields and any additional
  /// fields requested using the media.fields parameter, assuming there is a
  /// media attachment present in the returned Tweet(s).
  final List<MediaData>? _media;

  /// This includes a list of images, videos, and GIFs included in Tweets in
  /// the form of media objects with their default fields and any additional
  /// fields requested using the media.fields parameter, assuming there is a
  /// media attachment present in the returned Tweet(s).
  @override
  List<MediaData>? get media {
    final value = _media;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// This includes a list of referenced places in Tweets in the form of place
  /// objects with their default fields and any additional fields requested
  /// using the place.fields parameter, assuming there is a place present in
  /// the returned Tweet(s).
  final List<PlaceData>? _places;

  /// This includes a list of referenced places in Tweets in the form of place
  /// objects with their default fields and any additional fields requested
  /// using the place.fields parameter, assuming there is a place present in
  /// the returned Tweet(s).
  @override
  List<PlaceData>? get places {
    final value = _places;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// This includes a list of polls that are attached to Tweets in the form
  /// of poll objects with their default fields and any additional fields
  /// requested using the poll.fields parameter, assuming there is a poll
  /// present in the returned Tweet(s).
  final List<PollData>? _polls;

  /// This includes a list of polls that are attached to Tweets in the form
  /// of poll objects with their default fields and any additional fields
  /// requested using the poll.fields parameter, assuming there is a poll
  /// present in the returned Tweet(s).
  @override
  List<PollData>? get polls {
    final value = _polls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// This includes a list of topics that are attached to Spaces in the form
  /// of topic objects with their default fields and any additional fields
  /// requested using the topic.fields parameter, assuming there is a topic
  /// present in the returned Space(s).
  final List<TopicData>? _topics;

  /// This includes a list of topics that are attached to Spaces in the form
  /// of topic objects with their default fields and any additional fields
  /// requested using the topic.fields parameter, assuming there is a topic
  /// present in the returned Space(s).
  @override
  List<TopicData>? get topics {
    final value = _topics;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Includes(tweets: $tweets, users: $users, media: $media, places: $places, polls: $polls, topics: $topics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Includes &&
            const DeepCollectionEquality().equals(other._tweets, _tweets) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            const DeepCollectionEquality().equals(other._polls, _polls) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tweets),
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_places),
      const DeepCollectionEquality().hash(_polls),
      const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  _$$_IncludesCopyWith<_$_Includes> get copyWith =>
      __$$_IncludesCopyWithImpl<_$_Includes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncludesToJson(
      this,
    );
  }
}

abstract class _Includes implements Includes {
  const factory _Includes(
      {final List<TweetData>? tweets,
      final List<UserData>? users,
      final List<MediaData>? media,
      final List<PlaceData>? places,
      final List<PollData>? polls,
      final List<TopicData>? topics}) = _$_Includes;

  factory _Includes.fromJson(Map<String, dynamic> json) = _$_Includes.fromJson;

  @override

  /// This includes a list of referenced Retweets, Quoted Tweets, or replies
  /// in the form of Tweet objects with their default fields and any
  /// additional fields requested using the `tweet.fields` parameter, assuming
  /// there is a referenced Tweet present in the returned Tweet(s).
  List<TweetData>? get tweets;
  @override

  /// This includes a list of referenced Tweet authors in the form of user
  /// objects with their default fields and any additional fields requested
  /// using the user.fields parameter.
  List<UserData>? get users;
  @override

  /// This includes a list of images, videos, and GIFs included in Tweets in
  /// the form of media objects with their default fields and any additional
  /// fields requested using the media.fields parameter, assuming there is a
  /// media attachment present in the returned Tweet(s).
  List<MediaData>? get media;
  @override

  /// This includes a list of referenced places in Tweets in the form of place
  /// objects with their default fields and any additional fields requested
  /// using the place.fields parameter, assuming there is a place present in
  /// the returned Tweet(s).
  List<PlaceData>? get places;
  @override

  /// This includes a list of polls that are attached to Tweets in the form
  /// of poll objects with their default fields and any additional fields
  /// requested using the poll.fields parameter, assuming there is a poll
  /// present in the returned Tweet(s).
  List<PollData>? get polls;
  @override

  /// This includes a list of topics that are attached to Spaces in the form
  /// of topic objects with their default fields and any additional fields
  /// requested using the topic.fields parameter, assuming there is a topic
  /// present in the returned Space(s).
  List<TopicData>? get topics;
  @override
  @JsonKey(ignore: true)
  _$$_IncludesCopyWith<_$_Includes> get copyWith =>
      throw _privateConstructorUsedError;
}
