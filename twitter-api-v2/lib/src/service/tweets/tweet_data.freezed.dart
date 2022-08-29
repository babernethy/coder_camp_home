// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TweetData _$TweetDataFromJson(Map<String, dynamic> json) {
  return _TweetData.fromJson(json);
}

/// @nodoc
mixin _$TweetData {
  /// Unique identifier of this Tweet. This is returned as a string in order
  /// to avoid complications with languages and tools that cannot handle
  /// large integers.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to programmatically retrieve a specific Tweet.
  String get id => throw _privateConstructorUsedError;

  /// The actual UTF-8 text of the Tweet. See [twitter-text](https://github.com/twitter/twitter-text/) for details on
  /// what characters are currently considered valid.
  ///
  /// ## How It Can Be Used
  ///
  /// - Keyword extraction and sentiment analysis/classification.
  String get text => throw _privateConstructorUsedError;

  /// Unique identifier of this user. This is returned as a string in order
  /// to avoid complications with languages and tools that cannot handle large
  /// integers.
  ///
  /// You can obtain the expanded object in `includes.users` by adding
  /// `TweetExpansion.authorId` in the request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Hydrating User object, sharing dataset for peer review.
  String? get authorId => throw _privateConstructorUsedError;

  /// If this Tweet is a Reply, indicates the user ID of the parent Tweet's
  /// author. This is returned as a string in order to avoid complications
  /// with languages and tools that cannot handle large integers.
  ///
  /// You can obtain the expanded object in `includes.users` by adding
  /// `TweetExpansion.inReplyToUserId` in the request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to determine if this Tweet was in reply to another Tweet.
  String? get inReplyToUserId => throw _privateConstructorUsedError;

  /// The Tweet ID of the original Tweet of the conversation (which includes
  /// direct replies, replies of replies).
  ///
  /// To obtain this field, add `TweetField.conversationId` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to reconstruct the conversation from a Tweet.
  String? get conversationId => throw _privateConstructorUsedError;

  /// A list of Tweets this Tweet refers to. For example, if the parent Tweet
  /// is a Retweet, a Retweet with comment (also known as Quoted Tweet) or a
  /// Reply, it will include the related Tweet referenced to by its parent.
  ///
  /// To obtain this field, add `TweetField.referencedTweets` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field can be used to understand conversational aspects of
  ///   retweets etc.
  List<ReferencedTweet>? get referencedTweets =>
      throw _privateConstructorUsedError;

  /// Contains context annotations for the Tweet.
  ///
  /// To obtain this field, add `TweetField.contextAnnotations` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entity recognition/extraction, topical analysis.
  List<TweetContextAnnotationGroup>? get contextAnnotations =>
      throw _privateConstructorUsedError;

  /// Contains details about text that has a special meaning in a Tweet.
  ///
  /// To obtain this field, add `TweetField.entities` in the request's query
  /// parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entities are objects that provide additional information about
  ///   hashtags, urls, user mentions, and cashtags associated with a Tweet.
  ///   Reference each respective entity for further details. Please note that
  ///   all start indices are inclusive. The majority of end indices are
  ///   exclusive, except for entities.annotations.end, which is currently
  ///   inclusive.
  TweetEntities? get entities => throw _privateConstructorUsedError;

  /// Specifies the type of attachments (if any) present in this Tweet.
  ///
  /// To obtain this field, add `TweetField.attachments` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Understanding the objects returned for requested expansions
  TweetAttachments? get attachments => throw _privateConstructorUsedError;

  /// Non-public engagement metrics for the Tweet at the time of the request.
  ///
  ///Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to determine the total number of impressions generated for
  ///   the Tweet.
  @JsonKey(name: 'non_public_metrics')
  PrivateTweetMetrics? get privateMetrics => throw _privateConstructorUsedError;

  /// Engagement metrics, tracked in an organic context, for the Tweet at
  /// the time of the request.
  ///
  /// Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to measure organic engagement for the Tweet.
  OrganicTweetMetrics? get organicMetrics => throw _privateConstructorUsedError;

  /// Engagement metrics, tracked in a promoted context, for the Tweet at the
  /// time of the request.
  ///
  /// Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to measure engagement for the Tweet when it was promoted.
  PromotedTweetMetrics? get promotedMetrics =>
      throw _privateConstructorUsedError;

  /// Engagement metrics for the Tweet at the time of the request.
  ///
  /// To obtain this field, add `TweetField.publicMetrics` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to measure Tweet engagement.
  PublicTweetMetrics? get publicMetrics => throw _privateConstructorUsedError;

  /// Contains details about the location tagged by the user in this Tweet,
  /// if they specified one.
  ///
  /// To obtain this field, add `TweetField.geo` in the request's query
  /// parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine if a Tweet is related to a named location with corresponding
  ///   geo coordinates.
  Geo? get geo => throw _privateConstructorUsedError;

  /// Language of the Tweet, if detected by Twitter. Returned as a BCP47
  /// language.
  ///
  /// To return this field, add `TweetField.lang` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Classify Tweets by spoken language.
  TweetLanguage? get lang => throw _privateConstructorUsedError;

  /// Indicates if this Tweet contains URLs marked as sensitive, for example
  /// content suitable for mature audiences.
  ///
  /// To obtain this field, add `TweetField.possiblySensitive` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Studying circulation of certain types of content.
  @JsonKey(name: 'possibly_sensitive')
  bool? get isPossiblySensitive => throw _privateConstructorUsedError;

  /// Shows who can reply to this Tweet. Fields returned are
  /// [ReplySetting.everyone], [ReplySetting.mentionedUsers],
  /// and [ReplySetting.following].
  /// To obtain this field, add `TweeField.replySetting` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field allows you to determine whether conversation reply settings
  /// have been set for the Tweet and if so, what settings have been set.
  @JsonKey(name: 'reply_settings')
  ReplySetting? get replySetting => throw _privateConstructorUsedError;

  /// The name of the app the user Tweeted from.
  ///
  /// To obtain this field, add `TweetField.source` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine if a Twitter user posted from the web, mobile device, or
  /// other app.
  String? get source => throw _privateConstructorUsedError;

  /// Contains withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country).
  ///
  /// To return this field, add `TweetField.withheld` in the request's query
  /// parameter.
  TweetWithheld? get withheld => throw _privateConstructorUsedError;

  /// Creation time of the Tweet.
  ///
  /// To obtain this field, add `TweetField.createdAt` in the request's query
  /// parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field can be used to understand when a Tweet was created and
  ///   used for time-series analysis etc.
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetDataCopyWith<TweetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetDataCopyWith<$Res> {
  factory $TweetDataCopyWith(TweetData value, $Res Function(TweetData) then) =
      _$TweetDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String text,
      String? authorId,
      String? inReplyToUserId,
      String? conversationId,
      List<ReferencedTweet>? referencedTweets,
      List<TweetContextAnnotationGroup>? contextAnnotations,
      TweetEntities? entities,
      TweetAttachments? attachments,
      @JsonKey(name: 'non_public_metrics') PrivateTweetMetrics? privateMetrics,
      OrganicTweetMetrics? organicMetrics,
      PromotedTweetMetrics? promotedMetrics,
      PublicTweetMetrics? publicMetrics,
      Geo? geo,
      TweetLanguage? lang,
      @JsonKey(name: 'possibly_sensitive') bool? isPossiblySensitive,
      @JsonKey(name: 'reply_settings') ReplySetting? replySetting,
      String? source,
      TweetWithheld? withheld,
      DateTime? createdAt});

  $TweetEntitiesCopyWith<$Res>? get entities;
  $TweetAttachmentsCopyWith<$Res>? get attachments;
  $PrivateTweetMetricsCopyWith<$Res>? get privateMetrics;
  $OrganicTweetMetricsCopyWith<$Res>? get organicMetrics;
  $PromotedTweetMetricsCopyWith<$Res>? get promotedMetrics;
  $PublicTweetMetricsCopyWith<$Res>? get publicMetrics;
  $GeoCopyWith<$Res>? get geo;
  $TweetWithheldCopyWith<$Res>? get withheld;
}

