// import 'dart:io';

// import 'package:drizzzle/data/services/api_remote/api_client.dart';
// import 'package:drizzzle/data/services/api_remote/model/air_quality/air_quality.dart';
// import 'package:drizzzle/data/services/api_remote/model/current/current.dart';
// import 'package:drizzzle/data/services/api_remote/model/daily/daily.dart';
// import 'package:drizzzle/data/services/api_remote/model/hourly/hourly.dart';
// import 'package:drizzzle/data/services/api_remote/model/location/location.dart';
// import 'package:drizzzle/utils/resource_string.dart';
// import 'package:drizzzle/utils/result.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:http/http.dart' as http;
// import 'package:mocktail/mocktail.dart';

// import '../../../../testing/data/services/api_remote/models/air_quality.dart';
// import '../../../../testing/data/services/api_remote/models/current.dart';
// import '../../../../testing/data/services/api_remote/models/daily.dart';
// import '../../../../testing/data/services/api_remote/models/hourly.dart';
// import '../../../../testing/data/services/api_remote/models/location.dart';

// class MockHttpClient extends Mock implements http.Client {}

// class MockResponse extends Mock implements http.Response {}

// class FakeUri extends Fake implements Uri {}

// void main() {
//   group('Api Client', () {
//     late http.Client httpClient;
//     late ApiClient apiClient;

//     setUpAll(() {
//       registerFallbackValue(FakeUri());
//     });

//     setUp(() {
//       httpClient = MockHttpClient();
//       apiClient = ApiClient(httpClient: httpClient);
//     });

//     group('constructor', () {
//       test('does not require an httpClient', () {
//         expect(ApiClient(), isNotNull);
//       });
//     });

//     group('getLocationData', () {
//       const name = 'berlin';
//       test('makes correct http request', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);

//         try {
//           await apiClient.getLocations(name);
//         } catch (_) {
//           verify(
//             () => httpClient.get(
//               Uri(
//                 scheme: ResourceString.scheme,
//                 host: ResourceString.geocodingHost,
//                 path: ResourceString.geocodingPath,
//                 queryParameters: {
//                   ResourceString.geoNameQuery: name,
//                   ResourceString.geoCountQuery: '20',
//                 },
//               ),
//             ),
//           ).called(1);
//         }
//       });

//       test('throws exception on a non-ok response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getLocations(name);
//         switch (result) {
//           case Ok<Location>():
//             break;
//           case Error<Location>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });

//       test('throws exception on an error response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getLocations(name);
//         switch (result) {
//           case Ok<Location>():
//             fail('');
//           case Error<Location>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });
//       test('returns location on a valid response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn(locationString);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getLocations(name);
//         switch (result) {
//           case Ok<Location>():
//             debugPrint(result.value.results.toString());
//             expect(
//                 result.value,
//                 isA<Location>()
//                     .having((l) => l.results, 'results', locationInternalList));
//             break;
//           case Error<Location>():
//             fail('');
//         }
//       });
//     });

//     group('getCurrentData', () {
//       const latitude = 52.52437;
//       const longitude = 13.41053;
//       const timezone = "Europe/Berlin";
//       test('makes correct http request', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         try {
//           await apiClient.getCurrentData(
//             latitude,
//             longitude,
//             timezone: timezone,
//           );
//         } catch (_) {
//           verify(
//             () => httpClient.get(
//               Uri(
//                 scheme: ResourceString.scheme,
//                 host: ResourceString.weatherHost,
//                 path: ResourceString.weatherPath,
//                 queryParameters: {
//                   ResourceString.latitudeQuery: latitude.toString(),
//                   ResourceString.longitudeQuery: longitude.toString(),
//                   ResourceString.currentQuery: ResourceString.currentQueryValue,
//                   ResourceString.timezoneQuery: timezone,
//                   ResourceString.forecastQuery:
//                       ResourceString.forecastDaysQueryValue,
//                 },
//               ),
//             ),
//           ).called(1);
//         }
//       });

//       test('throws exception on a non-ok response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getCurrentData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<Current>():
//             fail('');
//           case Error<Current>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });

//       test('throws exception on an error response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getCurrentData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<Current>():
//             fail('');
//           case Error<Current>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });
//       test('returns current on a valid response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn(currentString);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getCurrentData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<Current>():
//             expect(
//                 result.value,
//                 isA<Current>()
//                     .having((l) => l.current, 'current', currentInternal));
//             break;
//           case Error<Current>():
//             fail('');
//         }
//       });
//     });

