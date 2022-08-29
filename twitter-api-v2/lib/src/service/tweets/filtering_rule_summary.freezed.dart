// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filtering_rule_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilteringRuleSummary _$FilteringRuleSummaryFromJson(Map<String, dynamic> json) {
  return _FilteringRuleSummary.fromJson(json);
}

/// @nodoc
mixin _$FilteringRuleSummary {
  /// The count of created filtering rules.
  @JsonKey(name: 'created')
  int? get createdCount => throw _privateConstructorUsedError;

  /// The count of not created filtering rules.
  @JsonKey(name: 'not_created')
  int? get notCreatedCount => throw _privateConstructorUsedError;

  /// The count of deleted filtering rules.
  @JsonKey(name: 'deleted')
  int? get deletedCount => throw _privateConstructorUsedError;

  /// The count of not deleted filtering rules.
  @JsonKey(name: 'not_deleted')
  int? get notDeletedCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilteringRuleSummaryCopyWith<FilteringRuleSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteringRuleSummaryCopyWith<$Res> {
  factory $FilteringRuleSummaryCopyWith(FilteringRuleSummary value,
          $Res Function(FilteringRuleSummary) then) =
      _$FilteringRuleSummaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'created') int? createdCount,
      @JsonKey(name: 'not_created') int? notCreatedCount,
      @JsonKey(name: 'deleted') int? deletedCount,
      @JsonKey(name: 'not_deleted') int? notDeletedCount});
}

/// @nodoc
class _$FilteringRuleSummaryCopyWithImpl<$Res>
    implements $FilteringRuleSummaryCopyWith<$Res> {
  _$FilteringRuleSummaryCopyWithImpl(this._value, this._then);

  final FilteringRuleSummary _value;
  // ignore: unused_field
  final $Res Function(FilteringRuleSummary) _then;

  @override
  $Res call({
    Object? createdCount = freezed,
    Object? notCreatedCount = freezed,
    Object? deletedCount = freezed,
    Object? notDeletedCount = freezed,
  }) {
    return _then(_value.copyWith(
      createdCount: createdCount == freezed
          ? _value.createdCount
          : createdCount // ignore: cast_nullable_to_non_nullable
              as int?,
      notCreatedCount: notCreatedCount == freezed
          ? _value.notCreatedCount
          : notCreatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedCount: deletedCount == freezed
          ? _value.deletedCount
          : deletedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      notDeletedCount: notDeletedCount == freezed
          ? _value.notDeletedCount
          : notDeletedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_FilteringRuleSummaryCopyWith<$Res>
    implements $FilteringRuleSummaryCopyWith<$Res> {
  factory _$$_FilteringRuleSummaryCopyWith(_$_FilteringRuleSummary value,
          $Res Function(_$_FilteringRuleSummary) then) =
      __$$_FilteringRuleSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'created') int? createdCount,
      @JsonKey(name: 'not_created') int? notCreatedCount,
      @JsonKey(name: 'deleted') int? deletedCount,
      @JsonKey(name: 'not_deleted') int? notDeletedCount});
}

/// @nodoc
class __$$_FilteringRuleSummaryCopyWithImpl<$Res>
    extends _$FilteringRuleSummaryCopyWithImpl<$Res>
    implements _$$_FilteringRuleSummaryCopyWith<$Res> {
  __$$_FilteringRuleSummaryCopyWithImpl(_$_FilteringRuleSummary _value,
      $Res Function(_$_FilteringRuleSummary) _then)
      : super(_value, (v) => _then(v as _$_FilteringRuleSummary));

  @override
  _$_FilteringRuleSummary get _value => super._value as _$_FilteringRuleSummary;

  @override
  $Res call({
    Object? createdCount = freezed,
    Object? notCreatedCount = freezed,
    Object? deletedCount = freezed,
    Object? notDeletedCount = freezed,
  }) {
    return _then(_$_FilteringRuleSummary(
      createdCount: createdCount == freezed
          ? _value.createdCount
          : createdCount // ignore: cast_nullable_to_non_nullable
              as int?,
      notCreatedCount: notCreatedCount == freezed
          ? _value.notCreatedCount
          : notCreatedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedCount: deletedCount == freezed
          ? _value.deletedCount
          : deletedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      notDeletedCount: notDeletedCount == freezed
          ? _value.notDeletedCount
          : notDeletedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilteringRuleSummary implements _FilteringRuleSummary {
  const _$_FilteringRuleSummary(
      {@JsonKey(name: 'created') this.createdCount,
      @JsonKey(name: 'not_created') this.notCreatedCount,
      @JsonKey(name: 'deleted') this.deletedCount,
      @JsonKey(name: 'not_deleted') this.notDeletedCount});

  factory _$_FilteringRuleSummary.fromJson(Map<String, dynamic> json) =>
      _$$_FilteringRuleSummaryFromJson(json);

  /// The count of created filtering rules.
  @override
  @JsonKey(name: 'created')
  final int? createdCount;

  /// The count of not created filtering rules.
  @override
  @JsonKey(name: 'not_created')
  final int? notCreatedCount;

  /// The count of deleted filtering rules.
  @override
  @JsonKey(name: 'deleted')
  final int? deletedCount;

  /// The count of not deleted filtering rules.
  @override
  @JsonKey(name: 'not_deleted')
  final int? notDeletedCount;

  @override
  String toString() {
    return 'FilteringRuleSummary(createdCount: $createdCount, notCreatedCount: $notCreatedCount, deletedCount: $deletedCount, notDeletedCount: $notDeletedCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilteringRuleSummary &&
            const DeepCollectionEquality()
                .equals(other.createdCount, createdCount) &&
            const DeepCollectionEquality()
                .equals(other.notCreatedCount, notCreatedCount) &&
            const DeepCollectionEquality()
                .equals(other.deletedCount, deletedCount) &&
            const DeepCollectionEquality()
                .equals(other.notDeletedCount, notDeletedCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdCount),
      const DeepCollectionEquality().hash(notCreatedCount),
      const DeepCollectionEquality().hash(deletedCount),
      const DeepCollectionEquality().hash(notDeletedCount));

  @JsonKey(ignore: true)
  @override
  _$$_FilteringRuleSummaryCopyWith<_$_FilteringRuleSummary> get copyWith =>
      __$$_FilteringRuleSummaryCopyWithImpl<_$_FilteringRuleSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilteringRuleSummaryToJson(
      this,
    );
  }
}

abstract class _FilteringRuleSummary implements FilteringRuleSummary {
  const factory _FilteringRuleSummary(
          {@JsonKey(name: 'created') final int? createdCount,
          @JsonKey(name: 'not_created') final int? notCreatedCount,
          @JsonKey(name: 'deleted') final int? deletedCount,
          @JsonKey(name: 'not_deleted') final int? notDeletedCount}) =
      _$_FilteringRuleSummary;

  factory _FilteringRuleSummary.fromJson(Map<String, dynamic> json) =
      _$_FilteringRuleSummary.fromJson;

  @override

  /// The count of created filtering rules.
  @JsonKey(name: 'created')
  int? get createdCount;
  @override

  /// The count of not created filtering rules.
  @JsonKey(name: 'not_created')
  int? get notCreatedCount;
  @override

  /// The count of deleted filtering rules.
  @JsonKey(name: 'deleted')
  int? get deletedCount;
  @override

  /// The count of not deleted filtering rules.
  @JsonKey(name: 'not_deleted')
  int? get notDeletedCount;
  @override
  @JsonKey(ignore: true)
  _$$_FilteringRuleSummaryCopyWith<_$_FilteringRuleSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
