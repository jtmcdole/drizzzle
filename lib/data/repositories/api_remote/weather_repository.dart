import 'package:diacritic/diacritic.dart';
import 'package:drizzzle/data/services/api_remote/api_client.dart';
import 'package:drizzzle/data/services/api_remote/model/air_quality/air_quality.dart';
import 'package:drizzzle/data/services/api_remote/model/daily/daily.dart';
import 'package:drizzzle/data/services/api_remote/model/hourly/hourly.dart';
import 'package:drizzzle/data/services/db_local/db_client.dart';
import 'package:drizzzle/domain/models/daily_model.dart';
import 'package:drizzzle/domain/models/hourly_model.dart';
import 'package:drizzzle/domain/models/location_model.dart';
import 'package:drizzzle/utils/converter_functions.dart';
import 'package:drizzzle/utils/result.dart';

import '../../../domain/models/weather.dart';
import '../../services/api_remote/model/current/current.dart';

class WeatherRepository {
  WeatherRepository({ApiClient? apiClient, required DbClient dbClient})
      : _apiClient = apiClient ?? ApiClient(),
        _dbClient = dbClient;

  final ApiClient _apiClient;
  final DbClient _dbClient;

  Future<Result<Weather>> fetchAndSaveWeather(LocationModel locationModel) async {
    final currentResult = await _apiClient.getCurrentData(
        locationModel.latitude, locationModel.longitude,
        timezone: locationModel.timezone);
    final hourlyResult = await _apiClient.getHourlyData(
        locationModel.latitude, locationModel.longitude,
        timezone: locationModel.timezone);
    final dailyResult = await _apiClient.getDailyData(
        locationModel.latitude, locationModel.longitude,
        timezone: locationModel.timezone);
    final aqResult = await _apiClient.getAirQualityData(
        locationModel.latitude, locationModel.longitude,
        timezone: locationModel.timezone);
    if (currentResult is Error<Current> ||
        hourlyResult is Error<Hourly> ||
        dailyResult is Error<Daily> ||
        aqResult is Error<AirQuality>) {
      return Result.error(Exception());
    } else {
      final List<HourlyModel> hourlyModelList = [];
      final hourly = (hourlyResult as Ok<Hourly>).value.hourly;
      int size = hourly.time.length;
      for (int i = 0; i < size; i += 1) {
        final hourlyModel = HourlyModel(
          hourlyTime: hourly.time.elementAt(i),
          hourlyTemperature:
              hourly.temperature_2m.elementAt(i).round().toString(),
          hourlyRelativeHumidity:
              hourly.relativeHumidity_2m.elementAt(i).toString(),
          hourlyApparentTemperature:
              hourly.apparentTemperature.elementAt(i).round().toString(),
          hourlyWeatherIconPath: weatherCodeToPath(
              hourly.weatherCode.elementAt(i),
              hourly.isDay.elementAt(i) == 1 ? true : false),
          hourlyPrecipitationProbablity:
              hourly.precipitationProbability.elementAt(i).toString(),
          hourlyWindSpeed: hourly.windSpeed_10m.elementAt(i).toString(),
          hourlyWindDirection: hourly.windDirection_10m.elementAt(i),
        );
        hourlyModelList.add(hourlyModel);
      }
      final List<DailyModel> dailyModelList = [];
      final daily = (dailyResult as Ok<Daily>).value.daily;
      size = daily.time.length;

      for (int i = 0; i < size; i += 1) {
        final dailyModel = DailyModel(
          dailyTime: daily.time.elementAt(i),
          dailyWeatherIconPath:
              weatherCodeToPath(daily.weatherCode.elementAt(i), null),
          dailyTemperatureMax:
              daily.temperature_2mMax.elementAt(i).round().toString(),
          dailyTemperatureMin:
              daily.temperature_2mMin.elementAt(i).round().toString(),
          dailySunrise: daily.sunrise.elementAt(i),
          dailySunset: daily.sunset.elementAt(i),
          dailyPrecipitationProbablity:
              daily.precipitationProbabilityMax.elementAt(i).toString(),
        );
        dailyModelList.add(dailyModel);
      }

      final current = (currentResult as Ok<Current>).value.current;
      final airQuality = (aqResult as Ok<AirQuality>).value.current;

      final weather = Weather(
        locationName: removeDiacritics(locationModel.name),
        currentTemperature: current.temperature_2m.round().toString(),
        currentRelativeHumidity: current.relativeHumidity_2m.toString(),
        currentApparentTemperature:
            current.apparentTemperature.round().toString(),
        currentWeatherIconPath: weatherCodeToPath(
            current.weatherCode, current.isDay == 1 ? true : false),
        currentPrecipitation: current.precipitation.toString(),
        currentWeatherIconDescription:
            weatherCodeToDescription(current.weatherCode),
        currentCloudCover: current.cloudCover.toString(),
        currentAtmospherePressure: current.pressureMsl.toString(),
        currentSurfacePressure: current.surfacePressure.toString(),
        currentWindSpeed: current.windSpeed_10m.toString(),
        currentWindDirection: current.windDirection_10m,
        hourlyModelList: hourlyModelList,
        dailyModelList: dailyModelList,
        aqUsAqi: airQuality.usAqi.toString(),
        aqUvIndex: airQuality.uvIndex.toString(),
        aqdust: airQuality.dust.toString(),
        aqOzone: airQuality.ozone.toString(),
        aqSulphure: airQuality.sulphureDioxide.toString(),
        aqNitrogen: airQuality.nitrogenDioxide.toString(),
        aqCarbon: airQuality.carbonMonoxide.toString(),
        aqPm2_5: airQuality.pm2_5.toString(),
        aqPm10: airQuality.pm10.toString(),
      );
      await _dbClient.insert(weather);
      final data = await _dbClient.getWeather();
      return data;
    }
  }

  Future<Result<Weather>> getWeather() async{
    final weather = await _dbClient.getWeather();
    return weather;
  }
}
