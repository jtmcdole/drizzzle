import 'package:drizzzle/data/services/db_local/db_client.dart';
import 'package:drizzzle/domain/models/weather.dart';
import 'package:drizzzle/utils/result.dart';
import 'package:flutter/material.dart';

class LocalWeatherViewModel extends ChangeNotifier {
  final DbClient _dbClient;

  LocalWeatherViewModel({required DbClient dbClient}) : _dbClient = dbClient;

  bool _loading = false;
  bool get loading => _loading;

  Result<Weather>? _weather;
  Result<Weather>? get weather => _weather;

  Future<void> save(Weather weather) async {
    _dbClient.insert(weather);
  }

  Future<void> loadWeather() async {
    _loading = true;
    notifyListeners();

    _weather = await _dbClient.getWeather();

    _loading = false;
    notifyListeners();
  }
}
