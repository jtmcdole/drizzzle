// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_internal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentInternalImpl _$$CurrentInternalImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentInternalImpl(
      time: json['time'] as String,
      temperature_2m: (json['temperature_2m'] as num).toDouble(),
      relativeHumidity_2m: (json['relative_humidity_2m'] as num).toInt(),
      apparentTemperature: (json['apparent_temperature'] as num).toDouble(),
      isDay: (json['is_day'] as num).toInt(),
      weatherCode: (json['weather_code'] as num).toInt(),
      cloudCover: (json['cloud_cover'] as num).toInt(),
      pressureMsl: (json['pressure_msl'] as num).toDouble(),
      surfacePressure: (json['surface_pressure'] as num).toDouble(),
      windSpeed_10m: (json['wind_speed_10m'] as num).toDouble(),
      windDirection_10m: (json['wind_direction_10m'] as num).toInt(),
      precipitation: (json['precipitation'] as num).toDouble(),
    );
