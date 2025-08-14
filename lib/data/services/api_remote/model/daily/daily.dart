import 'package:drizzzle/data/services/api_remote/model/daily/daily_internal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily.freezed.dart';
part 'daily.g.dart';

@Freezed(toJson: false)
class Daily with _$Daily {
  const factory Daily({required DailyInternal daily}) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}
