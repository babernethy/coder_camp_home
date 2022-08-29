// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListMeta _$ListMetaFromJson(Map<String, dynamic> json) {
  return _ListMeta.fromJson(json);
}

/// @nodoc
mixin _$ListMeta {
  /// The number of users returned in this request. Note that this number
  /// may be lower than what was specified in the max_results query parameter.
  int? get resultCount => throw _privateConstructorUsedError;

  /// Pagination token for the next page of results. This value is returned
  /// when there are multiple pages of results, as the current request may
  /// only return a subset of results. To retrieve the full list, keep passing
  /// the value from this field in the pagination_token query parameter. When
  /// this field is not returned in the response, it means you've reached the
  /// last page of results, and that there are no further pages.
  String? get nextToken => throw _privateConstructorUsedError;

  /// Pagination token for the previous page of results. This value is
  /// returned when there are multiple pages of results, as the current
  /// request may only return a subset of results. To go back to the previous
  /// page, passing the value from this field in the pagination_token query
  /// parameter. When this field is not returned in the response, it means you
  /// are on the first page of results.
  String? get previousToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListMetaCopyWith<ListMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMetaCopyWith<$Res> {
  factory $ListMetaCopyWith(ListMeta value, $Res Function(ListMeta) then) =
      _$ListMetaCopyWithImpl<$Res>;
  $Res call({int? resultCount, String? nextToken, String? previousToken});
}

/// @nodoc
class _$ListMetaCopyWithImpl<$Res> implements $ListMetaCopyWith<$Res> {
  _$ListMetaCopyWithImpl(this._value, this._then);

  final ListMeta _value;
  // ignore: unused_field
  final $Res Function(ListMeta) _then;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? nextToken = freezed,
    Object? previousToken = freezed,
  }) {
    return _then(_value.copyWith(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      previousToken: previousToken == freezed
          ? _value.previousToken
          : previousToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListMetaCopyWith<$Res> implements $ListMetaCopyWith<$Res> {
  factory _$$_ListMetaCopyWith(
          _$_ListMeta value, $Res Function(_$_ListMeta) then) =
      __$$_ListMetaCopyWithImpl<$Res>;
  @override
  $Res call({int? resultCount, String? nextToken, String? previousToken});
}

/// @nodoc
class __$$_ListMetaCopyWithImpl<$Res> extends _$ListMetaCopyWithImpl<$Res>
    implements _$$_ListMetaCopyWith<$Res> {
  __$$_ListMetaCopyWithImpl(
      _$_ListMeta _value, $Res Function(_$_ListMeta) _then)
      : super(_value, (v) => _then(v as _$_ListMeta));

  @override
  _$_ListMeta get _value => super._value as _$_ListMeta;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? nextToken = freezed,
    Object? previousToken = freezed,
  }) {
    return _then(_$_ListMeta(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      nextToken: nextToken == freezed
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      previousToken: previousToken == freezed
          ? _value.previousToken
          : previousToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListMeta implements _ListMeta {
  const _$_ListMeta({this.resultCount, this.nextToken, this.previousToken});

  factory _$_ListMeta.fromJson(Map<String, dynamic> json) =>
      _$$_ListMetaFromJson(json);

  /// The number of users returned in this request. Note that this number
  /// may be lower than what was specified in the max_results query parameter.
  @override
  final int? resultCount;

  /// Pagination token for the next page of results. This value is returned
  /// when there are multiple pages of results, as the current request may
  /// only return a subset of results. To retrieve the full list, keep passing
  /// the value from this field in the pagination_token query parameter. When
  /// this field is not returned in the response, it means you've reached the
  /// last page of results, and that there are no further pages.
  @override
  final String? nextToken;

  /// Pagination token for the previous page of results. This value is
  /// returned when there are multiple pages of results, as the current
  /// request may only return a subset of results. To go back to the previous
  /// page, passing the value from this field in the pagination_token query
  /// parameter. When this field is not returned in the response, it means you
  /// are on the first page of results.
  @override
  final String? previousToken;

  @override
  String toString() {
    return 'ListMeta(resultCount: $resultCount, nextToken: $nextToken, previousToken: $previousToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListMeta &&
            const DeepCollectionEquality()
                .equals(other.resultCount, resultCount) &&
            const DeepCollectionEquality().equals(other.nextToken, nextToken) &&
            const DeepCollectionEquality()
                .equals(other.previousToken, previousToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resultCount),
      const DeepCollectionEquality().hash(nextToken),
      const DeepCollectionEquality().hash(previousToken));

  @JsonKey(ignore: true)
  @override
  _$$_ListMetaCopyWith<_$_ListMeta> get copyWith =>
      __$$_ListMetaCopyWithImpl<_$_ListMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListMetaToJson(
      this,
    );
  }
}

abstract class _ListMeta implements ListMeta {
  const factory _ListMeta(
      {final int? resultCount,
      final String? nextToken,
      final String? previousToken}) = _$_ListMeta;

  factory _ListMeta.fromJson(Map<String, dynamic> json) = _$_ListMeta.fromJson;

  @override

  /// The number of users returned in this request. Note that this number
  /// may be lower than what was specified in the max_results query parameter.
  int? get resultCount;
  @override

  /// Pagination token for the next page of results. This value is returned
  /// when there are multiple pages of results, as the current request may
  /// only return a subset of results. To retrieve the full list, keep passing
  /// the value from this field in the pagination_token query parameter. When
  /// this field is not returned in the response, it means you've reached the
  /// last page of results, and that there are no further pages.
  String? get nextToken;
  @override

  /// Pagination token for the previous page of results. This value is
  /// returned when there are multiple pages of results, as the current
  /// request may only return a subset of results. To go back to the previous
  /// page, passing the value from this field in the pagination_token query
  /// parameter. When this field is not returned in the response, it means you
  /// are on the first page of results.
  String? get previousToken;
  @override
  @JsonKey(ignore: true)
  _$$_ListMetaCopyWith<_$_ListMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
