// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_internal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HourlyInternal _$HourlyInternalFromJson(Map<String, dynamic> json) {
  return _HourlyInternal.fromJson(json);
}

/// @nodoc
mixin _$HourlyInternal {
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature_2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relativeHumidity_2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed_10m => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_direction_10m')
  List<int> get windDirection_10m => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  List<int> get isDay => throw _privateConstructorUsedError;

  /// Create a copy of HourlyInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyInternalCopyWith<HourlyInternal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyInternalCopyWith<$Res> {
  factory $HourlyInternalCopyWith(
          HourlyInternal value, $Res Function(HourlyInternal) then) =
      _$HourlyInternalCopyWithImpl<$Res, HourlyInternal>;
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature_2m,
      @JsonKey(name: 'relative_humidity_2m') List<int> relativeHumidity_2m,
      @JsonKey(name: 'apparent_temperature') List<double> apparentTemperature,
      @JsonKey(name: 'weather_code') List<int> weatherCode,
      @JsonKey(name: 'precipitation_probability')
      List<int> precipitationProbability,
      @JsonKey(name: 'wind_speed_10m') List<double> windSpeed_10m,
      @JsonKey(name: 'wind_direction_10m') List<int> windDirection_10m,
      @JsonKey(name: 'is_day') List<int> isDay});
}

/// @nodoc
class _$HourlyInternalCopyWithImpl<$Res, $Val extends HourlyInternal>
    implements $HourlyInternalCopyWith<$Res> {
  _$HourlyInternalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature_2m = null,
    Object? relativeHumidity_2m = null,
    Object? apparentTemperature = null,
    Object? weatherCode = null,
    Object? precipitationProbability = null,
    Object? windSpeed_10m = null,
    Object? windDirection_10m = null,
    Object? isDay = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature_2m: null == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as List<double>,
      relativeHumidity_2m: null == relativeHumidity_2m
          ? _value.relativeHumidity_2m
          : relativeHumidity_2m // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apparentTemperature: null == apparentTemperature
          ? _value.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      precipitationProbability: null == precipitationProbability
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<int>,
      windSpeed_10m: null == windSpeed_10m
          ? _value.windSpeed_10m
          : windSpeed_10m // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windDirection_10m: null == windDirection_10m
          ? _value.windDirection_10m
          : windDirection_10m // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyInternalImplCopyWith<$Res>
    implements $HourlyInternalCopyWith<$Res> {
  factory _$$HourlyInternalImplCopyWith(_$HourlyInternalImpl value,
          $Res Function(_$HourlyInternalImpl) then) =
      __$$HourlyInternalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature_2m,
      @JsonKey(name: 'relative_humidity_2m') List<int> relativeHumidity_2m,
      @JsonKey(name: 'apparent_temperature') List<double> apparentTemperature,
      @JsonKey(name: 'weather_code') List<int> weatherCode,
      @JsonKey(name: 'precipitation_probability')
      List<int> precipitationProbability,
      @JsonKey(name: 'wind_speed_10m') List<double> windSpeed_10m,
      @JsonKey(name: 'wind_direction_10m') List<int> windDirection_10m,
      @JsonKey(name: 'is_day') List<int> isDay});
}

