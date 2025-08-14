import 'package:drizzzle/data/services/api_remote/model/hourly/hourly_internal.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/hourly_internal.dart';

void main() {
  group('Hourly Internal', () {
    test('Should return Current Internal', () {
      expect(
          HourlyInternal.fromJson(hourlyInternalJson),
          isA<HourlyInternal>()
              .having((w) => w.time, 'time', time)
              .having((w) => w.temperature_2m, 'temperature_2m', temperature_2m)
              .having((w) => w.relativeHumidity_2m, 'relative_humidity_2m',
                  relativeHumidity2m)
              .having((w) => w.apparentTemperature, 'apparent_temperature',
                  apparentTemperature)
              .having((w) => w.weatherCode, 'weather_code', weatherCode)
              .having((w) => w.precipitationProbability,
                  'precipitation_probability', precipitationProbability)
              .having((w) => w.windSpeed_10m, 'wind_speed_10m', windSpeed10m)
              .having((w) => w.windDirection_10m, 'wind_direction_10m',
                  windDirection10m)
              .having((w) => w.isDay, 'is_day', isDay));
    });
  });
}
