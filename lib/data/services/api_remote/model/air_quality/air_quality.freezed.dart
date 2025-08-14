// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_quality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AirQuality _$AirQualityFromJson(Map<String, dynamic> json) {
  return _AirQuality.fromJson(json);
}

/// @nodoc
mixin _$AirQuality {
  @JsonKey(name: 'current')
  AirQualityInternal get current => throw _privateConstructorUsedError;

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AirQualityCopyWith<AirQuality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirQualityCopyWith<$Res> {
  factory $AirQualityCopyWith(
          AirQuality value, $Res Function(AirQuality) then) =
      _$AirQualityCopyWithImpl<$Res, AirQuality>;
  @useResult
  $Res call({@JsonKey(name: 'current') AirQualityInternal current});

  $AirQualityInternalCopyWith<$Res> get current;
}

/// @nodoc
class _$AirQualityCopyWithImpl<$Res, $Val extends AirQuality>
    implements $AirQualityCopyWith<$Res> {
  _$AirQualityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as AirQualityInternal,
    ) as $Val);
  }

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirQualityInternalCopyWith<$Res> get current {
    return $AirQualityInternalCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AirQualityImplCopyWith<$Res>
    implements $AirQualityCopyWith<$Res> {
  factory _$$AirQualityImplCopyWith(
          _$AirQualityImpl value, $Res Function(_$AirQualityImpl) then) =
      __$$AirQualityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'current') AirQualityInternal current});

  @override
  $AirQualityInternalCopyWith<$Res> get current;
}

/// @nodoc
class __$$AirQualityImplCopyWithImpl<$Res>
    extends _$AirQualityCopyWithImpl<$Res, _$AirQualityImpl>
    implements _$$AirQualityImplCopyWith<$Res> {
  __$$AirQualityImplCopyWithImpl(
      _$AirQualityImpl _value, $Res Function(_$AirQualityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$AirQualityImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as AirQualityInternal,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$AirQualityImpl implements _AirQuality {
  const _$AirQualityImpl({@JsonKey(name: 'current') required this.current});

  factory _$AirQualityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirQualityImplFromJson(json);

  @override
  @JsonKey(name: 'current')
  final AirQualityInternal current;

  @override
  String toString() {
    return 'AirQuality(current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirQualityImpl &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AirQualityImplCopyWith<_$AirQualityImpl> get copyWith =>
      __$$AirQualityImplCopyWithImpl<_$AirQualityImpl>(this, _$identity);
}

abstract class _AirQuality implements AirQuality {
  const factory _AirQuality(
      {@JsonKey(name: 'current')
      required final AirQualityInternal current}) = _$AirQualityImpl;

  factory _AirQuality.fromJson(Map<String, dynamic> json) =
      _$AirQualityImpl.fromJson;

  @override
  @JsonKey(name: 'current')
  AirQualityInternal get current;

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AirQualityImplCopyWith<_$AirQualityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
