// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_internal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyInternalImpl _$$DailyInternalImplFromJson(Map<String, dynamic> json) =>
    _$DailyInternalImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      weatherCode: (json['weather_code'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      temperature_2mMax: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      temperature_2mMin: (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      sunrise:
          (json['sunrise'] as List<dynamic>).map((e) => e as String).toList(),
      sunset:
          (json['sunset'] as List<dynamic>).map((e) => e as String).toList(),
      precipitationProbabilityMax:
          (json['precipitation_probability_max'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
    );
