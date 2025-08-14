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
    required String timezone,
    @JsonKey(defaultValue: '') required String country,
    @JsonKey(defaultValue: '') required String admin1,
  }) = _LocationInternal;

  factory LocationInternal.fromJson(Map<String, Object?> json) =>
      _$LocationInternalFromJson(json);
}
