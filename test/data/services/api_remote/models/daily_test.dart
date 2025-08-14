import 'package:drizzzle/data/services/api_remote/model/daily/daily.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/daily.dart';

void main() {
  group('Daily', () {
    test('Daily', () {
      expect(Daily.fromJson(dailyJson),
          isA<Daily>().having((w) => w.daily, 'daily', dailyInternal));
    });
  });
}
