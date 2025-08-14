import 'package:drizzzle/data/services/api_remote/model/location/location_internal.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../testing/data/services/api_remote/models/location_internal.dart';

void main() {
  group('Location Internal', () {
    test('All fields are present', () {
      expect(
          LocationInternal.fromJson(locationJson),
          isA<LocationInternal>()
              .having((w) => w.id, 'id', 2950159)
              .having((w) => w.name, 'name', 'Berlin')
              .having((w) => w.latitude, 'latitude', 52.52437)
              .having((w) => w.longitude, 'longitude', 13.41053)
              .having((w) => w.timezone, 'timezone', "Europe/Berlin")
              .having((w) => w.country, 'country', "Germany")
              .having((w) => w.admin1, 'admin1', "Land Berlin"));
    });
    test('Some fields are not present', () {
      expect(
          LocationInternal.fromJson(locationJsonNull),
          isA<LocationInternal>()
              .having((w) => w.id, 'id', 2140264)
              .having((w) => w.name, 'name', 'Mé')
              .having((w) => w.latitude, 'latitude', -21.31667)
              .having((w) => w.longitude, 'longitude', 165.56667)
              .having((w) => w.timezone, 'timezone', "Pacific/Noumea")
              .having((w) => w.country, 'country', '')
              .having((w) => w.admin1, 'admin1', ''));
    });
  });
}
