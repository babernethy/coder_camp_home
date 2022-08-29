// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'media_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaData _$MediaDataFromJson(Map<String, dynamic> json) {
  return _MediaData.fromJson(json);
}

/// @nodoc
mixin _$MediaData {
  /// Unique identifier of the expanded media content.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to programmatically retrieve media.
  @JsonKey(name: 'media_key')
  String get key => throw _privateConstructorUsedError;

  /// Type of content (animated_gif, photo, video).
  ///
  /// ## How It Can Be Used
  ///
  /// - Classify the media as a photo, GIF, or video.
  MediaType get type => throw _privateConstructorUsedError;

  /// A direct URL to the media file on Twitter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Returns a Media object with a URL field for photos.
  String? get url => throw _privateConstructorUsedError;

  /// A description of an image to enable and support accessibility. Can be
  /// up to 1000 characters long. Alt text can only be added to images at
  /// the moment.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to provide a written description of an image in case a
  ///   user is visually impaired.
  String? get altText => throw _privateConstructorUsedError;

  /// Available when type is video. Duration in milliseconds of the video.
  @JsonKey(name: 'duration_ms')
  int? get durationMilliseconds => throw _privateConstructorUsedError;

  /// Height of this content in pixels.
  int? get height => throw _privateConstructorUsedError;

  /// Width of this content in pixels.
  int? get width => throw _privateConstructorUsedError;

  /// Non-public engagement metrics for the media content at the time of the
  /// request. Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine video engagement: how many users played through to each
  ///   quarter of the video.
  @JsonKey(name: 'non_public_metrics')
  PrivateMediaMetrics? get privateMetrics => throw _privateConstructorUsedError;

  /// Engagement metrics for the media content, tracked in an organic context,
  /// at the time of the request. Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine organic media engagement.
  OrganicMediaMetrics? get organicMetrics => throw _privateConstructorUsedError;

  /// URL to the static placeholder preview of this content.
  String? get previewImageUrl => throw _privateConstructorUsedError;

  /// Engagement metrics for the media content, tracked in a promoted context,
  /// at the time of the request. Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine media engagement when the Tweet was promoted.
  PromotedMediaMetrics? get promotedMetrics =>
      throw _privateConstructorUsedError;

  /// Public engagement metrics for the media content at the time of the
  /// request.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine total number of views for the video attached to the Tweet.
  PublicMediaMetrics? get publicMetrics => throw _privateConstructorUsedError;

  /// Variants of media attached in the MediaObject.
  ///
  /// ## How It Can Be Used
  ///
  /// - Each media object may have multiple display or playback variants,
  ///   with different resolutions or formats.
  List<Variant>? get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaDataCopyWith<MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDataCopyWith<$Res> {
  factory $MediaDataCopyWith(MediaData value, $Res Function(MediaData) then) =
      _$MediaDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'media_key') String key,
      MediaType type,
      String? url,
      String? altText,
      @JsonKey(name: 'duration_ms') int? durationMilliseconds,
      int? height,
      int? width,
      @JsonKey(name: 'non_public_metrics') PrivateMediaMetrics? privateMetrics,
      OrganicMediaMetrics? organicMetrics,
      String? previewImageUrl,
      PromotedMediaMetrics? promotedMetrics,
      PublicMediaMetrics? publicMetrics,
      List<Variant>? variants});

  $PrivateMediaMetricsCopyWith<$Res>? get privateMetrics;
  $OrganicMediaMetricsCopyWith<$Res>? get organicMetrics;
  $PromotedMediaMetricsCopyWith<$Res>? get promotedMetrics;
  $PublicMediaMetricsCopyWith<$Res>? get publicMetrics;
}

/// @nodoc
class _$MediaDataCopyWithImpl<$Res> implements $MediaDataCopyWith<$Res> {
  _$MediaDataCopyWithImpl(this._value, this._then);

