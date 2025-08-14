// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_internal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirQualityInternalImpl _$$AirQualityInternalImplFromJson(
        Map<String, dynamic> json) =>
    _$AirQualityInternalImpl(
      usAqi: (json['us_aqi'] as num).toInt(),
      pm10: (json['pm10'] as num).toDouble(),
      pm2_5: (json['pm2_5'] as num).toDouble(),
      carbonMonoxide: (json['carbon_monoxide'] as num).toInt(),
      nitrogenDioxide: (json['nitrogen_dioxide'] as num).toDouble(),
      sulphureDioxide: (json['sulphur_dioxide'] as num).toDouble(),
      ozone: (json['ozone'] as num).toInt(),
      dust: (json['dust'] as num).toInt(),
      uvIndex: (json['uv_index'] as num).toInt(),
    );
