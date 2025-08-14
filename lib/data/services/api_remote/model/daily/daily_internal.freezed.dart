// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_internal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyInternal _$DailyInternalFromJson(Map<String, dynamic> json) {
  return _DailyInternal.fromJson(json);
}

/// @nodoc
mixin _$DailyInternal {
  @JsonKey(name: 'time')
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature_2mMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature_2mMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunrise')
  List<String> get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunset')
  List<String> get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability_max')
  List<int> get precipitationProbabilityMax =>
      throw _privateConstructorUsedError;

  /// Create a copy of DailyInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyInternalCopyWith<DailyInternal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyInternalCopyWith<$Res> {
  factory $DailyInternalCopyWith(
          DailyInternal value, $Res Function(DailyInternal) then) =
      _$DailyInternalCopyWithImpl<$Res, DailyInternal>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time') List<String> time,
      @JsonKey(name: 'weather_code') List<int> weatherCode,
      @JsonKey(name: 'temperature_2m_max') List<double> temperature_2mMax,
      @JsonKey(name: 'temperature_2m_min') List<double> temperature_2mMin,
      @JsonKey(name: 'sunrise') List<String> sunrise,
      @JsonKey(name: 'sunset') List<String> sunset,
      @JsonKey(name: 'precipitation_probability_max')
      List<int> precipitationProbabilityMax});
}

/// @nodoc
class _$DailyInternalCopyWithImpl<$Res, $Val extends DailyInternal>
    implements $DailyInternalCopyWith<$Res> {
  _$DailyInternalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature_2mMax = null,
    Object? temperature_2mMin = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? precipitationProbabilityMax = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      temperature_2mMax: null == temperature_2mMax
          ? _value.temperature_2mMax
          : temperature_2mMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperature_2mMin: null == temperature_2mMin
          ? _value.temperature_2mMin
          : temperature_2mMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<String>,
      precipitationProbabilityMax: null == precipitationProbabilityMax
          ? _value.precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyInternalImplCopyWith<$Res>
    implements $DailyInternalCopyWith<$Res> {
  factory _$$DailyInternalImplCopyWith(
          _$DailyInternalImpl value, $Res Function(_$DailyInternalImpl) then) =
      __$$DailyInternalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time') List<String> time,
      @JsonKey(name: 'weather_code') List<int> weatherCode,
      @JsonKey(name: 'temperature_2m_max') List<double> temperature_2mMax,
      @JsonKey(name: 'temperature_2m_min') List<double> temperature_2mMin,
      @JsonKey(name: 'sunrise') List<String> sunrise,
      @JsonKey(name: 'sunset') List<String> sunset,
      @JsonKey(name: 'precipitation_probability_max')
      List<int> precipitationProbabilityMax});
}

