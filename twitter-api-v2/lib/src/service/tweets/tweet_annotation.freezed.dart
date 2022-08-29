// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_annotation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetAnnotation _$TweetAnnotationFromJson(Map<String, dynamic> json) {
  return _TweetAnnotation.fromJson(json);
}

/// @nodoc
mixin _$TweetAnnotation {
  /// The start position (zero-based) of the text used to annotate the Tweet.
  /// All start indices are inclusive.
  int get start => throw _privateConstructorUsedError;

  /// The end position (zero based) of the text used to annotate the Tweet.
  /// While all other end indices are exclusive, this one is inclusive.
  int get end => throw _privateConstructorUsedError;

  /// The confidence score for the annotation as it correlates to the
  /// Tweet text.
  double get probability => throw _privateConstructorUsedError;

  /// The description of the type of entity identified when the Tweet text
  /// was interpreted.
  String get type => throw _privateConstructorUsedError;

  /// The text used to determine the annotation type.
  String get normalizedText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetAnnotationCopyWith<TweetAnnotation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetAnnotationCopyWith<$Res> {
  factory $TweetAnnotationCopyWith(
          TweetAnnotation value, $Res Function(TweetAnnotation) then) =
      _$TweetAnnotationCopyWithImpl<$Res>;
  $Res call(
      {int start,
      int end,
      double probability,
      String type,
      String normalizedText});
}

/// @nodoc
class _$TweetAnnotationCopyWithImpl<$Res>
    implements $TweetAnnotationCopyWith<$Res> {
  _$TweetAnnotationCopyWithImpl(this._value, this._then);

  final TweetAnnotation _value;
  // ignore: unused_field
  final $Res Function(TweetAnnotation) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? probability = freezed,
    Object? type = freezed,
    Object? normalizedText = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      probability: probability == freezed
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      normalizedText: normalizedText == freezed
          ? _value.normalizedText
          : normalizedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetAnnotationCopyWith<$Res>
    implements $TweetAnnotationCopyWith<$Res> {
  factory _$$_TweetAnnotationCopyWith(
          _$_TweetAnnotation value, $Res Function(_$_TweetAnnotation) then) =
      __$$_TweetAnnotationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int start,
      int end,
      double probability,
      String type,
      String normalizedText});
}

/// @nodoc
class __$$_TweetAnnotationCopyWithImpl<$Res>
    extends _$TweetAnnotationCopyWithImpl<$Res>
    implements _$$_TweetAnnotationCopyWith<$Res> {
  __$$_TweetAnnotationCopyWithImpl(
      _$_TweetAnnotation _value, $Res Function(_$_TweetAnnotation) _then)
      : super(_value, (v) => _then(v as _$_TweetAnnotation));

  @override
  _$_TweetAnnotation get _value => super._value as _$_TweetAnnotation;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? probability = freezed,
    Object? type = freezed,
    Object? normalizedText = freezed,
  }) {
    return _then(_$_TweetAnnotation(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      probability: probability == freezed
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      normalizedText: normalizedText == freezed
          ? _value.normalizedText
          : normalizedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetAnnotation implements _TweetAnnotation {
  const _$_TweetAnnotation(
      {required this.start,
      required this.end,
      required this.probability,
      required this.type,
      required this.normalizedText});

  factory _$_TweetAnnotation.fromJson(Map<String, dynamic> json) =>
      _$$_TweetAnnotationFromJson(json);

  /// The start position (zero-based) of the text used to annotate the Tweet.
  /// All start indices are inclusive.
  @override
  final int start;

  /// The end position (zero based) of the text used to annotate the Tweet.
  /// While all other end indices are exclusive, this one is inclusive.
  @override
  final int end;

  /// The confidence score for the annotation as it correlates to the
  /// Tweet text.
  @override
  final double probability;

  /// The description of the type of entity identified when the Tweet text
  /// was interpreted.
  @override
  final String type;

  /// The text used to determine the annotation type.
  @override
  final String normalizedText;

  @override
  String toString() {
    return 'TweetAnnotation(start: $start, end: $end, probability: $probability, type: $type, normalizedText: $normalizedText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetAnnotation &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality()
                .equals(other.probability, probability) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.normalizedText, normalizedText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(probability),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(normalizedText));

  @JsonKey(ignore: true)
  @override
  _$$_TweetAnnotationCopyWith<_$_TweetAnnotation> get copyWith =>
      __$$_TweetAnnotationCopyWithImpl<_$_TweetAnnotation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetAnnotationToJson(
      this,
    );
  }
}

abstract class _TweetAnnotation implements TweetAnnotation {
  const factory _TweetAnnotation(
      {required final int start,
      required final int end,
      required final double probability,
      required final String type,
      required final String normalizedText}) = _$_TweetAnnotation;

  factory _TweetAnnotation.fromJson(Map<String, dynamic> json) =
      _$_TweetAnnotation.fromJson;

  @override

  /// The start position (zero-based) of the text used to annotate the Tweet.
  /// All start indices are inclusive.
  int get start;
  @override

  /// The end position (zero based) of the text used to annotate the Tweet.
  /// While all other end indices are exclusive, this one is inclusive.
  int get end;
  @override

  /// The confidence score for the annotation as it correlates to the
  /// Tweet text.
  double get probability;
  @override

  /// The description of the type of entity identified when the Tweet text
  /// was interpreted.
  String get type;
  @override

  /// The text used to determine the annotation type.
  String get normalizedText;
  @override
  @JsonKey(ignore: true)
  _$$_TweetAnnotationCopyWith<_$_TweetAnnotation> get copyWith =>
      throw _privateConstructorUsedError;
}
