import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_internal.freezed.dart';
part 'daily_internal.g.dart';

@Freezed(toJson: false)
class DailyInternal with _$DailyInternal {
  const factory DailyInternal({
    @JsonKey(name: 'time') required List<String> time,
    @JsonKey(name: 'weather_code') required List<int> weatherCode,
    @JsonKey(name: 'temperature_2m_max')
    required List<double> temperature_2mMax,
    @JsonKey(name: 'temperature_2m_min')
    required List<double> temperature_2mMin,
    @JsonKey(name: 'sunrise') required List<String> sunrise,
    @JsonKey(name: 'sunset') required List<String> sunset,
    @JsonKey(name: 'precipitation_probability_max')
    required List<int> precipitationProbabilityMax,
  }) = _DailyInternal;

  factory DailyInternal.fromJson(Map<String, Object?> json) =>
      _$DailyInternalFromJson(json);
}
