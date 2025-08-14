import 'package:drizzzle/data/services/api_remote/model/hourly/hourly_internal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'hourly.freezed.dart';
part 'hourly.g.dart';

@Freezed(toJson: false)
class Hourly with _$Hourly {
  const factory Hourly({required HourlyInternal hourly}) = _Hourly;

  factory Hourly.fromJson(Map<String, Object?> json) => _$HourlyFromJson(json);
}
