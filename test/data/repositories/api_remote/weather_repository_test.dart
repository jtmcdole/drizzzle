// import 'package:drizzzle/data/repositories/api_remote/weather_repository.dart';
// import 'package:drizzzle/data/services/api_remote/api_client.dart';
// import 'package:drizzzle/data/services/db_local/db_client.dart';
// import 'package:drizzzle/data/services/db_local/db_singleton.dart';
// import 'package:drizzzle/domain/models/location_model.dart';
// import 'package:drizzzle/domain/models/weather.dart';
// import 'package:drizzzle/utils/result.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:sqflite/sqflite.dart';

// // flaky test
// void main() {
//   late ApiClient apiClient;
//   late WeatherRepository weatherRepository;

//   setUp(() {
//     apiClient = ApiClient();
//     //weatherRepository =
//       //  WeatherRepository(apiClient: apiClient, dbClient: DbClient(db: Database));
//   });

//   group('getWeather', () {
//     const locationModel = LocationModel(
//       name: "Berlin",
//       latitude: 52.52437,
//       longitude: 13.41053,
//       timezone: "Europe/Berlin",
//       country: "Germany",
//       admin1: "Land Berlin",
//     );
//     const invalidLocationModel = LocationModel(
//       name: "Berlin",
//       latitude: 1000,
//       longitude: 1000,
//       timezone: "Europe/Berlin",
//       country: "Germany",
//       admin1: "Land Berlin",
//     );

//     test('calls getWeather with invalid data', () async {
//       final result = await weatherRepository.getWeather(invalidLocationModel);
//       switch (result) {
//         case Ok<Weather>():
//           fail('');
//         case Error<Weather>():
//           expect(result.error, isA<Exception>());
//       }
//     });
//     test('returns correct weather data', () async {
//       final result = await weatherRepository.getWeather(locationModel);
//       switch (result) {
//         case Ok<Weather>():
//           expect(result.value, isA<Weather>());
//           debugPrint(result.value.toString());
//         case Error<Weather>():
//           fail('');
//       }
//     });
//   });
// }
