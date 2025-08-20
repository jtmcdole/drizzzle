import 'package:drizzzle/data/repositories/api_remote/weather_repository.dart';
import 'package:drizzzle/domain/models/location_model.dart';
import 'package:drizzzle/domain/models/weather.dart';
import 'package:drizzzle/utils/result.dart';
import 'package:flutter/material.dart';

class WeatherViewModel extends ChangeNotifier {
  final WeatherRepository _weatherRepository;

  WeatherViewModel({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository;
  bool _loading = false;
  bool get loading => _loading;

  Result<Weather>? _weather;
  Result<Weather>? get weather => _weather;

  Future<void> fetchAndSaveWeather(
      {required LocationModel locationModel}) async {
    _loading = true;
    notifyListeners();

    _weather = await _weatherRepository.fetchAndSaveWeather(locationModel);

    _loading = false;
    notifyListeners();
  }

  Future<void> getLocalWeather() async {
    _loading = true;
    notifyListeners();

    _weather = await _weatherRepository.getLocalWeather();

    _loading = false;
    notifyListeners();
  }
}
