// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filtering_rule_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilteringRuleMeta _$FilteringRuleMetaFromJson(Map<String, dynamic> json) {
  return _FilteringRuleMeta.fromJson(json);
}

/// @nodoc
mixin _$FilteringRuleMeta {
  /// The time when the request body was returned.
  @JsonKey(name: 'sent')
  DateTime? get sentAt => throw _privateConstructorUsedError;

  /// Contains fields that describe whether you were successful or
  /// unsuccessful in creating or deleting the different rules that
  /// you passed in your request.
  FilteringRuleSummary? get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilteringRuleMetaCopyWith<FilteringRuleMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteringRuleMetaCopyWith<$Res> {
  factory $FilteringRuleMetaCopyWith(
          FilteringRuleMeta value, $Res Function(FilteringRuleMeta) then) =
      _$FilteringRuleMetaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sent') DateTime? sentAt, FilteringRuleSummary? summary});

  $FilteringRuleSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class _$FilteringRuleMetaCopyWithImpl<$Res>
    implements $FilteringRuleMetaCopyWith<$Res> {
  _$FilteringRuleMetaCopyWithImpl(this._value, this._then);

  final FilteringRuleMeta _value;
  // ignore: unused_field
  final $Res Function(FilteringRuleMeta) _then;

  @override
  $Res call({
    Object? sentAt = freezed,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as FilteringRuleSummary?,
    ));
  }

  @override
  $FilteringRuleSummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $FilteringRuleSummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }
}

/// @nodoc
abstract class _$$_FilteringRuleMetaCopyWith<$Res>
    implements $FilteringRuleMetaCopyWith<$Res> {
  factory _$$_FilteringRuleMetaCopyWith(_$_FilteringRuleMeta value,
          $Res Function(_$_FilteringRuleMeta) then) =
      __$$_FilteringRuleMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sent') DateTime? sentAt, FilteringRuleSummary? summary});

  @override
  $FilteringRuleSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$_FilteringRuleMetaCopyWithImpl<$Res>
    extends _$FilteringRuleMetaCopyWithImpl<$Res>
    implements _$$_FilteringRuleMetaCopyWith<$Res> {
  __$$_FilteringRuleMetaCopyWithImpl(
      _$_FilteringRuleMeta _value, $Res Function(_$_FilteringRuleMeta) _then)
      : super(_value, (v) => _then(v as _$_FilteringRuleMeta));

  @override
  _$_FilteringRuleMeta get _value => super._value as _$_FilteringRuleMeta;

  @override
  $Res call({
    Object? sentAt = freezed,
    Object? summary = freezed,
  }) {
    return _then(_$_FilteringRuleMeta(
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as FilteringRuleSummary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilteringRuleMeta implements _FilteringRuleMeta {
  const _$_FilteringRuleMeta(
      {@JsonKey(name: 'sent') this.sentAt, this.summary});

  factory _$_FilteringRuleMeta.fromJson(Map<String, dynamic> json) =>
      _$$_FilteringRuleMetaFromJson(json);

  /// The time when the request body was returned.
  @override
  @JsonKey(name: 'sent')
  final DateTime? sentAt;

  /// Contains fields that describe whether you were successful or
  /// unsuccessful in creating or deleting the different rules that
  /// you passed in your request.
  @override
  final FilteringRuleSummary? summary;

  @override
  String toString() {
    return 'FilteringRuleMeta(sentAt: $sentAt, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilteringRuleMeta &&
            const DeepCollectionEquality().equals(other.sentAt, sentAt) &&
            const DeepCollectionEquality().equals(other.summary, summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sentAt),
      const DeepCollectionEquality().hash(summary));

  @JsonKey(ignore: true)
  @override
  _$$_FilteringRuleMetaCopyWith<_$_FilteringRuleMeta> get copyWith =>
      __$$_FilteringRuleMetaCopyWithImpl<_$_FilteringRuleMeta>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilteringRuleMetaToJson(
      this,
    );
  }
}

abstract class _FilteringRuleMeta implements FilteringRuleMeta {
  const factory _FilteringRuleMeta(
      {@JsonKey(name: 'sent') final DateTime? sentAt,
      final FilteringRuleSummary? summary}) = _$_FilteringRuleMeta;

  factory _FilteringRuleMeta.fromJson(Map<String, dynamic> json) =
      _$_FilteringRuleMeta.fromJson;

  @override

  /// The time when the request body was returned.
  @JsonKey(name: 'sent')
  DateTime? get sentAt;
  @override

  /// Contains fields that describe whether you were successful or
  /// unsuccessful in creating or deleting the different rules that
  /// you passed in your request.
  FilteringRuleSummary? get summary;
  @override
  @JsonKey(ignore: true)
  _$$_FilteringRuleMetaCopyWith<_$_FilteringRuleMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
