import 'package:freezed_annotation/freezed_annotation.dart';
part 'hourly_model.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class HourlyModel with _$HourlyModel {
  const factory HourlyModel({
    required String hourlyTime,
    required String hourlyTemperature,
    required String hourlyRelativeHumidity,
    required String hourlyApparentTemperature,
    required String hourlyWeatherIconPath,
    required String hourlyPrecipitationProbablity,
    required String hourlyWindSpeed,
    required int    hourlyWindDirection,
  }) = _HourlyModel;
}
