import 'package:drizzzle/data/services/api_remote/model/hourly/hourly.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/hourly.dart';

void main() {
  group('Hourly', () {
    test('Should return Hourly', () {
      expect(Hourly.fromJson(hourlyJson),
          isA<Hourly>().having((w) => w.hourly, 'hourly', hourlyInternal));
    });
  });
}
