import 'package:drizzzle/data/services/api_remote/model/current/current_internal.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/current_internal.dart';

void main() {
  group('Current Internal', () {
    test('Should return CurrentInternal', () {
      expect(
          CurrentInternal.fromJson(currentInternalJson),
          isA<CurrentInternal>()
              .having((w) => w.time, 'time', "2025-02-04T14:00")
              .having((w) => w.temperature_2m, 'temperature_2m', 4.2)
              .having((w) => w.relativeHumidity_2m, 'relative_humidity_2m', 67)
              .having((w) => w.apparentTemperature, 'apparent_temperature', 1.3)
              .having((w) => w.isDay, 'is_day', 1)
              .having((w) => w.weatherCode, 'weather_code', 0)
              .having((w) => w.cloudCover, 'cloud_cover', 0)
              .having((w) => w.pressureMsl, 'pressure_msl', 1028.2)
              .having((w) => w.surfacePressure, 'surface_pressure', 1023.4)
              .having((w) => w.windSpeed_10m, 'wind_speed_10m', 4.4)
              .having((w) => w.windDirection_10m, 'wind_direction_10m', 189));
    });
  });
}
