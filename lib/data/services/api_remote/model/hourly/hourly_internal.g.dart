// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_internal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyInternalImpl _$$HourlyInternalImplFromJson(Map<String, dynamic> json) =>
    _$HourlyInternalImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature_2m: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      relativeHumidity_2m: (json['relative_humidity_2m'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      apparentTemperature: (json['apparent_temperature'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      weatherCode: (json['weather_code'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      precipitationProbability:
          (json['precipitation_probability'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      windSpeed_10m: (json['wind_speed_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      windDirection_10m: (json['wind_direction_10m'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      isDay: (json['is_day'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );
