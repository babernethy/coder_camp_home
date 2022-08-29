// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poll_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollOption _$PollOptionFromJson(Map<String, dynamic> json) {
  return _PollOption.fromJson(json);
}

/// @nodoc
mixin _$PollOption {
  int get position => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get votes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollOptionCopyWith<PollOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionCopyWith<$Res> {
  factory $PollOptionCopyWith(
          PollOption value, $Res Function(PollOption) then) =
      _$PollOptionCopyWithImpl<$Res>;
  $Res call({int position, String label, int votes});
}

/// @nodoc
class _$PollOptionCopyWithImpl<$Res> implements $PollOptionCopyWith<$Res> {
  _$PollOptionCopyWithImpl(this._value, this._then);

  final PollOption _value;
  // ignore: unused_field
  final $Res Function(PollOption) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? label = freezed,
    Object? votes = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PollOptionCopyWith<$Res>
    implements $PollOptionCopyWith<$Res> {
  factory _$$_PollOptionCopyWith(
          _$_PollOption value, $Res Function(_$_PollOption) then) =
      __$$_PollOptionCopyWithImpl<$Res>;
  @override
  $Res call({int position, String label, int votes});
}

/// @nodoc
class __$$_PollOptionCopyWithImpl<$Res> extends _$PollOptionCopyWithImpl<$Res>
    implements _$$_PollOptionCopyWith<$Res> {
  __$$_PollOptionCopyWithImpl(
      _$_PollOption _value, $Res Function(_$_PollOption) _then)
      : super(_value, (v) => _then(v as _$_PollOption));

  @override
  _$_PollOption get _value => super._value as _$_PollOption;

  @override
  $Res call({
    Object? position = freezed,
    Object? label = freezed,
    Object? votes = freezed,
  }) {
    return _then(_$_PollOption(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PollOption implements _PollOption {
  const _$_PollOption(
      {required this.position, required this.label, required this.votes});

  factory _$_PollOption.fromJson(Map<String, dynamic> json) =>
      _$$_PollOptionFromJson(json);

  @override
  final int position;
  @override
  final String label;
  @override
  final int votes;

  @override
  String toString() {
    return 'PollOption(position: $position, label: $label, votes: $votes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PollOption &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.votes, votes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(votes));

  @JsonKey(ignore: true)
  @override
  _$$_PollOptionCopyWith<_$_PollOption> get copyWith =>
      __$$_PollOptionCopyWithImpl<_$_PollOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollOptionToJson(
      this,
    );
  }
}

abstract class _PollOption implements PollOption {
  const factory _PollOption(
      {required final int position,
      required final String label,
      required final int votes}) = _$_PollOption;

  factory _PollOption.fromJson(Map<String, dynamic> json) =
      _$_PollOption.fromJson;

  @override
  int get position;
  @override
  String get label;
  @override
  int get votes;
  @override
  @JsonKey(ignore: true)
  _$$_PollOptionCopyWith<_$_PollOption> get copyWith =>
      throw _privateConstructorUsedError;
}
