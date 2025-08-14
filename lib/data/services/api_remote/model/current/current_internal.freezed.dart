// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_internal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentInternal _$CurrentInternalFromJson(Map<String, dynamic> json) {
  return _CurrentInternal.fromJson(json);
}

/// @nodoc
mixin _$CurrentInternal {
  @JsonKey(name: 'time')
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  double get temperature_2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_humidity_2m')
  int get relativeHumidity_2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature')
  double get apparentTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  int get isDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  int get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'cloud_cover')
  int get cloudCover => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_msl')
  double get pressureMsl => throw _privateConstructorUsedError;
  @JsonKey(name: 'surface_pressure')
  double get surfacePressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  double get windSpeed_10m => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_direction_10m')
  int get windDirection_10m => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation')
  double get precipitation => throw _privateConstructorUsedError;

  /// Create a copy of CurrentInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentInternalCopyWith<CurrentInternal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentInternalCopyWith<$Res> {
  factory $CurrentInternalCopyWith(
          CurrentInternal value, $Res Function(CurrentInternal) then) =
      _$CurrentInternalCopyWithImpl<$Res, CurrentInternal>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time') String time,
      @JsonKey(name: 'temperature_2m') double temperature_2m,
      @JsonKey(name: 'relative_humidity_2m') int relativeHumidity_2m,
      @JsonKey(name: 'apparent_temperature') double apparentTemperature,
      @JsonKey(name: 'is_day') int isDay,
      @JsonKey(name: 'weather_code') int weatherCode,
      @JsonKey(name: 'cloud_cover') int cloudCover,
      @JsonKey(name: 'pressure_msl') double pressureMsl,
      @JsonKey(name: 'surface_pressure') double surfacePressure,
      @JsonKey(name: 'wind_speed_10m') double windSpeed_10m,
      @JsonKey(name: 'wind_direction_10m') int windDirection_10m,
      @JsonKey(name: 'precipitation') double precipitation});
}

/// @nodoc
class _$CurrentInternalCopyWithImpl<$Res, $Val extends CurrentInternal>
    implements $CurrentInternalCopyWith<$Res> {
  _$CurrentInternalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature_2m = null,
    Object? relativeHumidity_2m = null,
    Object? apparentTemperature = null,
    Object? isDay = null,
    Object? weatherCode = null,
    Object? cloudCover = null,
    Object? pressureMsl = null,
    Object? surfacePressure = null,
    Object? windSpeed_10m = null,
    Object? windDirection_10m = null,
    Object? precipitation = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature_2m: null == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as double,
      relativeHumidity_2m: null == relativeHumidity_2m
          ? _value.relativeHumidity_2m
          : relativeHumidity_2m // ignore: cast_nullable_to_non_nullable
              as int,
      apparentTemperature: null == apparentTemperature
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      cloudCover: null == cloudCover
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as int,
      pressureMsl: null == pressureMsl
          ? _value.pressureMsl
          : pressureMsl // ignore: cast_nullable_to_non_nullable
              as double,
      surfacePressure: null == surfacePressure
          ? _value.surfacePressure
          : surfacePressure // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed_10m: null == windSpeed_10m
          ? _value.windSpeed_10m
          : windSpeed_10m // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection_10m: null == windDirection_10m
          ? _value.windDirection_10m
          : windDirection_10m // ignore: cast_nullable_to_non_nullable
              as int,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentInternalImplCopyWith<$Res>
    implements $CurrentInternalCopyWith<$Res> {
  factory _$$CurrentInternalImplCopyWith(_$CurrentInternalImpl value,
          $Res Function(_$CurrentInternalImpl) then) =
      __$$CurrentInternalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time') String time,
      @JsonKey(name: 'temperature_2m') double temperature_2m,
      @JsonKey(name: 'relative_humidity_2m') int relativeHumidity_2m,
      @JsonKey(name: 'apparent_temperature') double apparentTemperature,
      @JsonKey(name: 'is_day') int isDay,
      @JsonKey(name: 'weather_code') int weatherCode,
      @JsonKey(name: 'cloud_cover') int cloudCover,
      @JsonKey(name: 'pressure_msl') double pressureMsl,
      @JsonKey(name: 'surface_pressure') double surfacePressure,
      @JsonKey(name: 'wind_speed_10m') double windSpeed_10m,
      @JsonKey(name: 'wind_direction_10m') int windDirection_10m,
      @JsonKey(name: 'precipitation') double precipitation});
}

