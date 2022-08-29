// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

/// The object that contains location information for a Tweet.
///
/// You can only add a location to Tweets if you have geo enabled in your
/// profile settings. If you don't have geo enabled, you can still add a
/// location parameter in your request body, but it won't get attached to your
/// Tweet
class TweetGeoParam {
  /// Returns the new instance of [TweetGeoParam].
  TweetGeoParam({required this.placeId});

  /// Place ID being attached to the Tweet for geo location.
  final String placeId;
}
