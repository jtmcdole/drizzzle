import 'package:drizzzle/data/services/api_remote/model/air_quality/air_quality_internal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'air_quality.freezed.dart';
part 'air_quality.g.dart';

@Freezed(toJson: false)
class AirQuality with _$AirQuality {
  const factory AirQuality({
    @JsonKey(name: 'current') required AirQualityInternal current,
  }) = _AirQuality;

  factory AirQuality.fromJson(Map<String, Object?> json) =>
      _$AirQualityFromJson(json);
}
