// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetEntities _$TweetEntitiesFromJson(Map<String, dynamic> json) {
  return _TweetEntities.fromJson(json);
}

/// @nodoc
mixin _$TweetEntities {
  /// Contains details about annotations relative to the text within a Tweet.
  List<TweetAnnotation>? get annotations => throw _privateConstructorUsedError;

  /// Contains details about text recognized as a Hashtag.
  List<Tag>? get hashtags => throw _privateConstructorUsedError;

  /// Contains details about text recognized as a Cashtag.
  List<Tag>? get cashtags => throw _privateConstructorUsedError;

  /// Contains details about text recognized as a user mention.
  List<Mention>? get mentions => throw _privateConstructorUsedError;

  /// Contains details about text recognized as a URL.
  List<Url>? get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetEntitiesCopyWith<TweetEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEntitiesCopyWith<$Res> {
  factory $TweetEntitiesCopyWith(
          TweetEntities value, $Res Function(TweetEntities) then) =
      _$TweetEntitiesCopyWithImpl<$Res>;
  $Res call(
      {List<TweetAnnotation>? annotations,
      List<Tag>? hashtags,
      List<Tag>? cashtags,
      List<Mention>? mentions,
      List<Url>? urls});
}

/// @nodoc
class _$TweetEntitiesCopyWithImpl<$Res>
    implements $TweetEntitiesCopyWith<$Res> {
  _$TweetEntitiesCopyWithImpl(this._value, this._then);

  final TweetEntities _value;
  // ignore: unused_field
  final $Res Function(TweetEntities) _then;

  @override
  $Res call({
    Object? annotations = freezed,
    Object? hashtags = freezed,
    Object? cashtags = freezed,
    Object? mentions = freezed,
    Object? urls = freezed,
  }) {
    return _then(_value.copyWith(
      annotations: annotations == freezed
          ? _value.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as List<TweetAnnotation>?,
      hashtags: hashtags == freezed
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      cashtags: cashtags == freezed
          ? _value.cashtags
          : cashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      mentions: mentions == freezed
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<Mention>?,
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetEntitiesCopyWith<$Res>
    implements $TweetEntitiesCopyWith<$Res> {
  factory _$$_TweetEntitiesCopyWith(
          _$_TweetEntities value, $Res Function(_$_TweetEntities) then) =
      __$$_TweetEntitiesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TweetAnnotation>? annotations,
      List<Tag>? hashtags,
      List<Tag>? cashtags,
      List<Mention>? mentions,
      List<Url>? urls});
}

/// @nodoc
class __$$_TweetEntitiesCopyWithImpl<$Res>
    extends _$TweetEntitiesCopyWithImpl<$Res>
    implements _$$_TweetEntitiesCopyWith<$Res> {
  __$$_TweetEntitiesCopyWithImpl(
      _$_TweetEntities _value, $Res Function(_$_TweetEntities) _then)
      : super(_value, (v) => _then(v as _$_TweetEntities));

  @override
  _$_TweetEntities get _value => super._value as _$_TweetEntities;

  @override
  $Res call({
    Object? annotations = freezed,
    Object? hashtags = freezed,
    Object? cashtags = freezed,
    Object? mentions = freezed,
    Object? urls = freezed,
  }) {
    return _then(_$_TweetEntities(
      annotations: annotations == freezed
          ? _value._annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as List<TweetAnnotation>?,
      hashtags: hashtags == freezed
          ? _value._hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      cashtags: cashtags == freezed
          ? _value._cashtags
          : cashtags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      mentions: mentions == freezed
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<Mention>?,
      urls: urls == freezed
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetEntities implements _TweetEntities {
  const _$_TweetEntities(
      {final List<TweetAnnotation>? annotations,
      final List<Tag>? hashtags,
      final List<Tag>? cashtags,
      final List<Mention>? mentions,
      final List<Url>? urls})
      : _annotations = annotations,
        _hashtags = hashtags,
        _cashtags = cashtags,
        _mentions = mentions,
        _urls = urls;

  factory _$_TweetEntities.fromJson(Map<String, dynamic> json) =>
      _$$_TweetEntitiesFromJson(json);

  /// Contains details about annotations relative to the text within a Tweet.
  final List<TweetAnnotation>? _annotations;

  /// Contains details about annotations relative to the text within a Tweet.
  @override
  List<TweetAnnotation>? get annotations {
    final value = _annotations;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains details about text recognized as a Hashtag.
  final List<Tag>? _hashtags;

  /// Contains details about text recognized as a Hashtag.
  @override
  List<Tag>? get hashtags {
    final value = _hashtags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains details about text recognized as a Cashtag.
  final List<Tag>? _cashtags;

  /// Contains details about text recognized as a Cashtag.
  @override
  List<Tag>? get cashtags {
    final value = _cashtags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains details about text recognized as a user mention.
  final List<Mention>? _mentions;

  /// Contains details about text recognized as a user mention.
  @override
  List<Mention>? get mentions {
    final value = _mentions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains details about text recognized as a URL.
  final List<Url>? _urls;

  /// Contains details about text recognized as a URL.
  @override
  List<Url>? get urls {
    final value = _urls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TweetEntities(annotations: $annotations, hashtags: $hashtags, cashtags: $cashtags, mentions: $mentions, urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetEntities &&
            const DeepCollectionEquality()
                .equals(other._annotations, _annotations) &&
            const DeepCollectionEquality().equals(other._hashtags, _hashtags) &&
            const DeepCollectionEquality().equals(other._cashtags, _cashtags) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_annotations),
      const DeepCollectionEquality().hash(_hashtags),
      const DeepCollectionEquality().hash(_cashtags),
      const DeepCollectionEquality().hash(_mentions),
      const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  _$$_TweetEntitiesCopyWith<_$_TweetEntities> get copyWith =>
      __$$_TweetEntitiesCopyWithImpl<_$_TweetEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetEntitiesToJson(
      this,
    );
  }
}

abstract class _TweetEntities implements TweetEntities {
  const factory _TweetEntities(
      {final List<TweetAnnotation>? annotations,
      final List<Tag>? hashtags,
      final List<Tag>? cashtags,
      final List<Mention>? mentions,
      final List<Url>? urls}) = _$_TweetEntities;

  factory _TweetEntities.fromJson(Map<String, dynamic> json) =
      _$_TweetEntities.fromJson;

  @override

  /// Contains details about annotations relative to the text within a Tweet.
  List<TweetAnnotation>? get annotations;
  @override

  /// Contains details about text recognized as a Hashtag.
  List<Tag>? get hashtags;
  @override

  /// Contains details about text recognized as a Cashtag.
  List<Tag>? get cashtags;
  @override

  /// Contains details about text recognized as a user mention.
  List<Mention>? get mentions;
  @override

  /// Contains details about text recognized as a URL.
  List<Url>? get urls;
  @override
  @JsonKey(ignore: true)
  _$$_TweetEntitiesCopyWith<_$_TweetEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
