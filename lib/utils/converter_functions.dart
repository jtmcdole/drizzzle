import 'package:drizzzle/utils/resource_assets.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

IconData precipitationProbablityToIconData(
  int precipitationProbability,
) {
  switch (precipitationProbability) {
    case >= 0 && <= 20:
      return Symbols.humidity_low_rounded;
    case > 20 && <= 60:
      return Symbols.humidity_mid_rounded;
    default:
      return Symbols.humidity_high_rounded;
  }
}

String weatherCodeToPath(
  int weatherCode,
  bool? isDay,
) {
  switch ((weatherCode, isDay)) {
    case (0, true):
      return ResourceAssets.weatherIconClearDay;
    case (0, false):
      return ResourceAssets.weatherIconClearNight;
    case (1 || 2, null):
      return ResourceAssets.weatherIconPartlyCloudyDefault;
    case (1 || 2, true):
      return ResourceAssets.weatherIconPartlyCloudyDay;
    case (1 || 2, false):
      return ResourceAssets.weatherIconPartlyCloudyNight;
    case (3, null):
      return ResourceAssets.weatherIconMediumCloudyDefault;
    case (3, true):
      return ResourceAssets.weatherIconMediumCloudyDay;
    case (3, false):
      return ResourceAssets.weatherIconMediumCloudyNight;
    case (45 || 48, null):
      return ResourceAssets.weatherIconFogDefault;
    case (45 || 48, true):
      return ResourceAssets.weatherIconFogDay;
    case (45 || 48, false):
      return ResourceAssets.weatherIconFogNight;
    case (51 || 53 || 55 || 61 || 63, null):
      return ResourceAssets.weatherIconRainDefault;
    case (51 || 53 || 55 || 61 || 63, true):
      return ResourceAssets.weatherIconRainDay;
    case (51 || 53 || 55 || 61 || 63, false):
      return ResourceAssets.weatherIconRainNight;
    case (65, null):
      return ResourceAssets.weatherIconThunderShowerRainDefault;
    case (65, true):
      return ResourceAssets.weatherIconThunderShowerRainDay;
    case (65, false):
      return ResourceAssets.weatherIconThunderShowerRainNight;
    case (56 || 57 || 66 || 67, null):
      return ResourceAssets.weatherIconSnowRainDefault;
    case (56 || 57 || 66 || 67, true):
      return ResourceAssets.weatherIconSnowRainDay;
    case (56 || 57 || 66 || 67, false):
      return ResourceAssets.weatherIconSnowRainNight;
    case (71 || 73 || 85, null):
      return ResourceAssets.weatherIconLightSnowDefault;
    case (71 || 73 || 85, true):
      return ResourceAssets.weatherIconLightSnowDay;
    case (71 || 73 || 85, false):
      return ResourceAssets.weatherIconLightSnowNight;
    case (75 || 77 || 86, null):
      return ResourceAssets.weatherIconSnowDefault;
    case (75 || 77 || 86, true):
      return ResourceAssets.weatherIconSnowDay;
    case (75 || 77 || 86, false):
      return ResourceAssets.weatherIconSnowNight;
    case (80 || 81 || 82, null):
      return ResourceAssets.weatherIconShowerDefault;
    case (80 || 81 || 82, true):
      return ResourceAssets.weatherIconShowerDay;
    case (80 || 81 || 82, false):
      return ResourceAssets.weatherIconShowerNight;
    case (95, null):
      return ResourceAssets.weatherIconThunderStormRainDefault;
    case (95, true):
      return ResourceAssets.weatherIconThunderStormRainDay;
    case (95, false):
      return ResourceAssets.weatherIconThunderStormRainNight;
    case (96 || 99, null):
      return ResourceAssets.weatherIconHailDefault;
    case (96 || 99, false):
      return ResourceAssets.weatherIconHailDay;
    case (96 || 99, true):
      return ResourceAssets.weatherIconHailNight;
    default:
      return ResourceAssets.weatherIconClearDefault;
  }
}

String weatherCodeToDescription(
  int weatherCode,
) {
  switch (weatherCode) {
    case 1:
      return 'Mainly Clear';
    case 2:
      return 'Partly Cloudy';
    case 3:
      return 'Overcast';
    case 45:
      return 'Foggy';
    case 48:
      return 'Heavy Fog';
    case 51 || 53 || 55:
      return 'Drizzle';
    case 56 || 57:
      return 'Freezing Drizzle';
    case 61 || 63 || 65:
      return 'Rainy';
    case 66 || 67:
      return 'Freezing Rain';
    case 71 || 73 || 75:
      return 'Snow Fall';
    case 77:
      return 'Snow Grain';
    case 80 || 81 || 82:
      return 'Rain Shower';
    case 85 || 86:
      return 'Snow Shower';
    case 95:
      return 'Thunderstorm';
    case 96 || 99:
      return 'Hail';
    default:
      return 'Clear Sky';
  }
}

String iso8601ToWeekday(String iso8601Time) {
  DateTime parsedDateTime = DateTime.parse(iso8601Time);

  switch (parsedDateTime.weekday) {
    case 1:
      return 'Monday';
    case 2:
      return 'Tuesday';
    case 3:
      return 'Wednesday';
    case 4:
      return 'Thursday';
    case 5:
      return 'Friday';
    case 6:
      return 'Saturday';
    default:
      return 'Sunday';
  }
}

({int hour, int? minute, bool beforeMidday}) iso8601ToTime(
  String iso8601Time, [
  bool includeMinute = false,
]) {
  DateTime parsedDateTime = DateTime.parse(iso8601Time);
  int originalHour = parsedDateTime.hour; // 0 - 23
  bool beforeMidday = originalHour < 12; // true for AM
  int hour12 = originalHour % 12;
  if (hour12 == 0) hour12 = 12;
  int? minute = includeMinute ? parsedDateTime.minute : null;
  return (hour: hour12, minute: minute, beforeMidday: beforeMidday);
}

String uvIndexToDescription(int uvIndex) {
  switch (uvIndex) {
    case >= 51 && <= 100:
      return 'Moderate';
    case >= 101 && <= 150:
      return 'Sensitive';
    case >= 151 && <= 200:
      return 'Unhealthy';
    case >= 201 && <= 300:
      return 'Very Unhealthy';
    case >= 301 && <= 500:
      return 'Hazardous';
    default:
      return 'Healthy';
  }
}
