import 'package:drizzzle/data/services/api_remote/model/current/current_internal.dart';

const Map<String, Object?> currentJson = {
  "current": {
    "time": "2025-02-04T14:00",
    "temperature_2m": 4.2,
    "relative_humidity_2m": 67,
    "apparent_temperature": 1.3,
    "is_day": 1,
    "weather_code": 0,
    "cloud_cover": 0,
    "pressure_msl": 1028.2,
    "surface_pressure": 1023.4,
    "wind_speed_10m": 4.4,
    "wind_direction_10m": 189
  },
};
const currentInternal = CurrentInternal(
  time: "2025-02-04T14:00",
  temperature_2m: 4.2,
  relativeHumidity_2m: 67,
  apparentTemperature: 1.3,
  isDay: 1,
  weatherCode: 0,
  cloudCover: 0,
  pressureMsl: 1028.2,
  surfacePressure: 1023.4,
  windSpeed_10m: 4.4,
  windDirection_10m: 189,
  precipitation: 0.1,
);

const String currentString = '''
{
  "current": {
    "time": "2025-02-04T14:00",
    "temperature_2m": 4.2,
    "relative_humidity_2m": 67,
    "apparent_temperature": 1.3,
    "is_day": 1,
    "weather_code": 0,
    "cloud_cover": 0,
    "pressure_msl": 1028.2,
    "surface_pressure": 1023.4,
    "wind_speed_10m": 4.4,
    "wind_direction_10m": 189
  }
}
''';