/// @nodoc
class __$$HourlyInternalImplCopyWithImpl<$Res>
    extends _$HourlyInternalCopyWithImpl<$Res, _$HourlyInternalImpl>
    implements _$$HourlyInternalImplCopyWith<$Res> {
  __$$HourlyInternalImplCopyWithImpl(
      _$HourlyInternalImpl _value, $Res Function(_$HourlyInternalImpl) _then)
      : super(_value, _then);

  /// Create a copy of HourlyInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature_2m = null,
    Object? relativeHumidity_2m = null,
    Object? apparentTemperature = null,
    Object? weatherCode = null,
    Object? precipitationProbability = null,
    Object? windSpeed_10m = null,
    Object? windDirection_10m = null,
    Object? isDay = null,
  }) {
    return _then(_$HourlyInternalImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature_2m: null == temperature_2m
          ? _value._temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as List<double>,
      relativeHumidity_2m: null == relativeHumidity_2m
          ? _value._relativeHumidity_2m
          : relativeHumidity_2m // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apparentTemperature: null == apparentTemperature
          ? _value._apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      precipitationProbability: null == precipitationProbability
          ? _value._precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<int>,
      windSpeed_10m: null == windSpeed_10m
          ? _value._windSpeed_10m
          : windSpeed_10m // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windDirection_10m: null == windDirection_10m
          ? _value._windDirection_10m
          : windDirection_10m // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isDay: null == isDay
          ? _value._isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$HourlyInternalImpl implements _HourlyInternal {
  const _$HourlyInternalImpl(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature_2m,
      @JsonKey(name: 'relative_humidity_2m')
      required final List<int> relativeHumidity_2m,
      @JsonKey(name: 'apparent_temperature')
      required final List<double> apparentTemperature,
      @JsonKey(name: 'weather_code') required final List<int> weatherCode,
      @JsonKey(name: 'precipitation_probability')
      required final List<int> precipitationProbability,
      @JsonKey(name: 'wind_speed_10m')
      required final List<double> windSpeed_10m,
      @JsonKey(name: 'wind_direction_10m')
      required final List<int> windDirection_10m,
      @JsonKey(name: 'is_day') required final List<int> isDay})
      : _time = time,
        _temperature_2m = temperature_2m,
        _relativeHumidity_2m = relativeHumidity_2m,
        _apparentTemperature = apparentTemperature,
        _weatherCode = weatherCode,
        _precipitationProbability = precipitationProbability,
        _windSpeed_10m = windSpeed_10m,
        _windDirection_10m = windDirection_10m,
        _isDay = isDay;

  factory _$HourlyInternalImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyInternalImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature_2m;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature_2m {
    if (_temperature_2m is EqualUnmodifiableListView) return _temperature_2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature_2m);
  }

  final List<int> _relativeHumidity_2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relativeHumidity_2m {
    if (_relativeHumidity_2m is EqualUnmodifiableListView)
      return _relativeHumidity_2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relativeHumidity_2m);
  }

  final List<double> _apparentTemperature;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature {
    if (_apparentTemperature is EqualUnmodifiableListView)
      return _apparentTemperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperature);
  }

  final List<int> _weatherCode;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<int> _precipitationProbability;
  @override
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability {
    if (_precipitationProbability is EqualUnmodifiableListView)
      return _precipitationProbability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationProbability);
  }

  final List<double> _windSpeed_10m;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed_10m {
    if (_windSpeed_10m is EqualUnmodifiableListView) return _windSpeed_10m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windSpeed_10m);
  }

  final List<int> _windDirection_10m;
  @override
  @JsonKey(name: 'wind_direction_10m')
  List<int> get windDirection_10m {
    if (_windDirection_10m is EqualUnmodifiableListView)
      return _windDirection_10m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windDirection_10m);
  }

  final List<int> _isDay;
  @override
  @JsonKey(name: 'is_day')
  List<int> get isDay {
    if (_isDay is EqualUnmodifiableListView) return _isDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isDay);
  }

  @override
  String toString() {
    return 'HourlyInternal(time: $time, temperature_2m: $temperature_2m, relativeHumidity_2m: $relativeHumidity_2m, apparentTemperature: $apparentTemperature, weatherCode: $weatherCode, precipitationProbability: $precipitationProbability, windSpeed_10m: $windSpeed_10m, windDirection_10m: $windDirection_10m, isDay: $isDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyInternalImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature_2m, _temperature_2m) &&
            const DeepCollectionEquality()
                .equals(other._relativeHumidity_2m, _relativeHumidity_2m) &&
            const DeepCollectionEquality()
                .equals(other._apparentTemperature, _apparentTemperature) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbability, _precipitationProbability) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed_10m, _windSpeed_10m) &&
            const DeepCollectionEquality()
                .equals(other._windDirection_10m, _windDirection_10m) &&
            const DeepCollectionEquality().equals(other._isDay, _isDay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature_2m),
      const DeepCollectionEquality().hash(_relativeHumidity_2m),
      const DeepCollectionEquality().hash(_apparentTemperature),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_precipitationProbability),
      const DeepCollectionEquality().hash(_windSpeed_10m),
      const DeepCollectionEquality().hash(_windDirection_10m),
      const DeepCollectionEquality().hash(_isDay));

  /// Create a copy of HourlyInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyInternalImplCopyWith<_$HourlyInternalImpl> get copyWith =>
      __$$HourlyInternalImplCopyWithImpl<_$HourlyInternalImpl>(
          this, _$identity);
}

abstract class _HourlyInternal implements HourlyInternal {
  const factory _HourlyInternal(
          {required final List<String> time,
          @JsonKey(name: 'temperature_2m')
          required final List<double> temperature_2m,
          @JsonKey(name: 'relative_humidity_2m')
          required final List<int> relativeHumidity_2m,
          @JsonKey(name: 'apparent_temperature')
          required final List<double> apparentTemperature,
          @JsonKey(name: 'weather_code') required final List<int> weatherCode,
          @JsonKey(name: 'precipitation_probability')
          required final List<int> precipitationProbability,
          @JsonKey(name: 'wind_speed_10m')
          required final List<double> windSpeed_10m,
          @JsonKey(name: 'wind_direction_10m')
          required final List<int> windDirection_10m,
          @JsonKey(name: 'is_day') required final List<int> isDay}) =
      _$HourlyInternalImpl;

  factory _HourlyInternal.fromJson(Map<String, dynamic> json) =
      _$HourlyInternalImpl.fromJson;

  @override
  List<String> get time;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature_2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relativeHumidity_2m;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode;
  @override
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed_10m;
  @override
  @JsonKey(name: 'wind_direction_10m')
  List<int> get windDirection_10m;
  @override
  @JsonKey(name: 'is_day')
  List<int> get isDay;

  /// Create a copy of HourlyInternal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyInternalImplCopyWith<_$HourlyInternalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
