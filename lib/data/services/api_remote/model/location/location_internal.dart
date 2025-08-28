import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_internal.freezed.dart';
part 'location_internal.g.dart';

@Freezed(toJson: false)
class LocationInternal with _$LocationInternal {
  const factory LocationInternal({
    required int id,
    required String name,
    required double latitude,
    required double longitude,
    String? timezone,
    String? country,
    String? admin1,
  }) = _LocationInternal;

  factory LocationInternal.fromJson(Map<String, Object?> json) =>
      _$LocationInternalFromJson(json);
}