/// @nodoc
class __$$DailyInternalImplCopyWithImpl<$Res>
    extends _$DailyInternalCopyWithImpl<$Res, _$DailyInternalImpl>
    implements _$$DailyInternalImplCopyWith<$Res> {
  __$$DailyInternalImplCopyWithImpl(
      _$DailyInternalImpl _value, $Res Function(_$DailyInternalImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature_2mMax = null,
    Object? temperature_2mMin = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? precipitationProbabilityMax = null,
  }) {
    return _then(_$DailyInternalImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      temperature_2mMax: null == temperature_2mMax
          ? _value._temperature_2mMax
          : temperature_2mMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperature_2mMin: null == temperature_2mMin
          ? _value._temperature_2mMin
          : temperature_2mMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
      sunrise: null == sunrise
          ? _value._sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sunset: null == sunset
          ? _value._sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<String>,
      precipitationProbabilityMax: null == precipitationProbabilityMax
          ? _value._precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$DailyInternalImpl implements _DailyInternal {
  const _$DailyInternalImpl(
      {@JsonKey(name: 'time') required final List<String> time,
      @JsonKey(name: 'weather_code') required final List<int> weatherCode,
      @JsonKey(name: 'temperature_2m_max')
      required final List<double> temperature_2mMax,
      @JsonKey(name: 'temperature_2m_min')
      required final List<double> temperature_2mMin,
      @JsonKey(name: 'sunrise') required final List<String> sunrise,
      @JsonKey(name: 'sunset') required final List<String> sunset,
      @JsonKey(name: 'precipitation_probability_max')
      required final List<int> precipitationProbabilityMax})
      : _time = time,
        _weatherCode = weatherCode,
        _temperature_2mMax = temperature_2mMax,
        _temperature_2mMin = temperature_2mMin,
        _sunrise = sunrise,
        _sunset = sunset,
        _precipitationProbabilityMax = precipitationProbabilityMax;

  factory _$DailyInternalImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyInternalImplFromJson(json);

  final List<String> _time;
  @override
  @JsonKey(name: 'time')
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<int> _weatherCode;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<double> _temperature_2mMax;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature_2mMax {
    if (_temperature_2mMax is EqualUnmodifiableListView)
      return _temperature_2mMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature_2mMax);
  }

  final List<double> _temperature_2mMin;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature_2mMin {
    if (_temperature_2mMin is EqualUnmodifiableListView)
      return _temperature_2mMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature_2mMin);
  }

  final List<String> _sunrise;
  @override
  @JsonKey(name: 'sunrise')
  List<String> get sunrise {
    if (_sunrise is EqualUnmodifiableListView) return _sunrise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunrise);
  }

  final List<String> _sunset;
  @override
  @JsonKey(name: 'sunset')
  List<String> get sunset {
    if (_sunset is EqualUnmodifiableListView) return _sunset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunset);
  }

  final List<int> _precipitationProbabilityMax;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  List<int> get precipitationProbabilityMax {
    if (_precipitationProbabilityMax is EqualUnmodifiableListView)
      return _precipitationProbabilityMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationProbabilityMax);
  }

  @override
  String toString() {
    return 'DailyInternal(time: $time, weatherCode: $weatherCode, temperature_2mMax: $temperature_2mMax, temperature_2mMin: $temperature_2mMin, sunrise: $sunrise, sunset: $sunset, precipitationProbabilityMax: $precipitationProbabilityMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyInternalImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._temperature_2mMax, _temperature_2mMax) &&
            const DeepCollectionEquality()
                .equals(other._temperature_2mMin, _temperature_2mMin) &&
            const DeepCollectionEquality().equals(other._sunrise, _sunrise) &&
            const DeepCollectionEquality().equals(other._sunset, _sunset) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbabilityMax,
                _precipitationProbabilityMax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_temperature_2mMax),
      const DeepCollectionEquality().hash(_temperature_2mMin),
      const DeepCollectionEquality().hash(_sunrise),
      const DeepCollectionEquality().hash(_sunset),
      const DeepCollectionEquality().hash(_precipitationProbabilityMax));

  /// Create a copy of DailyInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyInternalImplCopyWith<_$DailyInternalImpl> get copyWith =>
      __$$DailyInternalImplCopyWithImpl<_$DailyInternalImpl>(this, _$identity);
}

abstract class _DailyInternal implements DailyInternal {
  const factory _DailyInternal(
          {@JsonKey(name: 'time') required final List<String> time,
          @JsonKey(name: 'weather_code') required final List<int> weatherCode,
          @JsonKey(name: 'temperature_2m_max')
          required final List<double> temperature_2mMax,
          @JsonKey(name: 'temperature_2m_min')
          required final List<double> temperature_2mMin,
          @JsonKey(name: 'sunrise') required final List<String> sunrise,
          @JsonKey(name: 'sunset') required final List<String> sunset,
          @JsonKey(name: 'precipitation_probability_max')
          required final List<int> precipitationProbabilityMax}) =
      _$DailyInternalImpl;

  factory _DailyInternal.fromJson(Map<String, dynamic> json) =
      _$DailyInternalImpl.fromJson;

  @override
  @JsonKey(name: 'time')
  List<String> get time;
  @override
  @JsonKey(name: 'weather_code')
  List<int> get weatherCode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature_2mMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature_2mMin;
  @override
  @JsonKey(name: 'sunrise')
  List<String> get sunrise;
  @override
  @JsonKey(name: 'sunset')
  List<String> get sunset;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  List<int> get precipitationProbabilityMax;

  /// Create a copy of DailyInternal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyInternalImplCopyWith<_$DailyInternalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
