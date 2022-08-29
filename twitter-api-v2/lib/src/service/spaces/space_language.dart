// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:json_annotation/json_annotation.dart';

enum SpaceLanguage {
  @JsonValue('ar')
  arabic('ar'),

  @JsonValue('hy')
  armenian('hy'),

  @JsonValue('zh')
  chinese('zh'),

  @JsonValue('da')
  danish('da'),

  @JsonValue('en')
  english('en'),

  @JsonValue('fi')
  finnish('fi'),

  @JsonValue('fr')
  french('fr'),

  @JsonValue('de')
  german('de'),

  @JsonValue('hi')
  hindi('hi'),

  @JsonValue('iw')
  hebrew('iw'),

  @JsonValue('id')
  indonesian('id'),

  @JsonValue('it')
  italian('it'),

  @JsonValue('ja')
  japanese('ja'),

  @JsonValue('kk')
  kazakh('kk'),

  @JsonValue('ko')
  korean('ko'),

  @JsonValue('no')
  norwegian('no'),

  @JsonValue('pl')
  polish('pl'),

  @JsonValue('pt')
  portuguese('pt'),

  @JsonValue('ro')
  romanian('ro'),

  @JsonValue('ru')
  russian('ru'),

  @JsonValue('es')
  spanish('es'),

  @JsonValue('sv')
  swedish('sv'),

  @JsonValue('tr')
  turkish('tr'),

  @JsonValue('uk')
  ukrainian('uk'),

  @JsonValue('other')
  undetermined('other');

  /// The language code
  final String code;

  const SpaceLanguage(this.code);
}
