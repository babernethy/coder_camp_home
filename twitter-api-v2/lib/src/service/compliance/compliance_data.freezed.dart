// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'compliance_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComplianceData _$ComplianceDataFromJson(Map<String, dynamic> json) {
  return _ComplianceData.fromJson(json);
}

/// @nodoc
mixin _$ComplianceData {
  /// The unique identifier for this job.
  String get id => throw _privateConstructorUsedError;

  /// The type of the job, whether tweets or users.
  JobType get type => throw _privateConstructorUsedError;

  /// Current status of this job.
  JobStatus get status => throw _privateConstructorUsedError;

  /// Indicates this job is enabled the upload URL with support for resumable
  /// uploads.
  bool get resumable => throw _privateConstructorUsedError;

  /// A URL representing the location where to upload IDs consumed by your
  /// app. This URL is already signed with an authentication key, so you
  /// will not need to pass any additional credentials or headers to
  /// authenticate the request.
  String get uploadUrl => throw _privateConstructorUsedError;

  /// The predefined location where to download the results from the
  /// compliance job. This URL is already signed with an authentication key,
  /// so you will not need to pass any additional credential or header to
  /// authenticate the request.
  String get downloadUrl => throw _privateConstructorUsedError;

  /// The date and time until which the upload URL will be available
  /// (usually 15 minutes from the request time).
  DateTime get uploadExpiresAt => throw _privateConstructorUsedError;

  /// The date and time until which the download URL will be available
  /// (usually 7 days from the request time).
  DateTime get downloadExpiresAt => throw _privateConstructorUsedError;

  /// The date and time when the job was created.
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplianceDataCopyWith<ComplianceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplianceDataCopyWith<$Res> {
  factory $ComplianceDataCopyWith(
          ComplianceData value, $Res Function(ComplianceData) then) =
      _$ComplianceDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      JobType type,
      JobStatus status,
      bool resumable,
      String uploadUrl,
      String downloadUrl,
      DateTime uploadExpiresAt,
      DateTime downloadExpiresAt,
      DateTime createdAt});
}

/// @nodoc
class _$ComplianceDataCopyWithImpl<$Res>
    implements $ComplianceDataCopyWith<$Res> {
  _$ComplianceDataCopyWithImpl(this._value, this._then);

  final ComplianceData _value;
  // ignore: unused_field
  final $Res Function(ComplianceData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? resumable = freezed,
    Object? uploadUrl = freezed,
    Object? downloadUrl = freezed,
    Object? uploadExpiresAt = freezed,
    Object? downloadExpiresAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as JobType,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobStatus,
      resumable: resumable == freezed
          ? _value.resumable
          : resumable // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadUrl: uploadUrl == freezed
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      uploadExpiresAt: uploadExpiresAt == freezed
          ? _value.uploadExpiresAt
          : uploadExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      downloadExpiresAt: downloadExpiresAt == freezed
          ? _value.downloadExpiresAt
          : downloadExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ComplianceDataCopyWith<$Res>
    implements $ComplianceDataCopyWith<$Res> {
  factory _$$_ComplianceDataCopyWith(
          _$_ComplianceData value, $Res Function(_$_ComplianceData) then) =
      __$$_ComplianceDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      JobType type,
      JobStatus status,
      bool resumable,
      String uploadUrl,
      String downloadUrl,
      DateTime uploadExpiresAt,
      DateTime downloadExpiresAt,
      DateTime createdAt});
}