  final MediaData _value;
  // ignore: unused_field
  final $Res Function(MediaData) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? type = freezed,
    Object? url = freezed,
    Object? altText = freezed,
    Object? durationMilliseconds = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? privateMetrics = freezed,
    Object? organicMetrics = freezed,
    Object? previewImageUrl = freezed,
    Object? promotedMetrics = freezed,
    Object? publicMetrics = freezed,
    Object? variants = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      altText: altText == freezed
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMilliseconds: durationMilliseconds == freezed
          ? _value.durationMilliseconds
          : durationMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      privateMetrics: privateMetrics == freezed
          ? _value.privateMetrics
          : privateMetrics // ignore: cast_nullable_to_non_nullable
              as PrivateMediaMetrics?,
      organicMetrics: organicMetrics == freezed
          ? _value.organicMetrics
          : organicMetrics // ignore: cast_nullable_to_non_nullable
              as OrganicMediaMetrics?,
      previewImageUrl: previewImageUrl == freezed
          ? _value.previewImageUrl
          : previewImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      promotedMetrics: promotedMetrics == freezed
          ? _value.promotedMetrics
          : promotedMetrics // ignore: cast_nullable_to_non_nullable
              as PromotedMediaMetrics?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicMediaMetrics?,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
    ));
  }

  @override
  $PrivateMediaMetricsCopyWith<$Res>? get privateMetrics {
    if (_value.privateMetrics == null) {
      return null;
    }

    return $PrivateMediaMetricsCopyWith<$Res>(_value.privateMetrics!, (value) {
      return _then(_value.copyWith(privateMetrics: value));
    });
  }

  @override
  $OrganicMediaMetricsCopyWith<$Res>? get organicMetrics {
    if (_value.organicMetrics == null) {
      return null;
    }

    return $OrganicMediaMetricsCopyWith<$Res>(_value.organicMetrics!, (value) {
      return _then(_value.copyWith(organicMetrics: value));
    });
  }

  @override
  $PromotedMediaMetricsCopyWith<$Res>? get promotedMetrics {
    if (_value.promotedMetrics == null) {
      return null;
    }

    return $PromotedMediaMetricsCopyWith<$Res>(_value.promotedMetrics!,
        (value) {
      return _then(_value.copyWith(promotedMetrics: value));
    });
  }

  @override
  $PublicMediaMetricsCopyWith<$Res>? get publicMetrics {
    if (_value.publicMetrics == null) {
      return null;
    }

    return $PublicMediaMetricsCopyWith<$Res>(_value.publicMetrics!, (value) {
      return _then(_value.copyWith(publicMetrics: value));
    });
  }
}

/// @nodoc
abstract class _$$_MediaDataCopyWith<$Res> implements $MediaDataCopyWith<$Res> {
  factory _$$_MediaDataCopyWith(
          _$_MediaData value, $Res Function(_$_MediaData) then) =
      __$$_MediaDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'media_key') String key,
      MediaType type,
      String? url,
      String? altText,
      @JsonKey(name: 'duration_ms') int? durationMilliseconds,
      int? height,
      int? width,
      @JsonKey(name: 'non_public_metrics') PrivateMediaMetrics? privateMetrics,
      OrganicMediaMetrics? organicMetrics,
      String? previewImageUrl,
      PromotedMediaMetrics? promotedMetrics,
      PublicMediaMetrics? publicMetrics,
      List<Variant>? variants});

  @override
  $PrivateMediaMetricsCopyWith<$Res>? get privateMetrics;
  @override
  $OrganicMediaMetricsCopyWith<$Res>? get organicMetrics;
  @override
  $PromotedMediaMetricsCopyWith<$Res>? get promotedMetrics;
  @override
  $PublicMediaMetricsCopyWith<$Res>? get publicMetrics;
}

