import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_model.freezed.dart';

@Freezed(toJson: false, fromJson: false)
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required String name,
    required double latitude,
    required double longitude,
    required String? timezone,
    required String? admin1,
    required String? country,
  }) = _LocationModel;
}
