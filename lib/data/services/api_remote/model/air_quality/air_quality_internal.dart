import 'package:freezed_annotation/freezed_annotation.dart';
part 'air_quality_internal.freezed.dart';
part 'air_quality_internal.g.dart';

@Freezed(toJson: false)
class AirQualityInternal with _$AirQualityInternal {
  const factory AirQualityInternal({
    @JsonKey(name: 'us_aqi') required int usAqi,
    @JsonKey(name: 'pm10') required double pm10,
    @JsonKey(name: 'pm2_5') required double pm2_5,
    @JsonKey(name: 'carbon_monoxide') required int carbonMonoxide,
    @JsonKey(name: 'nitrogen_dioxide') required double nitrogenDioxide,
    @JsonKey(name: 'sulphur_dioxide') required double sulphureDioxide,
    @JsonKey(name: 'ozone') required int ozone,
    @JsonKey(name: 'dust') required int dust,
    @JsonKey(name: 'uv_index') required int uvIndex,
  }) = _AirQualityInternal;

  factory AirQualityInternal.fromJson(Map<String, Object?> json) =>
      _$AirQualityInternalFromJson(json);
}
