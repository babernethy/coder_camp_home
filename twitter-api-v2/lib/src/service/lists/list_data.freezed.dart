// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListData _$ListDataFromJson(Map<String, dynamic> json) {
  return _ListData.fromJson(json);
}

/// @nodoc
mixin _$ListData {
  /// The unique identifier of this List.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to programmatically retrieve information about a specific
  ///   Twitter List.
  String get id => throw _privateConstructorUsedError;

  /// The name of the List, as defined when creating the List.
  String get name => throw _privateConstructorUsedError;

  /// A brief description to let users know about the List.
  String? get description => throw _privateConstructorUsedError;

  /// Unique identifier of this List's owner.
  ///
  /// ## How It Can Be Used
  ///
  /// - Returns the List owner ID. Can potentially be used to find out if
  ///   this specific user owns any other Lists. Can also be used to expand
  ///   user objects.
  String? get ownerId => throw _privateConstructorUsedError;

  /// Shows how many users follow this List.
  int? get followerCount => throw _privateConstructorUsedError;

  /// Shows how many members are part of this List.
  int? get memberCount => throw _privateConstructorUsedError;

  /// Indicates if the List is private.
  @JsonKey(name: 'private')
  bool? get isPrivate => throw _privateConstructorUsedError;

  /// The UTC date time that the List was created on Twitter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to determine how long a List has been on Twitter.
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListDataCopyWith<ListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDataCopyWith<$Res> {
  factory $ListDataCopyWith(ListData value, $Res Function(ListData) then) =
      _$ListDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String? description,
      String? ownerId,
      int? followerCount,
      int? memberCount,
      @JsonKey(name: 'private') bool? isPrivate,
      DateTime? createdAt});
}

/// @nodoc
class _$ListDataCopyWithImpl<$Res> implements $ListDataCopyWith<$Res> {
  _$ListDataCopyWithImpl(this._value, this._then);

  final ListData _value;
  // ignore: unused_field
  final $Res Function(ListData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? ownerId = freezed,
    Object? followerCount = freezed,
    Object? memberCount = freezed,
    Object? isPrivate = freezed,
    Object? createdAt = freezed,
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
              as String?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      followerCount: followerCount == freezed
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      memberCount: memberCount == freezed
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListDataCopyWith<$Res> implements $ListDataCopyWith<$Res> {
  factory _$$_ListDataCopyWith(
          _$_ListData value, $Res Function(_$_ListData) then) =
      __$$_ListDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String? description,
      String? ownerId,
      int? followerCount,
      int? memberCount,
      @JsonKey(name: 'private') bool? isPrivate,
      DateTime? createdAt});
}

/// @nodoc
class __$$_ListDataCopyWithImpl<$Res> extends _$ListDataCopyWithImpl<$Res>
    implements _$$_ListDataCopyWith<$Res> {
  __$$_ListDataCopyWithImpl(
      _$_ListData _value, $Res Function(_$_ListData) _then)
      : super(_value, (v) => _then(v as _$_ListData));

  @override
  _$_ListData get _value => super._value as _$_ListData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? ownerId = freezed,
    Object? followerCount = freezed,
    Object? memberCount = freezed,
    Object? isPrivate = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_ListData(
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
              as String?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      followerCount: followerCount == freezed
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      memberCount: memberCount == freezed
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListData implements _ListData {
  const _$_ListData(
      {required this.id,
      required this.name,
      this.description,
      this.ownerId,
      this.followerCount,
      this.memberCount,
      @JsonKey(name: 'private') this.isPrivate,
      this.createdAt});

  factory _$_ListData.fromJson(Map<String, dynamic> json) =>
      _$$_ListDataFromJson(json);

  /// The unique identifier of this List.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to programmatically retrieve information about a specific
  ///   Twitter List.
  @override
  final String id;

  /// The name of the List, as defined when creating the List.
  @override
  final String name;

  /// A brief description to let users know about the List.
  @override
  final String? description;

  /// Unique identifier of this List's owner.
  ///
  /// ## How It Can Be Used
  ///
  /// - Returns the List owner ID. Can potentially be used to find out if
  ///   this specific user owns any other Lists. Can also be used to expand
  ///   user objects.
  @override
  final String? ownerId;

  /// Shows how many users follow this List.
  @override
  final int? followerCount;

  /// Shows how many members are part of this List.
  @override
  final int? memberCount;

  /// Indicates if the List is private.
  @override
  @JsonKey(name: 'private')
  final bool? isPrivate;

  /// The UTC date time that the List was created on Twitter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to determine how long a List has been on Twitter.
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ListData(id: $id, name: $name, description: $description, ownerId: $ownerId, followerCount: $followerCount, memberCount: $memberCount, isPrivate: $isPrivate, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality()
                .equals(other.followerCount, followerCount) &&
            const DeepCollectionEquality()
                .equals(other.memberCount, memberCount) &&
            const DeepCollectionEquality().equals(other.isPrivate, isPrivate) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(followerCount),
      const DeepCollectionEquality().hash(memberCount),
      const DeepCollectionEquality().hash(isPrivate),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_ListDataCopyWith<_$_ListData> get copyWith =>
      __$$_ListDataCopyWithImpl<_$_ListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListDataToJson(
      this,
    );
  }
}

abstract class _ListData implements ListData {
  const factory _ListData(
      {required final String id,
      required final String name,
      final String? description,
      final String? ownerId,
      final int? followerCount,
      final int? memberCount,
      @JsonKey(name: 'private') final bool? isPrivate,
      final DateTime? createdAt}) = _$_ListData;

  factory _ListData.fromJson(Map<String, dynamic> json) = _$_ListData.fromJson;

  @override

  /// The unique identifier of this List.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to programmatically retrieve information about a specific
  ///   Twitter List.
  String get id;
  @override

  /// The name of the List, as defined when creating the List.
  String get name;
  @override

  /// A brief description to let users know about the List.
  String? get description;
  @override

  /// Unique identifier of this List's owner.
  ///
  /// ## How It Can Be Used
  ///
  /// - Returns the List owner ID. Can potentially be used to find out if
  ///   this specific user owns any other Lists. Can also be used to expand
  ///   user objects.
  String? get ownerId;
  @override

  /// Shows how many users follow this List.
  int? get followerCount;
  @override

  /// Shows how many members are part of this List.
  int? get memberCount;
  @override

  /// Indicates if the List is private.
  @JsonKey(name: 'private')
  bool? get isPrivate;
  @override

  /// The UTC date time that the List was created on Twitter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to determine how long a List has been on Twitter.
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ListDataCopyWith<_$_ListData> get copyWith =>
      throw _privateConstructorUsedError;
}
