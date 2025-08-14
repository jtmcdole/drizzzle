import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_internal.freezed.dart';
part 'hourly_internal.g.dart';

@Freezed(toJson: false)
class HourlyInternal with _$HourlyInternal {
  const factory HourlyInternal({
    required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<double> temperature_2m,
    @JsonKey(name: 'relative_humidity_2m')
    required List<int> relativeHumidity_2m,
    @JsonKey(name: 'apparent_temperature')
    required List<double> apparentTemperature,
    @JsonKey(name: 'weather_code') required List<int> weatherCode,
    @JsonKey(name: 'precipitation_probability')
    required List<int> precipitationProbability,
    @JsonKey(name: 'wind_speed_10m') required List<double> windSpeed_10m,
    @JsonKey(name: 'wind_direction_10m') required List<int> windDirection_10m,
    @JsonKey(name: 'is_day') required List<int> isDay,
  }) = _HourlyInternal;

  factory HourlyInternal.fromJson(Map<String, Object?> json) =>
      _$HourlyInternalFromJson(json);
}
