// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_quality_internal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AirQualityInternal _$AirQualityInternalFromJson(Map<String, dynamic> json) {
  return _AirQualityInternal.fromJson(json);
}

/// @nodoc
mixin _$AirQualityInternal {
  @JsonKey(name: 'us_aqi')
  int get usAqi => throw _privateConstructorUsedError;
  @JsonKey(name: 'pm10')
  double get pm10 => throw _privateConstructorUsedError;
  @JsonKey(name: 'pm2_5')
  double get pm2_5 => throw _privateConstructorUsedError;
  @JsonKey(name: 'carbon_monoxide')
  int get carbonMonoxide => throw _privateConstructorUsedError;
  @JsonKey(name: 'nitrogen_dioxide')
  double get nitrogenDioxide => throw _privateConstructorUsedError;
  @JsonKey(name: 'sulphur_dioxide')
  double get sulphureDioxide => throw _privateConstructorUsedError;
  @JsonKey(name: 'ozone')
  int get ozone => throw _privateConstructorUsedError;
  @JsonKey(name: 'dust')
  int get dust => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index')
  int get uvIndex => throw _privateConstructorUsedError;

  /// Create a copy of AirQualityInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AirQualityInternalCopyWith<AirQualityInternal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirQualityInternalCopyWith<$Res> {
  factory $AirQualityInternalCopyWith(
          AirQualityInternal value, $Res Function(AirQualityInternal) then) =
      _$AirQualityInternalCopyWithImpl<$Res, AirQualityInternal>;
  @useResult
  $Res call(
      {@JsonKey(name: 'us_aqi') int usAqi,
      @JsonKey(name: 'pm10') double pm10,
      @JsonKey(name: 'pm2_5') double pm2_5,
      @JsonKey(name: 'carbon_monoxide') int carbonMonoxide,
      @JsonKey(name: 'nitrogen_dioxide') double nitrogenDioxide,
      @JsonKey(name: 'sulphur_dioxide') double sulphureDioxide,
      @JsonKey(name: 'ozone') int ozone,
      @JsonKey(name: 'dust') int dust,
      @JsonKey(name: 'uv_index') int uvIndex});
}

/// @nodoc
class _$AirQualityInternalCopyWithImpl<$Res, $Val extends AirQualityInternal>
    implements $AirQualityInternalCopyWith<$Res> {
  _$AirQualityInternalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AirQualityInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usAqi = null,
    Object? pm10 = null,
    Object? pm2_5 = null,
    Object? carbonMonoxide = null,
    Object? nitrogenDioxide = null,
    Object? sulphureDioxide = null,
    Object? ozone = null,
    Object? dust = null,
    Object? uvIndex = null,
  }) {
    return _then(_value.copyWith(
      usAqi: null == usAqi
          ? _value.usAqi
          : usAqi // ignore: cast_nullable_to_non_nullable
              as int,
      pm10: null == pm10
          ? _value.pm10
          : pm10 // ignore: cast_nullable_to_non_nullable
              as double,
      pm2_5: null == pm2_5
          ? _value.pm2_5
          : pm2_5 // ignore: cast_nullable_to_non_nullable
              as double,
      carbonMonoxide: null == carbonMonoxide
          ? _value.carbonMonoxide
          : carbonMonoxide // ignore: cast_nullable_to_non_nullable
              as int,
      nitrogenDioxide: null == nitrogenDioxide
          ? _value.nitrogenDioxide
          : nitrogenDioxide // ignore: cast_nullable_to_non_nullable
              as double,
      sulphureDioxide: null == sulphureDioxide
          ? _value.sulphureDioxide
          : sulphureDioxide // ignore: cast_nullable_to_non_nullable
              as double,
      ozone: null == ozone
          ? _value.ozone
          : ozone // ignore: cast_nullable_to_non_nullable
              as int,
      dust: null == dust
          ? _value.dust
          : dust // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AirQualityInternalImplCopyWith<$Res>
    implements $AirQualityInternalCopyWith<$Res> {
  factory _$$AirQualityInternalImplCopyWith(_$AirQualityInternalImpl value,
          $Res Function(_$AirQualityInternalImpl) then) =
      __$$AirQualityInternalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'us_aqi') int usAqi,
      @JsonKey(name: 'pm10') double pm10,
      @JsonKey(name: 'pm2_5') double pm2_5,
      @JsonKey(name: 'carbon_monoxide') int carbonMonoxide,
      @JsonKey(name: 'nitrogen_dioxide') double nitrogenDioxide,
      @JsonKey(name: 'sulphur_dioxide') double sulphureDioxide,
      @JsonKey(name: 'ozone') int ozone,
      @JsonKey(name: 'dust') int dust,
      @JsonKey(name: 'uv_index') int uvIndex});
}

