// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  /// The unique identifier of this user.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to programmatically retrieve information about a specific
  ///   Twitter user.
  String get id => throw _privateConstructorUsedError;

  /// The name of the user, as they’ve defined it on their profile.
  /// Not necessarily a person’s name. Typically capped at 50 characters,
  /// but subject to change.
  String get name => throw _privateConstructorUsedError;

  /// The Twitter screen name, handle, or alias that this user identifies
  /// themselves with. Usernames are unique but subject to change. Typically
  ///  a maximum of 15 characters long, but some historical accounts may exist
  /// with longer names.
  String get username => throw _privateConstructorUsedError;

  /// The text of this user's profile description (also known as bio),
  /// if the user provided one.
  String? get description => throw _privateConstructorUsedError;

  /// The URL specified in the user's profile, if present.
  ///
  /// ## How It Can Be Used
  ///
  /// - A URL provided by a Twitter user in their profile.
  ///   This could be a homepage, but is not always the case.
  String? get url => throw _privateConstructorUsedError;

  /// The URL to the profile image for this user, as shown on the user's
  /// profile.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to download this user's profile image.
  String? get profileImageUrl => throw _privateConstructorUsedError;

  /// The location specified in the user's profile, if the user provided one.
  /// As this is a freeform value, it may not indicate a valid location,
  /// but it may be fuzzily evaluated when performing searches with
  /// location queries.
  String? get location => throw _privateConstructorUsedError;

  /// Indicates if this user has chosen to protect their Tweets
  /// (in other words, if this user's Tweets are private).
  @JsonKey(name: 'protected')
  bool? get isProtected => throw _privateConstructorUsedError;

  /// Indicates if this user is a verified Twitter User.
  ///
  /// ## How It Can Be Used
  ///
  /// - Indicates whether or not this Twitter user has a verified account.
  ///   A verified account lets people know that an account of public
  ///   interest is authentic.
  @JsonKey(name: 'verified')
  bool? get isVerified => throw _privateConstructorUsedError;

  /// Unique identifier of this user's pinned Tweet.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine the Tweet pinned to the top of the user’s profile.
  ///   Can potentially be used to determine the user’s language.
  String? get pinnedTweetId => throw _privateConstructorUsedError;

  /// Contains details about text that has a special meaning in the user's
  /// description.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entities are objects that provide additional information about
  ///   hashtags, urls, user mentions, and cashtags associated with the
  ///   description. Reference each respective entity for further details. All
  ///   user start indices are inclusive, while all user end indices are
  ///   exclusive.
  UserEntities? get entities => throw _privateConstructorUsedError;

  /// Contains details about activity for this user.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can potentially be used to determine a Twitter user’s reach or
  ///   influence, quantify the user’s range of interests, and the user’s
  ///   level of engagement on Twitter.
  PublicUserMetrics? get publicMetrics => throw _privateConstructorUsedError;

  /// The UTC date time that the user account was created on Twitter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to determine how long a someone has been using Twitter.
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Contains withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country), if applicable.
  UserWithheld? get withheld => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String username,
      String? description,
      String? url,
      String? profileImageUrl,
      String? location,
      @JsonKey(name: 'protected') bool? isProtected,
      @JsonKey(name: 'verified') bool? isVerified,
      String? pinnedTweetId,
      UserEntities? entities,
      PublicUserMetrics? publicMetrics,
      DateTime? createdAt,
      UserWithheld? withheld});

  $UserEntitiesCopyWith<$Res>? get entities;
  $PublicUserMetricsCopyWith<$Res>? get publicMetrics;
  $UserWithheldCopyWith<$Res>? get withheld;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? profileImageUrl = freezed,
    Object? location = freezed,
    Object? isProtected = freezed,
    Object? isVerified = freezed,
    Object? pinnedTweetId = freezed,
    Object? entities = freezed,
    Object? publicMetrics = freezed,
    Object? createdAt = freezed,
    Object? withheld = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isProtected: isProtected == freezed
          ? _value.isProtected
          : isProtected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinnedTweetId: pinnedTweetId == freezed
          ? _value.pinnedTweetId
          : pinnedTweetId // ignore: cast_nullable_to_non_nullable
              as String?,
      entities: entities == freezed
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicUserMetrics?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as UserWithheld?,
    ));
  }

  @override
  $UserEntitiesCopyWith<$Res>? get entities {
    if (_value.entities == null) {
      return null;
    }

    return $UserEntitiesCopyWith<$Res>(_value.entities!, (value) {
      return _then(_value.copyWith(entities: value));
    });
  }

  @override
  $PublicUserMetricsCopyWith<$Res>? get publicMetrics {
    if (_value.publicMetrics == null) {
      return null;
    }

    return $PublicUserMetricsCopyWith<$Res>(_value.publicMetrics!, (value) {
      return _then(_value.copyWith(publicMetrics: value));
    });
  }

  @override
  $UserWithheldCopyWith<$Res>? get withheld {
    if (_value.withheld == null) {
      return null;
    }

    return $UserWithheldCopyWith<$Res>(_value.withheld!, (value) {
      return _then(_value.copyWith(withheld: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String username,
      String? description,
      String? url,
      String? profileImageUrl,
      String? location,
      @JsonKey(name: 'protected') bool? isProtected,
      @JsonKey(name: 'verified') bool? isVerified,
      String? pinnedTweetId,
      UserEntities? entities,
      PublicUserMetrics? publicMetrics,
      DateTime? createdAt,
      UserWithheld? withheld});

  @override
  $UserEntitiesCopyWith<$Res>? get entities;
  @override
  $PublicUserMetricsCopyWith<$Res>? get publicMetrics;
  @override
  $UserWithheldCopyWith<$Res>? get withheld;
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, (v) => _then(v as _$_UserData));

  @override
  _$_UserData get _value => super._value as _$_UserData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? profileImageUrl = freezed,
    Object? location = freezed,
    Object? isProtected = freezed,
    Object? isVerified = freezed,
    Object? pinnedTweetId = freezed,
    Object? entities = freezed,
    Object? publicMetrics = freezed,
    Object? createdAt = freezed,
    Object? withheld = freezed,
  }) {
    return _then(_$_UserData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isProtected: isProtected == freezed
          ? _value.isProtected
          : isProtected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinnedTweetId: pinnedTweetId == freezed
          ? _value.pinnedTweetId
          : pinnedTweetId // ignore: cast_nullable_to_non_nullable
              as String?,
      entities: entities == freezed
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicUserMetrics?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as UserWithheld?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData implements _UserData {
  const _$_UserData(
      {required this.id,
      required this.name,
      required this.username,
      this.description,
      this.url,
      this.profileImageUrl,
      this.location,
      @JsonKey(name: 'protected') this.isProtected,
      @JsonKey(name: 'verified') this.isVerified,
      this.pinnedTweetId,
      this.entities,
      this.publicMetrics,
      this.createdAt,
      this.withheld});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  /// The unique identifier of this user.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to programmatically retrieve information about a specific
  ///   Twitter user.
  @override
  final String id;

  /// The name of the user, as they’ve defined it on their profile.
  /// Not necessarily a person’s name. Typically capped at 50 characters,
  /// but subject to change.
  @override
  final String name;

  /// The Twitter screen name, handle, or alias that this user identifies
  /// themselves with. Usernames are unique but subject to change. Typically
  ///  a maximum of 15 characters long, but some historical accounts may exist
  /// with longer names.
  @override
  final String username;

  /// The text of this user's profile description (also known as bio),
  /// if the user provided one.
  @override
  final String? description;

  /// The URL specified in the user's profile, if present.
  ///
  /// ## How It Can Be Used
  ///
  /// - A URL provided by a Twitter user in their profile.
  ///   This could be a homepage, but is not always the case.
  @override
  final String? url;

  /// The URL to the profile image for this user, as shown on the user's
  /// profile.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to download this user's profile image.
  @override
  final String? profileImageUrl;

  /// The location specified in the user's profile, if the user provided one.
  /// As this is a freeform value, it may not indicate a valid location,
  /// but it may be fuzzily evaluated when performing searches with
  /// location queries.
  @override
  final String? location;

  /// Indicates if this user has chosen to protect their Tweets
  /// (in other words, if this user's Tweets are private).
  @override
  @JsonKey(name: 'protected')
  final bool? isProtected;

  /// Indicates if this user is a verified Twitter User.
  ///
  /// ## How It Can Be Used
  ///
  /// - Indicates whether or not this Twitter user has a verified account.
  ///   A verified account lets people know that an account of public
  ///   interest is authentic.
  @override
  @JsonKey(name: 'verified')
  final bool? isVerified;

  /// Unique identifier of this user's pinned Tweet.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine the Tweet pinned to the top of the user’s profile.
  ///   Can potentially be used to determine the user’s language.
  @override
  final String? pinnedTweetId;

  /// Contains details about text that has a special meaning in the user's
  /// description.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entities are objects that provide additional information about
  ///   hashtags, urls, user mentions, and cashtags associated with the
  ///   description. Reference each respective entity for further details. All
  ///   user start indices are inclusive, while all user end indices are
  ///   exclusive.
  @override
  final UserEntities? entities;

  /// Contains details about activity for this user.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can potentially be used to determine a Twitter user’s reach or
  ///   influence, quantify the user’s range of interests, and the user’s
  ///   level of engagement on Twitter.
  @override
  final PublicUserMetrics? publicMetrics;

  /// The UTC date time that the user account was created on Twitter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to determine how long a someone has been using Twitter.
  @override
  final DateTime? createdAt;

  /// Contains withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country), if applicable.
  @override
  final UserWithheld? withheld;

  @override
  String toString() {
    return 'UserData(id: $id, name: $name, username: $username, description: $description, url: $url, profileImageUrl: $profileImageUrl, location: $location, isProtected: $isProtected, isVerified: $isVerified, pinnedTweetId: $pinnedTweetId, entities: $entities, publicMetrics: $publicMetrics, createdAt: $createdAt, withheld: $withheld)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.profileImageUrl, profileImageUrl) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.isProtected, isProtected) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified) &&
            const DeepCollectionEquality()
                .equals(other.pinnedTweetId, pinnedTweetId) &&
            const DeepCollectionEquality().equals(other.entities, entities) &&
            const DeepCollectionEquality()
                .equals(other.publicMetrics, publicMetrics) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.withheld, withheld));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(profileImageUrl),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(isProtected),
      const DeepCollectionEquality().hash(isVerified),
      const DeepCollectionEquality().hash(pinnedTweetId),
      const DeepCollectionEquality().hash(entities),
      const DeepCollectionEquality().hash(publicMetrics),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(withheld));

  @JsonKey(ignore: true)
  @override
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String id,
      required final String name,
      required final String username,
      final String? description,
      final String? url,
      final String? profileImageUrl,
      final String? location,
      @JsonKey(name: 'protected') final bool? isProtected,
      @JsonKey(name: 'verified') final bool? isVerified,
      final String? pinnedTweetId,
      final UserEntities? entities,
      final PublicUserMetrics? publicMetrics,
      final DateTime? createdAt,
      final UserWithheld? withheld}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override

  /// The unique identifier of this user.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to programmatically retrieve information about a specific
  ///   Twitter user.
  String get id;
  @override

  /// The name of the user, as they’ve defined it on their profile.
  /// Not necessarily a person’s name. Typically capped at 50 characters,
  /// but subject to change.
  String get name;
  @override

  /// The Twitter screen name, handle, or alias that this user identifies
  /// themselves with. Usernames are unique but subject to change. Typically
  ///  a maximum of 15 characters long, but some historical accounts may exist
  /// with longer names.
  String get username;
  @override

  /// The text of this user's profile description (also known as bio),
  /// if the user provided one.
  String? get description;
  @override

  /// The URL specified in the user's profile, if present.
  ///
  /// ## How It Can Be Used
  ///
  /// - A URL provided by a Twitter user in their profile.
  ///   This could be a homepage, but is not always the case.
  String? get url;
  @override

  /// The URL to the profile image for this user, as shown on the user's
  /// profile.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to download this user's profile image.
  String? get profileImageUrl;
  @override

  /// The location specified in the user's profile, if the user provided one.
  /// As this is a freeform value, it may not indicate a valid location,
  /// but it may be fuzzily evaluated when performing searches with
  /// location queries.
  String? get location;
  @override

  /// Indicates if this user has chosen to protect their Tweets
  /// (in other words, if this user's Tweets are private).
  @JsonKey(name: 'protected')
  bool? get isProtected;
  @override

  /// Indicates if this user is a verified Twitter User.
  ///
  /// ## How It Can Be Used
  ///
  /// - Indicates whether or not this Twitter user has a verified account.
  ///   A verified account lets people know that an account of public
  ///   interest is authentic.
  @JsonKey(name: 'verified')
  bool? get isVerified;
  @override

  /// Unique identifier of this user's pinned Tweet.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine the Tweet pinned to the top of the user’s profile.
  ///   Can potentially be used to determine the user’s language.
  String? get pinnedTweetId;
  @override

  /// Contains details about text that has a special meaning in the user's
  /// description.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entities are objects that provide additional information about
  ///   hashtags, urls, user mentions, and cashtags associated with the
  ///   description. Reference each respective entity for further details. All
  ///   user start indices are inclusive, while all user end indices are
  ///   exclusive.
  UserEntities? get entities;
  @override

  /// Contains details about activity for this user.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can potentially be used to determine a Twitter user’s reach or
  ///   influence, quantify the user’s range of interests, and the user’s
  ///   level of engagement on Twitter.
  PublicUserMetrics? get publicMetrics;
  @override

  /// The UTC date time that the user account was created on Twitter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to determine how long a someone has been using Twitter.
  DateTime? get createdAt;
  @override

  /// Contains withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country), if applicable.
  UserWithheld? get withheld;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