/// @nodoc
class _$TweetDataCopyWithImpl<$Res> implements $TweetDataCopyWith<$Res> {
  _$TweetDataCopyWithImpl(this._value, this._then);

  final TweetData _value;
  // ignore: unused_field
  final $Res Function(TweetData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? authorId = freezed,
    Object? inReplyToUserId = freezed,
    Object? conversationId = freezed,
    Object? referencedTweets = freezed,
    Object? contextAnnotations = freezed,
    Object? entities = freezed,
    Object? attachments = freezed,
    Object? privateMetrics = freezed,
    Object? organicMetrics = freezed,
    Object? promotedMetrics = freezed,
    Object? publicMetrics = freezed,
    Object? geo = freezed,
    Object? lang = freezed,
    Object? isPossiblySensitive = freezed,
    Object? replySetting = freezed,
    Object? source = freezed,
    Object? withheld = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      inReplyToUserId: inReplyToUserId == freezed
          ? _value.inReplyToUserId
          : inReplyToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: conversationId == freezed
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referencedTweets: referencedTweets == freezed
          ? _value.referencedTweets
          : referencedTweets // ignore: cast_nullable_to_non_nullable
              as List<ReferencedTweet>?,
      contextAnnotations: contextAnnotations == freezed
          ? _value.contextAnnotations
          : contextAnnotations // ignore: cast_nullable_to_non_nullable
              as List<TweetContextAnnotationGroup>?,
      entities: entities == freezed
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as TweetEntities?,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as TweetAttachments?,
      privateMetrics: privateMetrics == freezed
          ? _value.privateMetrics
          : privateMetrics // ignore: cast_nullable_to_non_nullable
              as PrivateTweetMetrics?,
      organicMetrics: organicMetrics == freezed
          ? _value.organicMetrics
          : organicMetrics // ignore: cast_nullable_to_non_nullable
              as OrganicTweetMetrics?,
      promotedMetrics: promotedMetrics == freezed
          ? _value.promotedMetrics
          : promotedMetrics // ignore: cast_nullable_to_non_nullable
              as PromotedTweetMetrics?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicTweetMetrics?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as TweetLanguage?,
      isPossiblySensitive: isPossiblySensitive == freezed
          ? _value.isPossiblySensitive
          : isPossiblySensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      replySetting: replySetting == freezed
          ? _value.replySetting
          : replySetting // ignore: cast_nullable_to_non_nullable
              as ReplySetting?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as TweetWithheld?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $TweetEntitiesCopyWith<$Res>? get entities {
    if (_value.entities == null) {
      return null;
    }

    return $TweetEntitiesCopyWith<$Res>(_value.entities!, (value) {
      return _then(_value.copyWith(entities: value));
    });
  }

  @override
  $TweetAttachmentsCopyWith<$Res>? get attachments {
    if (_value.attachments == null) {
      return null;
    }

    return $TweetAttachmentsCopyWith<$Res>(_value.attachments!, (value) {
      return _then(_value.copyWith(attachments: value));
    });
  }

  @override
  $PrivateTweetMetricsCopyWith<$Res>? get privateMetrics {
    if (_value.privateMetrics == null) {
      return null;
    }

    return $PrivateTweetMetricsCopyWith<$Res>(_value.privateMetrics!, (value) {
      return _then(_value.copyWith(privateMetrics: value));
    });
  }

  @override
  $OrganicTweetMetricsCopyWith<$Res>? get organicMetrics {
    if (_value.organicMetrics == null) {
      return null;
    }

    return $OrganicTweetMetricsCopyWith<$Res>(_value.organicMetrics!, (value) {
      return _then(_value.copyWith(organicMetrics: value));
    });
  }

  @override
  $PromotedTweetMetricsCopyWith<$Res>? get promotedMetrics {
    if (_value.promotedMetrics == null) {
      return null;
    }

    return $PromotedTweetMetricsCopyWith<$Res>(_value.promotedMetrics!,
        (value) {
      return _then(_value.copyWith(promotedMetrics: value));
    });
  }

  @override
  $PublicTweetMetricsCopyWith<$Res>? get publicMetrics {
    if (_value.publicMetrics == null) {
      return null;
    }

    return $PublicTweetMetricsCopyWith<$Res>(_value.publicMetrics!, (value) {
      return _then(_value.copyWith(publicMetrics: value));
    });
  }

  @override
  $GeoCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $GeoCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }

  @override
  $TweetWithheldCopyWith<$Res>? get withheld {
    if (_value.withheld == null) {
      return null;
    }

    return $TweetWithheldCopyWith<$Res>(_value.withheld!, (value) {
      return _then(_value.copyWith(withheld: value));
    });
  }
}

/// @nodoc
abstract class _$$_TweetDataCopyWith<$Res> implements $TweetDataCopyWith<$Res> {
  factory _$$_TweetDataCopyWith(
          _$_TweetData value, $Res Function(_$_TweetData) then) =
      __$$_TweetDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String text,
      String? authorId,
      String? inReplyToUserId,
      String? conversationId,
      List<ReferencedTweet>? referencedTweets,
      List<TweetContextAnnotationGroup>? contextAnnotations,
      TweetEntities? entities,
      TweetAttachments? attachments,
      @JsonKey(name: 'non_public_metrics') PrivateTweetMetrics? privateMetrics,
      OrganicTweetMetrics? organicMetrics,
      PromotedTweetMetrics? promotedMetrics,
      PublicTweetMetrics? publicMetrics,
      Geo? geo,
      TweetLanguage? lang,
      @JsonKey(name: 'possibly_sensitive') bool? isPossiblySensitive,
      @JsonKey(name: 'reply_settings') ReplySetting? replySetting,
      String? source,
      TweetWithheld? withheld,
      DateTime? createdAt});

  @override
  $TweetEntitiesCopyWith<$Res>? get entities;
  @override
  $TweetAttachmentsCopyWith<$Res>? get attachments;
  @override
  $PrivateTweetMetricsCopyWith<$Res>? get privateMetrics;
  @override
  $OrganicTweetMetricsCopyWith<$Res>? get organicMetrics;
  @override
  $PromotedTweetMetricsCopyWith<$Res>? get promotedMetrics;
  @override
  $PublicTweetMetricsCopyWith<$Res>? get publicMetrics;
  @override
  $GeoCopyWith<$Res>? get geo;
  @override
  $TweetWithheldCopyWith<$Res>? get withheld;
}

