import 'package:drizzzle/data/repositories/api_remote/location_repository.dart';
import 'package:drizzzle/data/services/api_remote/api_client.dart';
import 'package:drizzzle/domain/models/location_model.dart';
import 'package:drizzzle/utils/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// doing flaky test here
void main() {
  group('LocationRepository', () {
    late ApiClient apiClient;
    late LocationRepository locationRepository;

    setUp(() {
      apiClient = ApiClient();
      locationRepository = LocationRepository(apiClient: apiClient);
    });

    group('getLocation', () {
      const validName = 'berlin';
      const invalidName = 'A';

      test('calls getLocation with invalid city', () async {
        final result = await locationRepository.getLocations(invalidName);

        switch (result) {
          case Ok<List<LocationModel>>():
            fail('');
          case Error<List<LocationModel>>():
            expect(result, isA<Error<List<LocationModel>>>());
        }
      });

      test('returns correct location list', () async {
        final result = await locationRepository.getLocations(validName);
        switch (result) {
          case Ok<List<LocationModel>>():
            expect(result.value, isA<List<LocationModel>>());
            debugPrint(result.value.length.toString());
            debugPrint(result.value.toString());
          case Error<List<LocationModel>>():
            fail('');
        }
      });
    });
  });
}
