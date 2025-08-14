import 'dart:async';

import 'package:drizzzle/data/repositories/api_remote/location_repository.dart';
import 'package:drizzzle/domain/models/location_model.dart';
import 'package:flutter/material.dart';

import '../../../utils/result.dart';

class LocationViewModel extends ChangeNotifier {
  final LocationRepository _locationRepository;

  LocationViewModel({required LocationRepository locationRepository})
      : _locationRepository = locationRepository;

  bool _loading = false;
  bool get loading => _loading;

  Result<List<LocationModel>>? _locationList;
  Result<List<LocationModel>>? get locationList => _locationList;

  Future<void> loadLocation({required String name}) async {
    if (name.length < 2) {
      _locationList = null;
      notifyListeners();
      return;
    }
    _loading = true;
    notifyListeners();

    _locationList = await _locationRepository.getLocations(name);

    _loading = false;
    notifyListeners();
  }
}
