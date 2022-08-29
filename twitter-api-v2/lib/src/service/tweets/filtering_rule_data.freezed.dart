// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filtering_rule_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilteringRuleData _$FilteringRuleDataFromJson(Map<String, dynamic> json) {
  return _FilteringRuleData.fromJson(json);
}

/// @nodoc
mixin _$FilteringRuleData {
  /// Unique identifier of this rule. This is returned as a string in order
  /// to avoid complications with languages and tools that cannot
  /// handle large integers.
  String get id => throw _privateConstructorUsedError;

  /// The rule text as submitted when creating the rule.
  String get value => throw _privateConstructorUsedError;

  /// The tag label as defined when creating the rule.
  String? get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilteringRuleDataCopyWith<FilteringRuleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteringRuleDataCopyWith<$Res> {
  factory $FilteringRuleDataCopyWith(
          FilteringRuleData value, $Res Function(FilteringRuleData) then) =
      _$FilteringRuleDataCopyWithImpl<$Res>;
  $Res call({String id, String value, String? tag});
}

/// @nodoc
class _$FilteringRuleDataCopyWithImpl<$Res>
    implements $FilteringRuleDataCopyWith<$Res> {
  _$FilteringRuleDataCopyWithImpl(this._value, this._then);

  final FilteringRuleData _value;
  // ignore: unused_field
  final $Res Function(FilteringRuleData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FilteringRuleDataCopyWith<$Res>
    implements $FilteringRuleDataCopyWith<$Res> {
  factory _$$_FilteringRuleDataCopyWith(_$_FilteringRuleData value,
          $Res Function(_$_FilteringRuleData) then) =
      __$$_FilteringRuleDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String value, String? tag});
}

/// @nodoc
class __$$_FilteringRuleDataCopyWithImpl<$Res>
    extends _$FilteringRuleDataCopyWithImpl<$Res>
    implements _$$_FilteringRuleDataCopyWith<$Res> {
  __$$_FilteringRuleDataCopyWithImpl(
      _$_FilteringRuleData _value, $Res Function(_$_FilteringRuleData) _then)
      : super(_value, (v) => _then(v as _$_FilteringRuleData));

  @override
  _$_FilteringRuleData get _value => super._value as _$_FilteringRuleData;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$_FilteringRuleData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilteringRuleData implements _FilteringRuleData {
  const _$_FilteringRuleData({required this.id, required this.value, this.tag});

  factory _$_FilteringRuleData.fromJson(Map<String, dynamic> json) =>
      _$$_FilteringRuleDataFromJson(json);

  /// Unique identifier of this rule. This is returned as a string in order
  /// to avoid complications with languages and tools that cannot
  /// handle large integers.
  @override
  final String id;

  /// The rule text as submitted when creating the rule.
  @override
  final String value;

  /// The tag label as defined when creating the rule.
  @override
  final String? tag;

  @override
  String toString() {
    return 'FilteringRuleData(id: $id, value: $value, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilteringRuleData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$$_FilteringRuleDataCopyWith<_$_FilteringRuleData> get copyWith =>
      __$$_FilteringRuleDataCopyWithImpl<_$_FilteringRuleData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilteringRuleDataToJson(
      this,
    );
  }
}

abstract class _FilteringRuleData implements FilteringRuleData {
  const factory _FilteringRuleData(
      {required final String id,
      required final String value,
      final String? tag}) = _$_FilteringRuleData;

  factory _FilteringRuleData.fromJson(Map<String, dynamic> json) =
      _$_FilteringRuleData.fromJson;

  @override

  /// Unique identifier of this rule. This is returned as a string in order
  /// to avoid complications with languages and tools that cannot
  /// handle large integers.
  String get id;
  @override

  /// The rule text as submitted when creating the rule.
  String get value;
  @override

  /// The tag label as defined when creating the rule.
  String? get tag;
  @override
  @JsonKey(ignore: true)
  _$$_FilteringRuleDataCopyWith<_$_FilteringRuleData> get copyWith =>
      throw _privateConstructorUsedError;
}
