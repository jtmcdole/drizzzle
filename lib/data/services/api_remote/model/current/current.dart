import 'package:drizzzle/data/services/api_remote/model/current/current_internal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'current.freezed.dart';
part 'current.g.dart';

@Freezed(toJson: false)
class Current with _$Current {
  const factory Current({required CurrentInternal current}) = _Current;

  factory Current.fromJson(Map<String, Object?> json) =>
      _$CurrentFromJson(json);
}
