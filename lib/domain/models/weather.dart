import 'package:drizzzle/domain/models/daily_model.dart';
import 'package:drizzzle/domain/models/hourly_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class Weather with _$Weather {
  const factory Weather({
    required String locationName,
    required String currentTemperature,
    required String currentRelativeHumidity,
    required String currentPrecipitation,
    required String currentApparentTemperature,
    required String currentWeatherIconPath,
    required String currentWeatherIconDescription,
    required String currentCloudCover,
    required String currentAtmospherePressure,
    required String currentSurfacePressure,
    required String currentWindSpeed,
    required int currentWindDirection,
    required List<HourlyModel> hourlyModelList,
    required List<DailyModel> dailyModelList,
    required String aqUsAqi,
    required String aqUvIndex,
    required String aqdust,
    required String aqOzone,
    required String aqSulphure,
    required String aqNitrogen,
    required String aqCarbon,
    required String aqPm2_5,
    required String aqPm10,
  }) = _Weather;
}