/// @nodoc
class __$$AirQualityInternalImplCopyWithImpl<$Res>
    extends _$AirQualityInternalCopyWithImpl<$Res, _$AirQualityInternalImpl>
    implements _$$AirQualityInternalImplCopyWith<$Res> {
  __$$AirQualityInternalImplCopyWithImpl(_$AirQualityInternalImpl _value,
      $Res Function(_$AirQualityInternalImpl) _then)
      : super(_value, _then);

  /// Create a copy of AirQualityInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usAqi = null,
    Object? pm10 = null,
    Object? pm2_5 = null,
    Object? carbonMonoxide = null,
    Object? nitrogenDioxide = null,
    Object? sulphureDioxide = null,
    Object? ozone = null,
    Object? dust = null,
    Object? uvIndex = null,
  }) {
    return _then(_$AirQualityInternalImpl(
      usAqi: null == usAqi
          ? _value.usAqi
          : usAqi // ignore: cast_nullable_to_non_nullable
              as int,
      pm10: null == pm10
          ? _value.pm10
          : pm10 // ignore: cast_nullable_to_non_nullable
              as double,
      pm2_5: null == pm2_5
          ? _value.pm2_5
          : pm2_5 // ignore: cast_nullable_to_non_nullable
              as double,
      carbonMonoxide: null == carbonMonoxide
          ? _value.carbonMonoxide
          : carbonMonoxide // ignore: cast_nullable_to_non_nullable
              as int,
      nitrogenDioxide: null == nitrogenDioxide
          ? _value.nitrogenDioxide
          : nitrogenDioxide // ignore: cast_nullable_to_non_nullable
              as double,
      sulphureDioxide: null == sulphureDioxide
          ? _value.sulphureDioxide
          : sulphureDioxide // ignore: cast_nullable_to_non_nullable
              as double,
      ozone: null == ozone
          ? _value.ozone
          : ozone // ignore: cast_nullable_to_non_nullable
              as int,
      dust: null == dust
          ? _value.dust
          : dust // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$AirQualityInternalImpl implements _AirQualityInternal {
  const _$AirQualityInternalImpl(
      {@JsonKey(name: 'us_aqi') required this.usAqi,
      @JsonKey(name: 'pm10') required this.pm10,
      @JsonKey(name: 'pm2_5') required this.pm2_5,
      @JsonKey(name: 'carbon_monoxide') required this.carbonMonoxide,
      @JsonKey(name: 'nitrogen_dioxide') required this.nitrogenDioxide,
      @JsonKey(name: 'sulphur_dioxide') required this.sulphureDioxide,
      @JsonKey(name: 'ozone') required this.ozone,
      @JsonKey(name: 'dust') required this.dust,
      @JsonKey(name: 'uv_index') required this.uvIndex});

  factory _$AirQualityInternalImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirQualityInternalImplFromJson(json);

  @override
  @JsonKey(name: 'us_aqi')
  final int usAqi;
  @override
  @JsonKey(name: 'pm10')
  final double pm10;
  @override
  @JsonKey(name: 'pm2_5')
  final double pm2_5;
  @override
  @JsonKey(name: 'carbon_monoxide')
  final int carbonMonoxide;
  @override
  @JsonKey(name: 'nitrogen_dioxide')
  final double nitrogenDioxide;
  @override
  @JsonKey(name: 'sulphur_dioxide')
  final double sulphureDioxide;
  @override
  @JsonKey(name: 'ozone')
  final int ozone;
  @override
  @JsonKey(name: 'dust')
  final int dust;
  @override
  @JsonKey(name: 'uv_index')
  final int uvIndex;

  @override
  String toString() {
    return 'AirQualityInternal(usAqi: $usAqi, pm10: $pm10, pm2_5: $pm2_5, carbonMonoxide: $carbonMonoxide, nitrogenDioxide: $nitrogenDioxide, sulphureDioxide: $sulphureDioxide, ozone: $ozone, dust: $dust, uvIndex: $uvIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirQualityInternalImpl &&
            (identical(other.usAqi, usAqi) || other.usAqi == usAqi) &&
            (identical(other.pm10, pm10) || other.pm10 == pm10) &&
            (identical(other.pm2_5, pm2_5) || other.pm2_5 == pm2_5) &&
            (identical(other.carbonMonoxide, carbonMonoxide) ||
                other.carbonMonoxide == carbonMonoxide) &&
            (identical(other.nitrogenDioxide, nitrogenDioxide) ||
                other.nitrogenDioxide == nitrogenDioxide) &&
            (identical(other.sulphureDioxide, sulphureDioxide) ||
                other.sulphureDioxide == sulphureDioxide) &&
            (identical(other.ozone, ozone) || other.ozone == ozone) &&
            (identical(other.dust, dust) || other.dust == dust) &&
            (identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, usAqi, pm10, pm2_5,
      carbonMonoxide, nitrogenDioxide, sulphureDioxide, ozone, dust, uvIndex);

  /// Create a copy of AirQualityInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AirQualityInternalImplCopyWith<_$AirQualityInternalImpl> get copyWith =>
      __$$AirQualityInternalImplCopyWithImpl<_$AirQualityInternalImpl>(
          this, _$identity);
}

abstract class _AirQualityInternal implements AirQualityInternal {
  const factory _AirQualityInternal(
      {@JsonKey(name: 'us_aqi') required final int usAqi,
      @JsonKey(name: 'pm10') required final double pm10,
      @JsonKey(name: 'pm2_5') required final double pm2_5,
      @JsonKey(name: 'carbon_monoxide') required final int carbonMonoxide,
      @JsonKey(name: 'nitrogen_dioxide') required final double nitrogenDioxide,
      @JsonKey(name: 'sulphur_dioxide') required final double sulphureDioxide,
      @JsonKey(name: 'ozone') required final int ozone,
      @JsonKey(name: 'dust') required final int dust,
      @JsonKey(name: 'uv_index')
      required final int uvIndex}) = _$AirQualityInternalImpl;

  factory _AirQualityInternal.fromJson(Map<String, dynamic> json) =
      _$AirQualityInternalImpl.fromJson;

  @override
  @JsonKey(name: 'us_aqi')
  int get usAqi;
  @override
  @JsonKey(name: 'pm10')
  double get pm10;
  @override
  @JsonKey(name: 'pm2_5')
  double get pm2_5;
  @override
  @JsonKey(name: 'carbon_monoxide')
  int get carbonMonoxide;
  @override
  @JsonKey(name: 'nitrogen_dioxide')
  double get nitrogenDioxide;
  @override
  @JsonKey(name: 'sulphur_dioxide')
  double get sulphureDioxide;
  @override
  @JsonKey(name: 'ozone')
  int get ozone;
  @override
  @JsonKey(name: 'dust')
  int get dust;
  @override
  @JsonKey(name: 'uv_index')
  int get uvIndex;

  /// Create a copy of AirQualityInternal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AirQualityInternalImplCopyWith<_$AirQualityInternalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
