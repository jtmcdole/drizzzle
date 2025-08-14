import 'package:drizzzle/data/services/api_remote/model/air_quality/air_quality_internal.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/air_quality_internal.dart';

void main() {

  group('Air Quality Internal', () {
    test('Should return AirQualityInterval', () {
      expect(
          AirQualityInternal.fromJson(airQualityInternalJson),
          isA<AirQualityInternal>()
              .having((w) => w.pm10, 'pm10', 24.2)
              .having((w) => w.pm2_5, 'pm2_5', 24.2)
              .having((w) => w.pm10, 'pm10', 24.2)
              .having((w) => w.carbonMonoxide, 'carbon_monoxide', 413)
              .having((w) => w.nitrogenDioxide, 'nitrogenDioxide', 36.4)
              .having((w) => w.sulphureDioxide, 'sulphureDioxide', 12.3)
              .having((w) => w.ozone, 'ozone', 16)
              .having((w) => w.dust, 'dust', 0)
              .having((w) => w.uvIndex, 'uvIndex', 0)
              .having((w) => w.usAqi, 'usAqi', 69));
    });
  });
}