//     group('getHourlyData', () {
//       const latitude = 52.52437;
//       const longitude = 13.41053;
//       const timezone = "Europe/Berlin";
//       test('makes correct http request', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         try {
//           await apiClient.getHourlyData(
//             latitude,
//             longitude,
//             timezone: timezone,
//           );
//         } catch (_) {
//           verify(
//             () => httpClient.get(
//               Uri(
//                 scheme: ResourceString.scheme,
//                 host: ResourceString.weatherHost,
//                 path: ResourceString.weatherPath,
//                 queryParameters: {
//                   ResourceString.latitudeQuery: latitude.toString(),
//                   ResourceString.longitudeQuery: longitude.toString(),
//                   ResourceString.hourlyQuery: ResourceString.hourlyQueryValue,
//                   ResourceString.timezoneQuery: timezone,
//                   ResourceString.forecastQuery:
//                       ResourceString.forecastDaysQueryValue,
//                 },
//               ),
//             ),
//           ).called(1);
//         }
//       });

//       test('throws exception on a non-ok response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getHourlyData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<Hourly>():
//             fail('');
//           case Error<Hourly>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });

//       test('throws exception on an error response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getHourlyData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<Hourly>():
//             fail('');
//           case Error<Hourly>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });
//       test('returns hourly on a valid response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn(hourlyString);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getHourlyData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<Hourly>():
//             expect(
//                 result.value,
//                 isA<Hourly>()
//                     .having((l) => l.hourly, 'hourly', hourlyInternal));
//             break;
//           case Error<Hourly>():
//             fail('');
//         }
//       });
//     });

//     group('getDailyData', () {
//       const latitude = 52.52437;
//       const longitude = 13.41053;
//       const timezone = "Europe/Berlin";
//       test('makes correct http request', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         try {
//           await apiClient.getDailyData(
//             latitude,
//             longitude,
//             timezone: timezone,
//           );
//         } catch (_) {
//           verify(
//             () => httpClient.get(
//               Uri(
//                 scheme: ResourceString.scheme,
//                 host: ResourceString.weatherHost,
//                 path: ResourceString.weatherPath,
//                 queryParameters: {
//                   ResourceString.latitudeQuery: latitude.toString(),
//                   ResourceString.longitudeQuery: longitude.toString(),
//                   ResourceString.dailyQuery: ResourceString.dailyQueryValue,
//                   ResourceString.timezoneQuery: timezone,
//                   ResourceString.pastdaysQuery: '1',
//                   ResourceString.forecastQuery: '14',
//                 },
//               ),
//             ),
//           ).called(1);
//         }
//       });

//       test('throws exception on a non-ok response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getDailyData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<Daily>():
//             fail('');
//           case Error<Daily>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });

//       test('throws exception on an error response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getDailyData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<Daily>():
//             fail('');
//           case Error<Daily>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });
//       test('returns daily on a valid response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn(dailyString);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getDailyData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<Daily>():
//             expect(result.value,
//                 isA<Daily>().having((l) => l.daily, 'daily', dailyInternal));
//             break;
//           case Error<Daily>():
//             fail('');
//         }
//       });
//     });

//     group('getAirQualityData', () {
//       const latitude = 52.52437;
//       const longitude = 13.41053;
//       const timezone = "Europe/Berlin";
//       test('makes correct http request', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         try {
//           await apiClient.getAirQualityData(
//             latitude,
//             longitude,
//             timezone: timezone,
//           );
//         } catch (_) {
//           verify(
//             () => httpClient.get(
//               Uri(
//                 scheme: ResourceString.scheme,
//                 host: ResourceString.airQualityHost,
//                 path: ResourceString.airQualityHost,
//                 queryParameters: {
//                   ResourceString.latitudeQuery: latitude.toString(),
//                   ResourceString.longitudeQuery: longitude.toString(),
//                   ResourceString.currentQuery:
//                       ResourceString.airQualityQueryValue,
//                   ResourceString.forecastQuery:
//                       ResourceString.forecastDaysQueryValue,
//                   'domains': 'cams_global',
//                 },
//               ),
//             ),
//           ).called(1);
//         }
//       });

//       test('throws exception on a non-ok response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getAirQualityData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<AirQuality>():
//             fail('');
//           case Error<AirQuality>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });

//       test('throws exception on an error response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.badRequest);
//         when(() => response.body).thenReturn('{}');
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getAirQualityData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<AirQuality>():
//             fail('');
//           case Error<AirQuality>():
//             expect(result.error, isA<Exception>());
//             break;
//         }
//       });
//       test('returns daily on a valid response', () async {
//         final response = MockResponse();
//         when(() => response.statusCode).thenReturn(HttpStatus.ok);
//         when(() => response.body).thenReturn(airQualityString);
//         when(() => httpClient.get(any())).thenAnswer((_) async => response);
//         final result = await apiClient.getAirQualityData(
//           latitude,
//           longitude,
//           timezone: timezone,
//         );
//         switch (result) {
//           case Ok<AirQuality>():
//             expect(
//                 result.value,
//                 isA<AirQuality>()
//                     .having((l) => l.current, 'airQuality', current));
//             break;
//           case Error<AirQuality>():
//             fail('');
//         }
//       });
//     });
//   });
// }