/// @nodoc
class __$$_MediaDataCopyWithImpl<$Res> extends _$MediaDataCopyWithImpl<$Res>
    implements _$$_MediaDataCopyWith<$Res> {
  __$$_MediaDataCopyWithImpl(
      _$_MediaData _value, $Res Function(_$_MediaData) _then)
      : super(_value, (v) => _then(v as _$_MediaData));

  @override
  _$_MediaData get _value => super._value as _$_MediaData;

  @override
  $Res call({
    Object? key = freezed,
    Object? type = freezed,
    Object? url = freezed,
    Object? altText = freezed,
    Object? durationMilliseconds = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? privateMetrics = freezed,
    Object? organicMetrics = freezed,
    Object? previewImageUrl = freezed,
    Object? promotedMetrics = freezed,
    Object? publicMetrics = freezed,
    Object? variants = freezed,
  }) {
    return _then(_$_MediaData(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      altText: altText == freezed
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMilliseconds: durationMilliseconds == freezed
          ? _value.durationMilliseconds
          : durationMilliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      privateMetrics: privateMetrics == freezed
          ? _value.privateMetrics
          : privateMetrics // ignore: cast_nullable_to_non_nullable
              as PrivateMediaMetrics?,
      organicMetrics: organicMetrics == freezed
          ? _value.organicMetrics
          : organicMetrics // ignore: cast_nullable_to_non_nullable
              as OrganicMediaMetrics?,
      previewImageUrl: previewImageUrl == freezed
          ? _value.previewImageUrl
          : previewImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      promotedMetrics: promotedMetrics == freezed
          ? _value.promotedMetrics
          : promotedMetrics // ignore: cast_nullable_to_non_nullable
              as PromotedMediaMetrics?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicMediaMetrics?,
      variants: variants == freezed
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaData implements _MediaData {
  const _$_MediaData(
      {@JsonKey(name: 'media_key') required this.key,
      required this.type,
      this.url,
      this.altText,
      @JsonKey(name: 'duration_ms') this.durationMilliseconds,
      this.height,
      this.width,
      @JsonKey(name: 'non_public_metrics') this.privateMetrics,
      this.organicMetrics,
      this.previewImageUrl,
      this.promotedMetrics,
      this.publicMetrics,
      final List<Variant>? variants})
      : _variants = variants;

  factory _$_MediaData.fromJson(Map<String, dynamic> json) =>
      _$$_MediaDataFromJson(json);

  /// Unique identifier of the expanded media content.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to programmatically retrieve media.
  @override
  @JsonKey(name: 'media_key')
  final String key;

  /// Type of content (animated_gif, photo, video).
  ///
  /// ## How It Can Be Used
  ///
  /// - Classify the media as a photo, GIF, or video.
  @override
  final MediaType type;

  /// A direct URL to the media file on Twitter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Returns a Media object with a URL field for photos.
  @override
  final String? url;

  /// A description of an image to enable and support accessibility. Can be
  /// up to 1000 characters long. Alt text can only be added to images at
  /// the moment.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to provide a written description of an image in case a
  ///   user is visually impaired.
  @override
  final String? altText;

  /// Available when type is video. Duration in milliseconds of the video.
  @override
  @JsonKey(name: 'duration_ms')
  final int? durationMilliseconds;

  /// Height of this content in pixels.
  @override
  final int? height;

  /// Width of this content in pixels.
  @override
  final int? width;

  /// Non-public engagement metrics for the media content at the time of the
  /// request. Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine video engagement: how many users played through to each
  ///   quarter of the video.
  @override
  @JsonKey(name: 'non_public_metrics')
  final PrivateMediaMetrics? privateMetrics;

  /// Engagement metrics for the media content, tracked in an organic context,
  /// at the time of the request. Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine organic media engagement.
  @override
  final OrganicMediaMetrics? organicMetrics;

  /// URL to the static placeholder preview of this content.
  @override
  final String? previewImageUrl;

  /// Engagement metrics for the media content, tracked in a promoted context,
  /// at the time of the request. Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine media engagement when the Tweet was promoted.
  @override
  final PromotedMediaMetrics? promotedMetrics;

  /// Public engagement metrics for the media content at the time of the
  /// request.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine total number of views for the video attached to the Tweet.
  @override
  final PublicMediaMetrics? publicMetrics;

  /// Variants of media attached in the MediaObject.
  ///
  /// ## How It Can Be Used
  ///
  /// - Each media object may have multiple display or playback variants,
  ///   with different resolutions or formats.
  final List<Variant>? _variants;

  /// Variants of media attached in the MediaObject.
  ///
  /// ## How It Can Be Used
  ///
  /// - Each media object may have multiple display or playback variants,
  ///   with different resolutions or formats.
  @override
  List<Variant>? get variants {
    final value = _variants;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MediaData(key: $key, type: $type, url: $url, altText: $altText, durationMilliseconds: $durationMilliseconds, height: $height, width: $width, privateMetrics: $privateMetrics, organicMetrics: $organicMetrics, previewImageUrl: $previewImageUrl, promotedMetrics: $promotedMetrics, publicMetrics: $publicMetrics, variants: $variants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaData &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.altText, altText) &&
            const DeepCollectionEquality()
                .equals(other.durationMilliseconds, durationMilliseconds) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality()
                .equals(other.privateMetrics, privateMetrics) &&
            const DeepCollectionEquality()
                .equals(other.organicMetrics, organicMetrics) &&
            const DeepCollectionEquality()
                .equals(other.previewImageUrl, previewImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.promotedMetrics, promotedMetrics) &&
            const DeepCollectionEquality()
                .equals(other.publicMetrics, publicMetrics) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(altText),
      const DeepCollectionEquality().hash(durationMilliseconds),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(privateMetrics),
      const DeepCollectionEquality().hash(organicMetrics),
      const DeepCollectionEquality().hash(previewImageUrl),
      const DeepCollectionEquality().hash(promotedMetrics),
      const DeepCollectionEquality().hash(publicMetrics),
      const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  _$$_MediaDataCopyWith<_$_MediaData> get copyWith =>
      __$$_MediaDataCopyWithImpl<_$_MediaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaDataToJson(
      this,
    );
  }
}

abstract class _MediaData implements MediaData {
  const factory _MediaData(
      {@JsonKey(name: 'media_key')
          required final String key,
      required final MediaType type,
      final String? url,
      final String? altText,
      @JsonKey(name: 'duration_ms')
          final int? durationMilliseconds,
      final int? height,
      final int? width,
      @JsonKey(name: 'non_public_metrics')
          final PrivateMediaMetrics? privateMetrics,
      final OrganicMediaMetrics? organicMetrics,
      final String? previewImageUrl,
      final PromotedMediaMetrics? promotedMetrics,
      final PublicMediaMetrics? publicMetrics,
      final List<Variant>? variants}) = _$_MediaData;

  factory _MediaData.fromJson(Map<String, dynamic> json) =
      _$_MediaData.fromJson;

  @override

  /// Unique identifier of the expanded media content.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to programmatically retrieve media.
  @JsonKey(name: 'media_key')
  String get key;
  @override

  /// Type of content (animated_gif, photo, video).
  ///
  /// ## How It Can Be Used
  ///
  /// - Classify the media as a photo, GIF, or video.
  MediaType get type;
  @override

  /// A direct URL to the media file on Twitter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Returns a Media object with a URL field for photos.
  String? get url;
  @override

  /// A description of an image to enable and support accessibility. Can be
  /// up to 1000 characters long. Alt text can only be added to images at
  /// the moment.
  ///
  /// ## How It Can Be Used
  ///
  /// - Can be used to provide a written description of an image in case a
  ///   user is visually impaired.
  String? get altText;
  @override

  /// Available when type is video. Duration in milliseconds of the video.
  @JsonKey(name: 'duration_ms')
  int? get durationMilliseconds;
  @override

  /// Height of this content in pixels.
  int? get height;
  @override

  /// Width of this content in pixels.
  int? get width;
  @override

  /// Non-public engagement metrics for the media content at the time of the
  /// request. Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine video engagement: how many users played through to each
  ///   quarter of the video.
  @JsonKey(name: 'non_public_metrics')
  PrivateMediaMetrics? get privateMetrics;
  @override

  /// Engagement metrics for the media content, tracked in an organic context,
  /// at the time of the request. Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine organic media engagement.
  OrganicMediaMetrics? get organicMetrics;
  @override

  /// URL to the static placeholder preview of this content.
  String? get previewImageUrl;
  @override

  /// Engagement metrics for the media content, tracked in a promoted context,
  /// at the time of the request. Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine media engagement when the Tweet was promoted.
  PromotedMediaMetrics? get promotedMetrics;
  @override

  /// Public engagement metrics for the media content at the time of the
  /// request.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine total number of views for the video attached to the Tweet.
  PublicMediaMetrics? get publicMetrics;
  @override

  /// Variants of media attached in the MediaObject.
  ///
  /// ## How It Can Be Used
  ///
  /// - Each media object may have multiple display or playback variants,
  ///   with different resolutions or formats.
  List<Variant>? get variants;
  @override
  @JsonKey(ignore: true)
  _$$_MediaDataCopyWith<_$_MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}
