// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'topic_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopicData _$TopicDataFromJson(Map<String, dynamic> json) {
  return _TopicData.fromJson(json);
}

/// @nodoc
mixin _$TopicData {
  /// The id of this topic.
  String get id => throw _privateConstructorUsedError;

  /// The name of this topic.
  String get name => throw _privateConstructorUsedError;

  /// The description of this topic.
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicDataCopyWith<TopicData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicDataCopyWith<$Res> {
  factory $TopicDataCopyWith(TopicData value, $Res Function(TopicData) then) =
      _$TopicDataCopyWithImpl<$Res>;
  $Res call({String id, String name, String description});
}

/// @nodoc
class _$TopicDataCopyWithImpl<$Res> implements $TopicDataCopyWith<$Res> {
  _$TopicDataCopyWithImpl(this._value, this._then);

  final TopicData _value;
  // ignore: unused_field
  final $Res Function(TopicData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TopicDataCopyWith<$Res> implements $TopicDataCopyWith<$Res> {
  factory _$$_TopicDataCopyWith(
          _$_TopicData value, $Res Function(_$_TopicData) then) =
      __$$_TopicDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String description});
}

/// @nodoc
class __$$_TopicDataCopyWithImpl<$Res> extends _$TopicDataCopyWithImpl<$Res>
    implements _$$_TopicDataCopyWith<$Res> {
  __$$_TopicDataCopyWithImpl(
      _$_TopicData _value, $Res Function(_$_TopicData) _then)
      : super(_value, (v) => _then(v as _$_TopicData));

  @override
  _$_TopicData get _value => super._value as _$_TopicData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_TopicData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopicData implements _TopicData {
  const _$_TopicData(
      {required this.id, required this.name, required this.description});

  factory _$_TopicData.fromJson(Map<String, dynamic> json) =>
      _$$_TopicDataFromJson(json);

  /// The id of this topic.
  @override
  final String id;

  /// The name of this topic.
  @override
  final String name;

  /// The description of this topic.
  @override
  final String description;

  @override
  String toString() {
    return 'TopicData(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_TopicDataCopyWith<_$_TopicData> get copyWith =>
      __$$_TopicDataCopyWithImpl<_$_TopicData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicDataToJson(
      this,
    );
  }
}

abstract class _TopicData implements TopicData {
  const factory _TopicData(
      {required final String id,
      required final String name,
      required final String description}) = _$_TopicData;

  factory _TopicData.fromJson(Map<String, dynamic> json) =
      _$_TopicData.fromJson;

  @override

  /// The id of this topic.
  String get id;
  @override

  /// The name of this topic.
  String get name;
  @override

  /// The description of this topic.
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_TopicDataCopyWith<_$_TopicData> get copyWith =>
      throw _privateConstructorUsedError;
}