/// @nodoc
class __$$_TweetDataCopyWithImpl<$Res> extends _$TweetDataCopyWithImpl<$Res>
    implements _$$_TweetDataCopyWith<$Res> {
  __$$_TweetDataCopyWithImpl(
      _$_TweetData _value, $Res Function(_$_TweetData) _then)
      : super(_value, (v) => _then(v as _$_TweetData));

  @override
  _$_TweetData get _value => super._value as _$_TweetData;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? authorId = freezed,
    Object? inReplyToUserId = freezed,
    Object? conversationId = freezed,
    Object? referencedTweets = freezed,
    Object? contextAnnotations = freezed,
    Object? entities = freezed,
    Object? attachments = freezed,
    Object? privateMetrics = freezed,
    Object? organicMetrics = freezed,
    Object? promotedMetrics = freezed,
    Object? publicMetrics = freezed,
    Object? geo = freezed,
    Object? lang = freezed,
    Object? isPossiblySensitive = freezed,
    Object? replySetting = freezed,
    Object? source = freezed,
    Object? withheld = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_TweetData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      inReplyToUserId: inReplyToUserId == freezed
          ? _value.inReplyToUserId
          : inReplyToUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: conversationId == freezed
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referencedTweets: referencedTweets == freezed
          ? _value._referencedTweets
          : referencedTweets // ignore: cast_nullable_to_non_nullable
              as List<ReferencedTweet>?,
      contextAnnotations: contextAnnotations == freezed
          ? _value._contextAnnotations
          : contextAnnotations // ignore: cast_nullable_to_non_nullable
              as List<TweetContextAnnotationGroup>?,
      entities: entities == freezed
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as TweetEntities?,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as TweetAttachments?,
      privateMetrics: privateMetrics == freezed
          ? _value.privateMetrics
          : privateMetrics // ignore: cast_nullable_to_non_nullable
              as PrivateTweetMetrics?,
      organicMetrics: organicMetrics == freezed
          ? _value.organicMetrics
          : organicMetrics // ignore: cast_nullable_to_non_nullable
              as OrganicTweetMetrics?,
      promotedMetrics: promotedMetrics == freezed
          ? _value.promotedMetrics
          : promotedMetrics // ignore: cast_nullable_to_non_nullable
              as PromotedTweetMetrics?,
      publicMetrics: publicMetrics == freezed
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicTweetMetrics?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as TweetLanguage?,
      isPossiblySensitive: isPossiblySensitive == freezed
          ? _value.isPossiblySensitive
          : isPossiblySensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      replySetting: replySetting == freezed
          ? _value.replySetting
          : replySetting // ignore: cast_nullable_to_non_nullable
              as ReplySetting?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      withheld: withheld == freezed
          ? _value.withheld
          : withheld // ignore: cast_nullable_to_non_nullable
              as TweetWithheld?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetData implements _TweetData {
  const _$_TweetData(
      {required this.id,
      required this.text,
      this.authorId,
      this.inReplyToUserId,
      this.conversationId,
      final List<ReferencedTweet>? referencedTweets,
      final List<TweetContextAnnotationGroup>? contextAnnotations,
      this.entities,
      this.attachments,
      @JsonKey(name: 'non_public_metrics') this.privateMetrics,
      this.organicMetrics,
      this.promotedMetrics,
      this.publicMetrics,
      this.geo,
      this.lang,
      @JsonKey(name: 'possibly_sensitive') this.isPossiblySensitive,
      @JsonKey(name: 'reply_settings') this.replySetting,
      this.source,
      this.withheld,
      this.createdAt})
      : _referencedTweets = referencedTweets,
        _contextAnnotations = contextAnnotations;

  factory _$_TweetData.fromJson(Map<String, dynamic> json) =>
      _$$_TweetDataFromJson(json);

  /// Unique identifier of this Tweet. This is returned as a string in order
  /// to avoid complications with languages and tools that cannot handle
  /// large integers.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to programmatically retrieve a specific Tweet.
  @override
  final String id;

  /// The actual UTF-8 text of the Tweet. See [twitter-text](https://github.com/twitter/twitter-text/) for details on
  /// what characters are currently considered valid.
  ///
  /// ## How It Can Be Used
  ///
  /// - Keyword extraction and sentiment analysis/classification.
  @override
  final String text;

  /// Unique identifier of this user. This is returned as a string in order
  /// to avoid complications with languages and tools that cannot handle large
  /// integers.
  ///
  /// You can obtain the expanded object in `includes.users` by adding
  /// `TweetExpansion.authorId` in the request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Hydrating User object, sharing dataset for peer review.
  @override
  final String? authorId;

  /// If this Tweet is a Reply, indicates the user ID of the parent Tweet's
  /// author. This is returned as a string in order to avoid complications
  /// with languages and tools that cannot handle large integers.
  ///
  /// You can obtain the expanded object in `includes.users` by adding
  /// `TweetExpansion.inReplyToUserId` in the request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to determine if this Tweet was in reply to another Tweet.
  @override
  final String? inReplyToUserId;

  /// The Tweet ID of the original Tweet of the conversation (which includes
  /// direct replies, replies of replies).
  ///
  /// To obtain this field, add `TweetField.conversationId` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to reconstruct the conversation from a Tweet.
  @override
  final String? conversationId;

  /// A list of Tweets this Tweet refers to. For example, if the parent Tweet
  /// is a Retweet, a Retweet with comment (also known as Quoted Tweet) or a
  /// Reply, it will include the related Tweet referenced to by its parent.
  ///
  /// To obtain this field, add `TweetField.referencedTweets` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field can be used to understand conversational aspects of
  ///   retweets etc.
  final List<ReferencedTweet>? _referencedTweets;

  /// A list of Tweets this Tweet refers to. For example, if the parent Tweet
  /// is a Retweet, a Retweet with comment (also known as Quoted Tweet) or a
  /// Reply, it will include the related Tweet referenced to by its parent.
  ///
  /// To obtain this field, add `TweetField.referencedTweets` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field can be used to understand conversational aspects of
  ///   retweets etc.
  @override
  List<ReferencedTweet>? get referencedTweets {
    final value = _referencedTweets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains context annotations for the Tweet.
  ///
  /// To obtain this field, add `TweetField.contextAnnotations` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entity recognition/extraction, topical analysis.
  final List<TweetContextAnnotationGroup>? _contextAnnotations;

  /// Contains context annotations for the Tweet.
  ///
  /// To obtain this field, add `TweetField.contextAnnotations` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entity recognition/extraction, topical analysis.
  @override
  List<TweetContextAnnotationGroup>? get contextAnnotations {
    final value = _contextAnnotations;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains details about text that has a special meaning in a Tweet.
  ///
  /// To obtain this field, add `TweetField.entities` in the request's query
  /// parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entities are objects that provide additional information about
  ///   hashtags, urls, user mentions, and cashtags associated with a Tweet.
  ///   Reference each respective entity for further details. Please note that
  ///   all start indices are inclusive. The majority of end indices are
  ///   exclusive, except for entities.annotations.end, which is currently
  ///   inclusive.
  @override
  final TweetEntities? entities;

  /// Specifies the type of attachments (if any) present in this Tweet.
  ///
  /// To obtain this field, add `TweetField.attachments` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Understanding the objects returned for requested expansions
  @override
  final TweetAttachments? attachments;

  /// Non-public engagement metrics for the Tweet at the time of the request.
  ///
  ///Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to determine the total number of impressions generated for
  ///   the Tweet.
  @override
  @JsonKey(name: 'non_public_metrics')
  final PrivateTweetMetrics? privateMetrics;

  /// Engagement metrics, tracked in an organic context, for the Tweet at
  /// the time of the request.
  ///
  /// Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to measure organic engagement for the Tweet.
  @override
  final OrganicTweetMetrics? organicMetrics;

  /// Engagement metrics, tracked in a promoted context, for the Tweet at the
  /// time of the request.
  ///
  /// Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to measure engagement for the Tweet when it was promoted.
  @override
  final PromotedTweetMetrics? promotedMetrics;

  /// Engagement metrics for the Tweet at the time of the request.
  ///
  /// To obtain this field, add `TweetField.publicMetrics` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to measure Tweet engagement.
  @override
  final PublicTweetMetrics? publicMetrics;

  /// Contains details about the location tagged by the user in this Tweet,
  /// if they specified one.
  ///
  /// To obtain this field, add `TweetField.geo` in the request's query
  /// parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine if a Tweet is related to a named location with corresponding
  ///   geo coordinates.
  @override
  final Geo? geo;

  /// Language of the Tweet, if detected by Twitter. Returned as a BCP47
  /// language.
  ///
  /// To return this field, add `TweetField.lang` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Classify Tweets by spoken language.
  @override
  final TweetLanguage? lang;

  /// Indicates if this Tweet contains URLs marked as sensitive, for example
  /// content suitable for mature audiences.
  ///
  /// To obtain this field, add `TweetField.possiblySensitive` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Studying circulation of certain types of content.
  @override
  @JsonKey(name: 'possibly_sensitive')
  final bool? isPossiblySensitive;

  /// Shows who can reply to this Tweet. Fields returned are
  /// [ReplySetting.everyone], [ReplySetting.mentionedUsers],
  /// and [ReplySetting.following].
  /// To obtain this field, add `TweeField.replySetting` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field allows you to determine whether conversation reply settings
  /// have been set for the Tweet and if so, what settings have been set.
  @override
  @JsonKey(name: 'reply_settings')
  final ReplySetting? replySetting;

  /// The name of the app the user Tweeted from.
  ///
  /// To obtain this field, add `TweetField.source` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine if a Twitter user posted from the web, mobile device, or
  /// other app.
  @override
  final String? source;

  /// Contains withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country).
  ///
  /// To return this field, add `TweetField.withheld` in the request's query
  /// parameter.
  @override
  final TweetWithheld? withheld;

  /// Creation time of the Tweet.
  ///
  /// To obtain this field, add `TweetField.createdAt` in the request's query
  /// parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field can be used to understand when a Tweet was created and
  ///   used for time-series analysis etc.
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TweetData(id: $id, text: $text, authorId: $authorId, inReplyToUserId: $inReplyToUserId, conversationId: $conversationId, referencedTweets: $referencedTweets, contextAnnotations: $contextAnnotations, entities: $entities, attachments: $attachments, privateMetrics: $privateMetrics, organicMetrics: $organicMetrics, promotedMetrics: $promotedMetrics, publicMetrics: $publicMetrics, geo: $geo, lang: $lang, isPossiblySensitive: $isPossiblySensitive, replySetting: $replySetting, source: $source, withheld: $withheld, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality()
                .equals(other.inReplyToUserId, inReplyToUserId) &&
            const DeepCollectionEquality()
                .equals(other.conversationId, conversationId) &&
            const DeepCollectionEquality()
                .equals(other._referencedTweets, _referencedTweets) &&
            const DeepCollectionEquality()
                .equals(other._contextAnnotations, _contextAnnotations) &&
            const DeepCollectionEquality().equals(other.entities, entities) &&
            const DeepCollectionEquality()
                .equals(other.attachments, attachments) &&
            const DeepCollectionEquality()
                .equals(other.privateMetrics, privateMetrics) &&
            const DeepCollectionEquality()
                .equals(other.organicMetrics, organicMetrics) &&
            const DeepCollectionEquality()
                .equals(other.promotedMetrics, promotedMetrics) &&
            const DeepCollectionEquality()
                .equals(other.publicMetrics, publicMetrics) &&
            const DeepCollectionEquality().equals(other.geo, geo) &&
            const DeepCollectionEquality().equals(other.lang, lang) &&
            const DeepCollectionEquality()
                .equals(other.isPossiblySensitive, isPossiblySensitive) &&
            const DeepCollectionEquality()
                .equals(other.replySetting, replySetting) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.withheld, withheld) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(authorId),
        const DeepCollectionEquality().hash(inReplyToUserId),
        const DeepCollectionEquality().hash(conversationId),
        const DeepCollectionEquality().hash(_referencedTweets),
        const DeepCollectionEquality().hash(_contextAnnotations),
        const DeepCollectionEquality().hash(entities),
        const DeepCollectionEquality().hash(attachments),
        const DeepCollectionEquality().hash(privateMetrics),
        const DeepCollectionEquality().hash(organicMetrics),
        const DeepCollectionEquality().hash(promotedMetrics),
        const DeepCollectionEquality().hash(publicMetrics),
        const DeepCollectionEquality().hash(geo),
        const DeepCollectionEquality().hash(lang),
        const DeepCollectionEquality().hash(isPossiblySensitive),
        const DeepCollectionEquality().hash(replySetting),
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(withheld),
        const DeepCollectionEquality().hash(createdAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_TweetDataCopyWith<_$_TweetData> get copyWith =>
      __$$_TweetDataCopyWithImpl<_$_TweetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TweetDataToJson(
      this,
    );
  }
}

abstract class _TweetData implements TweetData {
  const factory _TweetData(
      {required final String id,
      required final String text,
      final String? authorId,
      final String? inReplyToUserId,
      final String? conversationId,
      final List<ReferencedTweet>? referencedTweets,
      final List<TweetContextAnnotationGroup>? contextAnnotations,
      final TweetEntities? entities,
      final TweetAttachments? attachments,
      @JsonKey(name: 'non_public_metrics')
          final PrivateTweetMetrics? privateMetrics,
      final OrganicTweetMetrics? organicMetrics,
      final PromotedTweetMetrics? promotedMetrics,
      final PublicTweetMetrics? publicMetrics,
      final Geo? geo,
      final TweetLanguage? lang,
      @JsonKey(name: 'possibly_sensitive')
          final bool? isPossiblySensitive,
      @JsonKey(name: 'reply_settings')
          final ReplySetting? replySetting,
      final String? source,
      final TweetWithheld? withheld,
      final DateTime? createdAt}) = _$_TweetData;

  factory _TweetData.fromJson(Map<String, dynamic> json) =
      _$_TweetData.fromJson;

  @override

  /// Unique identifier of this Tweet. This is returned as a string in order
  /// to avoid complications with languages and tools that cannot handle
  /// large integers.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to programmatically retrieve a specific Tweet.
  String get id;
  @override

  /// The actual UTF-8 text of the Tweet. See [twitter-text](https://github.com/twitter/twitter-text/) for details on
  /// what characters are currently considered valid.
  ///
  /// ## How It Can Be Used
  ///
  /// - Keyword extraction and sentiment analysis/classification.
  String get text;
  @override

  /// Unique identifier of this user. This is returned as a string in order
  /// to avoid complications with languages and tools that cannot handle large
  /// integers.
  ///
  /// You can obtain the expanded object in `includes.users` by adding
  /// `TweetExpansion.authorId` in the request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Hydrating User object, sharing dataset for peer review.
  String? get authorId;
  @override

  /// If this Tweet is a Reply, indicates the user ID of the parent Tweet's
  /// author. This is returned as a string in order to avoid complications
  /// with languages and tools that cannot handle large integers.
  ///
  /// You can obtain the expanded object in `includes.users` by adding
  /// `TweetExpansion.inReplyToUserId` in the request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to determine if this Tweet was in reply to another Tweet.
  String? get inReplyToUserId;
  @override

  /// The Tweet ID of the original Tweet of the conversation (which includes
  /// direct replies, replies of replies).
  ///
  /// To obtain this field, add `TweetField.conversationId` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to reconstruct the conversation from a Tweet.
  String? get conversationId;
  @override

  /// A list of Tweets this Tweet refers to. For example, if the parent Tweet
  /// is a Retweet, a Retweet with comment (also known as Quoted Tweet) or a
  /// Reply, it will include the related Tweet referenced to by its parent.
  ///
  /// To obtain this field, add `TweetField.referencedTweets` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field can be used to understand conversational aspects of
  ///   retweets etc.
  List<ReferencedTweet>? get referencedTweets;
  @override

  /// Contains context annotations for the Tweet.
  ///
  /// To obtain this field, add `TweetField.contextAnnotations` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entity recognition/extraction, topical analysis.
  List<TweetContextAnnotationGroup>? get contextAnnotations;
  @override

  /// Contains details about text that has a special meaning in a Tweet.
  ///
  /// To obtain this field, add `TweetField.entities` in the request's query
  /// parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Entities are objects that provide additional information about
  ///   hashtags, urls, user mentions, and cashtags associated with a Tweet.
  ///   Reference each respective entity for further details. Please note that
  ///   all start indices are inclusive. The majority of end indices are
  ///   exclusive, except for entities.annotations.end, which is currently
  ///   inclusive.
  TweetEntities? get entities;
  @override

  /// Specifies the type of attachments (if any) present in this Tweet.
  ///
  /// To obtain this field, add `TweetField.attachments` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Understanding the objects returned for requested expansions
  TweetAttachments? get attachments;
  @override

  /// Non-public engagement metrics for the Tweet at the time of the request.
  ///
  ///Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to determine the total number of impressions generated for
  ///   the Tweet.
  @JsonKey(name: 'non_public_metrics')
  PrivateTweetMetrics? get privateMetrics;
  @override

  /// Engagement metrics, tracked in an organic context, for the Tweet at
  /// the time of the request.
  ///
  /// Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to measure organic engagement for the Tweet.
  OrganicTweetMetrics? get organicMetrics;
  @override

  /// Engagement metrics, tracked in a promoted context, for the Tweet at the
  /// time of the request.
  ///
  /// Requires user context authentication.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to measure engagement for the Tweet when it was promoted.
  PromotedTweetMetrics? get promotedMetrics;
  @override

  /// Engagement metrics for the Tweet at the time of the request.
  ///
  /// To obtain this field, add `TweetField.publicMetrics` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Use this to measure Tweet engagement.
  PublicTweetMetrics? get publicMetrics;
  @override

  /// Contains details about the location tagged by the user in this Tweet,
  /// if they specified one.
  ///
  /// To obtain this field, add `TweetField.geo` in the request's query
  /// parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine if a Tweet is related to a named location with corresponding
  ///   geo coordinates.
  Geo? get geo;
  @override

  /// Language of the Tweet, if detected by Twitter. Returned as a BCP47
  /// language.
  ///
  /// To return this field, add `TweetField.lang` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Classify Tweets by spoken language.
  TweetLanguage? get lang;
  @override

  /// Indicates if this Tweet contains URLs marked as sensitive, for example
  /// content suitable for mature audiences.
  ///
  /// To obtain this field, add `TweetField.possiblySensitive` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Studying circulation of certain types of content.
  @JsonKey(name: 'possibly_sensitive')
  bool? get isPossiblySensitive;
  @override

  /// Shows who can reply to this Tweet. Fields returned are
  /// [ReplySetting.everyone], [ReplySetting.mentionedUsers],
  /// and [ReplySetting.following].
  /// To obtain this field, add `TweeField.replySetting` in the
  /// request's query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field allows you to determine whether conversation reply settings
  /// have been set for the Tweet and if so, what settings have been set.
  @JsonKey(name: 'reply_settings')
  ReplySetting? get replySetting;
  @override

  /// The name of the app the user Tweeted from.
  ///
  /// To obtain this field, add `TweetField.source` in the request's
  /// query parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - Determine if a Twitter user posted from the web, mobile device, or
  /// other app.
  String? get source;
  @override

  /// Contains withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country).
  ///
  /// To return this field, add `TweetField.withheld` in the request's query
  /// parameter.
  TweetWithheld? get withheld;
  @override

  /// Creation time of the Tweet.
  ///
  /// To obtain this field, add `TweetField.createdAt` in the request's query
  /// parameter.
  ///
  /// ## How It Can Be Used
  ///
  /// - This field can be used to understand when a Tweet was created and
  ///   used for time-series analysis etc.
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TweetDataCopyWith<_$_TweetData> get copyWith =>
      throw _privateConstructorUsedError;
}
