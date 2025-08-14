import 'package:drizzzle/data/services/api_remote/model/air_quality/air_quality.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/air_quality.dart';

void main() {
  group('Air Quality', () {
    test('Should return AirQuality', () {
      expect(AirQuality.fromJson(airQualityJson),
          isA<AirQuality>().having((w) => w.current, 'current', current));
    });
  });
}
