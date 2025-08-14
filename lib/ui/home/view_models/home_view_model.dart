import 'package:drizzzle/theme/theme.dart';
import 'package:drizzzle/utils/resource_string.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(bool? brightness, int? indx)
      : _isDark = brightness ?? true,
        _index = indx ?? 0 {
    _selectColor();
  }
  bool _isDark;
  bool get isDark => _isDark;

  late ColorScheme _colorScheme;
  ColorScheme get colorScheme => _colorScheme;

  int _index;
  int get index => _index;

  Future<void> setBrightness() async {
    _isDark = !_isDark;
    final pref = await SharedPreferences.getInstance();
    pref.setBool(SharedPreferencesKeys.brightnessKey, _isDark);
    setColor(_index);
  }

  Future<void> setColor(int indx) async {
    _selectColor(indx);
    _index = indx;
    final pref = await SharedPreferences.getInstance();
    pref.setInt(SharedPreferencesKeys.colorKey, _index);
    notifyListeners();
  }

  void _selectColor([int? indx]) {
    _colorScheme = switch ((_isDark, indx ?? _index)) {
      (false, 0) => MaterialTheme.blueLight(),
      (true, 0) => MaterialTheme.blueDark(),
      (false, 1) => MaterialTheme.greenLight(),
      (true, 1) => MaterialTheme.greenDark(),
      (false, 2) => MaterialTheme.yellowLight(),
      (true, 2) => MaterialTheme.yellowDark(),
      (false, 3) => MaterialTheme.greyLight(),
      (true, 3) => MaterialTheme.greyDark(),
      (false, 4) => MaterialTheme.purpleLight(),
      (true, 4) => MaterialTheme.purpleDark(),
      (false, _) => MaterialTheme.blueLight(),
      (true, _) => MaterialTheme.blueDark(),
    };
  }
}