/// @nodoc
class __$$_ComplianceDataCopyWithImpl<$Res>
    extends _$ComplianceDataCopyWithImpl<$Res>
    implements _$$_ComplianceDataCopyWith<$Res> {
  __$$_ComplianceDataCopyWithImpl(
      _$_ComplianceData _value, $Res Function(_$_ComplianceData) _then)
      : super(_value, (v) => _then(v as _$_ComplianceData));

  @override
  _$_ComplianceData get _value => super._value as _$_ComplianceData;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? resumable = freezed,
    Object? uploadUrl = freezed,
    Object? downloadUrl = freezed,
    Object? uploadExpiresAt = freezed,
    Object? downloadExpiresAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_ComplianceData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as JobType,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobStatus,
      resumable: resumable == freezed
          ? _value.resumable
          : resumable // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadUrl: uploadUrl == freezed
          ? _value.uploadUrl
          : uploadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      uploadExpiresAt: uploadExpiresAt == freezed
          ? _value.uploadExpiresAt
          : uploadExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      downloadExpiresAt: downloadExpiresAt == freezed
          ? _value.downloadExpiresAt
          : downloadExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComplianceData implements _ComplianceData {
  const _$_ComplianceData(
      {required this.id,
      required this.type,
      required this.status,
      required this.resumable,
      required this.uploadUrl,
      required this.downloadUrl,
      required this.uploadExpiresAt,
      required this.downloadExpiresAt,
      required this.createdAt});

  factory _$_ComplianceData.fromJson(Map<String, dynamic> json) =>
      _$$_ComplianceDataFromJson(json);

  /// The unique identifier for this job.
  @override
  final String id;

  /// The type of the job, whether tweets or users.
  @override
  final JobType type;

  /// Current status of this job.
  @override
  final JobStatus status;

  /// Indicates this job is enabled the upload URL with support for resumable
  /// uploads.
  @override
  final bool resumable;

  /// A URL representing the location where to upload IDs consumed by your
  /// app. This URL is already signed with an authentication key, so you
  /// will not need to pass any additional credentials or headers to
  /// authenticate the request.
  @override
  final String uploadUrl;

  /// The predefined location where to download the results from the
  /// compliance job. This URL is already signed with an authentication key,
  /// so you will not need to pass any additional credential or header to
  /// authenticate the request.
  @override
  final String downloadUrl;

  /// The date and time until which the upload URL will be available
  /// (usually 15 minutes from the request time).
  @override
  final DateTime uploadExpiresAt;

  /// The date and time until which the download URL will be available
  /// (usually 7 days from the request time).
  @override
  final DateTime downloadExpiresAt;

  /// The date and time when the job was created.
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ComplianceData(id: $id, type: $type, status: $status, resumable: $resumable, uploadUrl: $uploadUrl, downloadUrl: $downloadUrl, uploadExpiresAt: $uploadExpiresAt, downloadExpiresAt: $downloadExpiresAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComplianceData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.resumable, resumable) &&
            const DeepCollectionEquality().equals(other.uploadUrl, uploadUrl) &&
            const DeepCollectionEquality()
                .equals(other.downloadUrl, downloadUrl) &&
            const DeepCollectionEquality()
                .equals(other.uploadExpiresAt, uploadExpiresAt) &&
            const DeepCollectionEquality()
                .equals(other.downloadExpiresAt, downloadExpiresAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(resumable),
      const DeepCollectionEquality().hash(uploadUrl),
      const DeepCollectionEquality().hash(downloadUrl),
      const DeepCollectionEquality().hash(uploadExpiresAt),
      const DeepCollectionEquality().hash(downloadExpiresAt),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_ComplianceDataCopyWith<_$_ComplianceData> get copyWith =>
      __$$_ComplianceDataCopyWithImpl<_$_ComplianceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComplianceDataToJson(
      this,
    );
  }
}

abstract class _ComplianceData implements ComplianceData {
  const factory _ComplianceData(
      {required final String id,
      required final JobType type,
      required final JobStatus status,
      required final bool resumable,
      required final String uploadUrl,
      required final String downloadUrl,
      required final DateTime uploadExpiresAt,
      required final DateTime downloadExpiresAt,
      required final DateTime createdAt}) = _$_ComplianceData;

  factory _ComplianceData.fromJson(Map<String, dynamic> json) =
      _$_ComplianceData.fromJson;

  @override

  /// The unique identifier for this job.
  String get id;
  @override

  /// The type of the job, whether tweets or users.
  JobType get type;
  @override

  /// Current status of this job.
  JobStatus get status;
  @override

  /// Indicates this job is enabled the upload URL with support for resumable
  /// uploads.
  bool get resumable;
  @override

  /// A URL representing the location where to upload IDs consumed by your
  /// app. This URL is already signed with an authentication key, so you
  /// will not need to pass any additional credentials or headers to
  /// authenticate the request.
  String get uploadUrl;
  @override

  /// The predefined location where to download the results from the
  /// compliance job. This URL is already signed with an authentication key,
  /// so you will not need to pass any additional credential or header to
  /// authenticate the request.
  String get downloadUrl;
  @override

  /// The date and time until which the upload URL will be available
  /// (usually 15 minutes from the request time).
  DateTime get uploadExpiresAt;
  @override

  /// The date and time until which the download URL will be available
  /// (usually 7 days from the request time).
  DateTime get downloadExpiresAt;
  @override

  /// The date and time when the job was created.
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ComplianceDataCopyWith<_$_ComplianceData> get copyWith =>
      throw _privateConstructorUsedError;
}
