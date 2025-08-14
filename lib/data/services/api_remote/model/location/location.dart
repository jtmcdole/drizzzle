import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_internal.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@Freezed(toJson: false)
class Location with _$Location {
  const factory Location({
    List<LocationInternal>? results,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}