/// @nodoc
class __$$CurrentInternalImplCopyWithImpl<$Res>
    extends _$CurrentInternalCopyWithImpl<$Res, _$CurrentInternalImpl>
    implements _$$CurrentInternalImplCopyWith<$Res> {
  __$$CurrentInternalImplCopyWithImpl(
      _$CurrentInternalImpl _value, $Res Function(_$CurrentInternalImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature_2m = null,
    Object? relativeHumidity_2m = null,
    Object? apparentTemperature = null,
    Object? isDay = null,
    Object? weatherCode = null,
    Object? cloudCover = null,
    Object? pressureMsl = null,
    Object? surfacePressure = null,
    Object? windSpeed_10m = null,
    Object? windDirection_10m = null,
    Object? precipitation = null,
  }) {
    return _then(_$CurrentInternalImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature_2m: null == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as double,
      relativeHumidity_2m: null == relativeHumidity_2m
          ? _value.relativeHumidity_2m
          : relativeHumidity_2m // ignore: cast_nullable_to_non_nullable
              as int,
      apparentTemperature: null == apparentTemperature
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      cloudCover: null == cloudCover
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as int,
      pressureMsl: null == pressureMsl
          ? _value.pressureMsl
          : pressureMsl // ignore: cast_nullable_to_non_nullable
              as double,
      surfacePressure: null == surfacePressure
          ? _value.surfacePressure
          : surfacePressure // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed_10m: null == windSpeed_10m
          ? _value.windSpeed_10m
          : windSpeed_10m // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection_10m: null == windDirection_10m
          ? _value.windDirection_10m
          : windDirection_10m // ignore: cast_nullable_to_non_nullable
              as int,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CurrentInternalImpl implements _CurrentInternal {
  const _$CurrentInternalImpl(
      {@JsonKey(name: 'time') required this.time,
      @JsonKey(name: 'temperature_2m') required this.temperature_2m,
      @JsonKey(name: 'relative_humidity_2m') required this.relativeHumidity_2m,
      @JsonKey(name: 'apparent_temperature') required this.apparentTemperature,
      @JsonKey(name: 'is_day') required this.isDay,
      @JsonKey(name: 'weather_code') required this.weatherCode,
      @JsonKey(name: 'cloud_cover') required this.cloudCover,
      @JsonKey(name: 'pressure_msl') required this.pressureMsl,
      @JsonKey(name: 'surface_pressure') required this.surfacePressure,
      @JsonKey(name: 'wind_speed_10m') required this.windSpeed_10m,
      @JsonKey(name: 'wind_direction_10m') required this.windDirection_10m,
      @JsonKey(name: 'precipitation') required this.precipitation});

  factory _$CurrentInternalImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentInternalImplFromJson(json);

  @override
  @JsonKey(name: 'time')
  final String time;
  @override
  @JsonKey(name: 'temperature_2m')
  final double temperature_2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  final int relativeHumidity_2m;
  @override
  @JsonKey(name: 'apparent_temperature')
  final double apparentTemperature;
  @override
  @JsonKey(name: 'is_day')
  final int isDay;
  @override
  @JsonKey(name: 'weather_code')
  final int weatherCode;
  @override
  @JsonKey(name: 'cloud_cover')
  final int cloudCover;
  @override
  @JsonKey(name: 'pressure_msl')
  final double pressureMsl;
  @override
  @JsonKey(name: 'surface_pressure')
  final double surfacePressure;
  @override
  @JsonKey(name: 'wind_speed_10m')
  final double windSpeed_10m;
  @override
  @JsonKey(name: 'wind_direction_10m')
  final int windDirection_10m;
  @override
  @JsonKey(name: 'precipitation')
  final double precipitation;

  @override
  String toString() {
    return 'CurrentInternal(time: $time, temperature_2m: $temperature_2m, relativeHumidity_2m: $relativeHumidity_2m, apparentTemperature: $apparentTemperature, isDay: $isDay, weatherCode: $weatherCode, cloudCover: $cloudCover, pressureMsl: $pressureMsl, surfacePressure: $surfacePressure, windSpeed_10m: $windSpeed_10m, windDirection_10m: $windDirection_10m, precipitation: $precipitation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentInternalImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature_2m, temperature_2m) ||
                other.temperature_2m == temperature_2m) &&
            (identical(other.relativeHumidity_2m, relativeHumidity_2m) ||
                other.relativeHumidity_2m == relativeHumidity_2m) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.cloudCover, cloudCover) ||
                other.cloudCover == cloudCover) &&
            (identical(other.pressureMsl, pressureMsl) ||
                other.pressureMsl == pressureMsl) &&
            (identical(other.surfacePressure, surfacePressure) ||
                other.surfacePressure == surfacePressure) &&
            (identical(other.windSpeed_10m, windSpeed_10m) ||
                other.windSpeed_10m == windSpeed_10m) &&
            (identical(other.windDirection_10m, windDirection_10m) ||
                other.windDirection_10m == windDirection_10m) &&
            (identical(other.precipitation, precipitation) ||
                other.precipitation == precipitation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      temperature_2m,
      relativeHumidity_2m,
      apparentTemperature,
      isDay,
      weatherCode,
      cloudCover,
      pressureMsl,
      surfacePressure,
      windSpeed_10m,
      windDirection_10m,
      precipitation);

  /// Create a copy of CurrentInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentInternalImplCopyWith<_$CurrentInternalImpl> get copyWith =>
      __$$CurrentInternalImplCopyWithImpl<_$CurrentInternalImpl>(
          this, _$identity);
}

abstract class _CurrentInternal implements CurrentInternal {
  const factory _CurrentInternal(
      {@JsonKey(name: 'time') required final String time,
      @JsonKey(name: 'temperature_2m') required final double temperature_2m,
      @JsonKey(name: 'relative_humidity_2m')
      required final int relativeHumidity_2m,
      @JsonKey(name: 'apparent_temperature')
      required final double apparentTemperature,
      @JsonKey(name: 'is_day') required final int isDay,
      @JsonKey(name: 'weather_code') required final int weatherCode,
      @JsonKey(name: 'cloud_cover') required final int cloudCover,
      @JsonKey(name: 'pressure_msl') required final double pressureMsl,
      @JsonKey(name: 'surface_pressure') required final double surfacePressure,
      @JsonKey(name: 'wind_speed_10m') required final double windSpeed_10m,
      @JsonKey(name: 'wind_direction_10m') required final int windDirection_10m,
      @JsonKey(name: 'precipitation')
      required final double precipitation}) = _$CurrentInternalImpl;

  factory _CurrentInternal.fromJson(Map<String, dynamic> json) =
      _$CurrentInternalImpl.fromJson;

  @override
  @JsonKey(name: 'time')
  String get time;
  @override
  @JsonKey(name: 'temperature_2m')
  double get temperature_2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  int get relativeHumidity_2m;
  @override
  @JsonKey(name: 'apparent_temperature')
  double get apparentTemperature;
  @override
  @JsonKey(name: 'is_day')
  int get isDay;
  @override
  @JsonKey(name: 'weather_code')
  int get weatherCode;
  @override
  @JsonKey(name: 'cloud_cover')
  int get cloudCover;
  @override
  @JsonKey(name: 'pressure_msl')
  double get pressureMsl;
  @override
  @JsonKey(name: 'surface_pressure')
  double get surfacePressure;
  @override
  @JsonKey(name: 'wind_speed_10m')
  double get windSpeed_10m;
  @override
  @JsonKey(name: 'wind_direction_10m')
  int get windDirection_10m;
  @override
  @JsonKey(name: 'precipitation')
  double get precipitation;

  /// Create a copy of CurrentInternal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentInternalImplCopyWith<_$CurrentInternalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
