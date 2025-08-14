import 'package:drizzzle/data/services/api_remote/model/current/current.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/current.dart';

void main() {
  group('Current', () {
    test('Should return Current', () {
      expect(Current.fromJson(currentJson),
          isA<Current>().having((w) => w.current, 'current', currentInternal));
    });
  });
}
