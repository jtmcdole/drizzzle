import 'package:drizzzle/data/services/api_remote/model/location/location_internal.dart';

const Map<String, Object?> locationResultJson = {
  "results": [
    {
      "id": 2950159,
      "name": "Berlin",
      "latitude": 52.52437,
      "longitude": 13.41053,
      "timezone": "Europe/Berlin",
      "country": "Germany",
      "admin1": "Land Berlin"
    },
    {
      "id": 5083330,
      "name": "Berlin",
      "latitude": 44.46867,
      "longitude": -71.18508,
      "timezone": "America/New_York",
      "country": "United States",
      "admin1": "New Hampshire",
    },
  ]
};

const List<LocationInternal> locationInternalList = [
  LocationInternal(
    id: 2950159,
    name: "Berlin",
    latitude: 52.52437,
    longitude: 13.41053,
    timezone: "Europe/Berlin",
    country: "Germany",
    admin1: "Land Berlin",
  ),
  LocationInternal(
    id: 5083330,
    name: "Berlin",
    latitude: 44.46867,
    longitude: -71.18508,
    timezone: "America/New_York",
    country: "United States",
    admin1: "New Hampshire",
  ),
];

const String locationString = '''
{
  "results": [
    {
      "id": 2950159,
      "name": "Berlin",
      "latitude": 52.52437,
      "longitude": 13.41053,
      "timezone": "Europe/Berlin",
      "country": "Germany",
      "admin1": "Land Berlin"
    },
    {
      "id": 5083330,
      "name": "Berlin",
      "latitude": 44.46867,
      "longitude": -71.18508,
      "timezone": "America/New_York",
      "country": "United States",
      "admin1": "New Hampshire"
    }
  ]
}
''';
