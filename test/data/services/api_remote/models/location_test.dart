import 'package:drizzzle/data/services/api_remote/model/location/location.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/location.dart';

void main() {
  group('Location', () {
    test('Locations are present', () {
      expect(
          Location.fromJson(locationResultJson),
          isA<Location>()
              .having((w) => w.results, 'results', locationInternalList));
    });

    test('Locations are not present', () {
      expect(Location.fromJson({}),
          isA<Location>().having((w) => w.results, 'results', null));
    });
  });
}
