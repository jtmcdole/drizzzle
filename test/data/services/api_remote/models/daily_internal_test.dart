import 'package:drizzzle/data/services/api_remote/model/daily/daily_internal.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/daily_internal.dart';

void main() {
  group('Daily Internal', () {
    test('Should return DailyInternal', () {
      expect(
          DailyInternal.fromJson(dailyInternalJson),
          isA<DailyInternal>()
              .having((w) => w.time, 'time', time)
              .having((w) => w.weatherCode, 'weather_code', weatherCode)
              .having((w) => w.temperature_2mMax, 'temperature_2m_max',
                  temperature2mMax)
              .having((w) => w.temperature_2mMin, 'temperature_2m_min',
                  temperature2mMin)
              .having((w) => w.sunrise, 'sunrise', sunrise)
              .having((w) => w.sunset, 'sunset', sunset)
              .having(
                  (w) => w.precipitationProbabilityMax,
                  'precipitation_probability_max',
                  precipitationProbabilityMax));
    });
  });
}
