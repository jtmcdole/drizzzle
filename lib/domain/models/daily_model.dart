import 'package:freezed_annotation/freezed_annotation.dart';
part 'daily_model.freezed.dart';

@Freezed(toJson: false, fromJson: false)
class DailyModel with _$DailyModel {
  const factory DailyModel({
    required String dailyTime,
    required String dailyWeatherIconPath,
    required String dailyTemperatureMax,
    required String dailyTemperatureMin,
    required String dailySunrise,
    required String dailySunset,
    required String dailyPrecipitationProbablity,
  }) = _DailyModel;
}
