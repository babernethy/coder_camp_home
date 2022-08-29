// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:twitter_api_v2/src/service/spaces/space_language.dart';

void main() {
  test('.name', () {
    expect(SpaceLanguage.arabic.name, 'arabic');
    expect(SpaceLanguage.armenian.name, 'armenian');
    expect(SpaceLanguage.chinese.name, 'chinese');
    expect(SpaceLanguage.danish.name, 'danish');
    expect(SpaceLanguage.english.name, 'english');
    expect(SpaceLanguage.finnish.name, 'finnish');
    expect(SpaceLanguage.french.name, 'french');
    expect(SpaceLanguage.german.name, 'german');
    expect(SpaceLanguage.hindi.name, 'hindi');
    expect(SpaceLanguage.hebrew.name, 'hebrew');
    expect(SpaceLanguage.indonesian.name, 'indonesian');
    expect(SpaceLanguage.italian.name, 'italian');
    expect(SpaceLanguage.japanese.name, 'japanese');
    expect(SpaceLanguage.kazakh.name, 'kazakh');
    expect(SpaceLanguage.korean.name, 'korean');
    expect(SpaceLanguage.norwegian.name, 'norwegian');
    expect(SpaceLanguage.polish.name, 'polish');
    expect(SpaceLanguage.portuguese.name, 'portuguese');
    expect(SpaceLanguage.romanian.name, 'romanian');
    expect(SpaceLanguage.russian.name, 'russian');
    expect(SpaceLanguage.spanish.name, 'spanish');
    expect(SpaceLanguage.swedish.name, 'swedish');
    expect(SpaceLanguage.turkish.name, 'turkish');
    expect(SpaceLanguage.ukrainian.name, 'ukrainian');
  });

  test('.code', () {
    expect(SpaceLanguage.arabic.code, 'ar');
    expect(SpaceLanguage.armenian.code, 'hy');
    expect(SpaceLanguage.chinese.code, 'zh');
    expect(SpaceLanguage.danish.code, 'da');
    expect(SpaceLanguage.english.code, 'en');
    expect(SpaceLanguage.finnish.code, 'fi');
    expect(SpaceLanguage.french.code, 'fr');
    expect(SpaceLanguage.german.code, 'de');
    expect(SpaceLanguage.hindi.code, 'hi');
    expect(SpaceLanguage.hebrew.code, 'iw');
    expect(SpaceLanguage.indonesian.code, 'id');
    expect(SpaceLanguage.italian.code, 'it');
    expect(SpaceLanguage.japanese.code, 'ja');
    expect(SpaceLanguage.kazakh.code, 'kk');
    expect(SpaceLanguage.korean.code, 'ko');
    expect(SpaceLanguage.norwegian.code, 'no');
    expect(SpaceLanguage.polish.code, 'pl');
    expect(SpaceLanguage.portuguese.code, 'pt');
    expect(SpaceLanguage.romanian.code, 'ro');
    expect(SpaceLanguage.russian.code, 'ru');
    expect(SpaceLanguage.spanish.code, 'es');
    expect(SpaceLanguage.swedish.code, 'sv');
    expect(SpaceLanguage.turkish.code, 'tr');
    expect(SpaceLanguage.ukrainian.code, 'uk');
  });
}
