import 'package:drizzzle/data/services/api_remote/model/air_quality/air_quality_internal.dart';

const Map<String, Object?> airQualityJson = {
  "current": {
    "us_aqi": 69,
    "pm10": 24.2,
    "pm2_5": 24.2,
    "carbon_monoxide": 413,
    "nitrogen_dioxide": 36.4,
    "sulphur_dioxide": 12.3,
    "ozone": 16,
    "dust": 0,
    "uv_index": 0
  }
};
const AirQualityInternal current = AirQualityInternal(
  pm10: 24.2,
  pm2_5: 24.2,
  carbonMonoxide: 413,
  nitrogenDioxide: 36.4,
  sulphureDioxide: 12.3,
  ozone: 16,
  dust: 0,
  uvIndex: 0,
  usAqi: 69,
);

const airQualityString = '''
{
  "current": {
    "us_aqi": 69,
    "pm10": 24.2,
    "pm2_5": 24.2,
    "carbon_monoxide": 413,
    "nitrogen_dioxide": 36.4,
    "sulphur_dioxide": 12.3,
    "ozone": 16,
    "dust": 0,
    "uv_index": 0
  }
}
''';
