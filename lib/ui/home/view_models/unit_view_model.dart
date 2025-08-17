import 'package:drizzzle/utils/resource_string.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UnitViewModel extends ChangeNotifier {
  late bool _isC;
  bool get isC => _isC;

  late bool _isKmh;
  bool get isKmh => _isKmh;

  UnitViewModel({required bool isC, required bool isKmh})
      : _isC = isC,
        _isKmh = isKmh;

  Future<void> setTemperatureUnit(int index) async {
    if (index == 0) {
      _isC = true;
    } else {
      _isC = false;
    }
    final pref = await SharedPreferences.getInstance();
    pref.setBool(SharedPreferencesKeys.temperatureUnitKey, _isC);
    notifyListeners();
  }

  Future<void> setWindSpeedUnit(int index) async {
    if (index == 0) {
      _isKmh = true;
    } else {
      _isKmh = false;
    }
    final pref = await SharedPreferences.getInstance();
    pref.setBool(SharedPreferencesKeys.windSpeedUnitKey, _isKmh);
    notifyListeners();
  }
}
