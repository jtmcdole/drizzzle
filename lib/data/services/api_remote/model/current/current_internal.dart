import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_internal.freezed.dart';
part 'current_internal.g.dart';

//https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m,relative_humidity_2m,apparent_temperature,is_day,weather_code,cloud_cover,pressure_msl,surface_pressure,wind_speed_10m,wind_direction_10m

@Freezed(toJson: false)
class CurrentInternal with _$CurrentInternal {
  const factory CurrentInternal({
    @JsonKey(name: 'time') required String time,
    @JsonKey(name: 'temperature_2m') required double temperature_2m,
    @JsonKey(name: 'relative_humidity_2m') required int relativeHumidity_2m,
    @JsonKey(name: 'apparent_temperature') required double apparentTemperature,
    @JsonKey(name: 'is_day') required int isDay,
    @JsonKey(name: 'weather_code') required int weatherCode,
    @JsonKey(name: 'cloud_cover') required int cloudCover,
    @JsonKey(name: 'pressure_msl') required double pressureMsl,
    @JsonKey(name: 'surface_pressure') required double surfacePressure,
    @JsonKey(name: 'wind_speed_10m') required double windSpeed_10m,
    @JsonKey(name: 'wind_direction_10m') required int windDirection_10m,
    @JsonKey(name: 'precipitation') required double precipitation,
  }) = _CurrentInternal;

  factory CurrentInternal.fromJson(Map<String, Object?> json) =>
      _$CurrentInternalFromJson(json);
}
