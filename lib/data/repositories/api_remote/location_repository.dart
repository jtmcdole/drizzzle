import 'package:drizzzle/data/services/api_remote/api_client.dart';
import 'package:drizzzle/data/services/api_remote/model/location/location.dart';
import 'package:drizzzle/domain/models/location_model.dart';

import '../../../utils/result.dart';

class LocationRepository {
  LocationRepository({ApiClient? apiClient})
      : _apiClient = apiClient ?? ApiClient();
  final ApiClient _apiClient;

  Future<Result<List<LocationModel>>> getLocations(String name) async {
    final result = await _apiClient.getLocations(name);
    switch (result) {
      case Ok<Location>():
        final resultValue = result.value.results;
        if (resultValue == null) {
          return Result.error(Exception());
        } else {
          final locationList = resultValue.map((l) {
            return LocationModel(
              name: l.name,
              latitude: l.latitude,
              longitude: l.longitude,
              timezone: l.timezone,
              admin1: l.admin1,
              country: l.country,
            );
          }).toList();
          return Result.ok(locationList);
        }
      case Error<Location>():
        return Result.error(Exception());
    }
  }
}
