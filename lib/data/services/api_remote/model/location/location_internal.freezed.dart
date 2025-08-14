// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_internal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationInternal _$LocationInternalFromJson(Map<String, dynamic> json) {
  return _LocationInternal.fromJson(json);
}

/// @nodoc
mixin _$LocationInternal {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get admin1 => throw _privateConstructorUsedError;

  /// Create a copy of LocationInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationInternalCopyWith<LocationInternal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationInternalCopyWith<$Res> {
  factory $LocationInternalCopyWith(
          LocationInternal value, $Res Function(LocationInternal) then) =
      _$LocationInternalCopyWithImpl<$Res, LocationInternal>;
  @useResult
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      String timezone,
      @JsonKey(defaultValue: '') String country,
      @JsonKey(defaultValue: '') String admin1});
}

/// @nodoc
class _$LocationInternalCopyWithImpl<$Res, $Val extends LocationInternal>
    implements $LocationInternalCopyWith<$Res> {
  _$LocationInternalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? timezone = null,
    Object? country = null,
    Object? admin1 = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      admin1: null == admin1
          ? _value.admin1
          : admin1 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationInternalImplCopyWith<$Res>
    implements $LocationInternalCopyWith<$Res> {
  factory _$$LocationInternalImplCopyWith(_$LocationInternalImpl value,
          $Res Function(_$LocationInternalImpl) then) =
      __$$LocationInternalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      String timezone,
      @JsonKey(defaultValue: '') String country,
      @JsonKey(defaultValue: '') String admin1});
}

/// @nodoc
class __$$LocationInternalImplCopyWithImpl<$Res>
    extends _$LocationInternalCopyWithImpl<$Res, _$LocationInternalImpl>
    implements _$$LocationInternalImplCopyWith<$Res> {
  __$$LocationInternalImplCopyWithImpl(_$LocationInternalImpl _value,
      $Res Function(_$LocationInternalImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationInternal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? timezone = null,
    Object? country = null,
    Object? admin1 = null,
  }) {
    return _then(_$LocationInternalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      admin1: null == admin1
          ? _value.admin1
          : admin1 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$LocationInternalImpl implements _LocationInternal {
  const _$LocationInternalImpl(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.timezone,
      @JsonKey(defaultValue: '') required this.country,
      @JsonKey(defaultValue: '') required this.admin1});

  factory _$LocationInternalImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationInternalImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String timezone;
  @override
  @JsonKey(defaultValue: '')
  final String country;
  @override
  @JsonKey(defaultValue: '')
  final String admin1;

  @override
  String toString() {
    return 'LocationInternal(id: $id, name: $name, latitude: $latitude, longitude: $longitude, timezone: $timezone, country: $country, admin1: $admin1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationInternalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.admin1, admin1) || other.admin1 == admin1));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, latitude, longitude, timezone, country, admin1);

  /// Create a copy of LocationInternal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationInternalImplCopyWith<_$LocationInternalImpl> get copyWith =>
      __$$LocationInternalImplCopyWithImpl<_$LocationInternalImpl>(
          this, _$identity);
}

abstract class _LocationInternal implements LocationInternal {
  const factory _LocationInternal(
          {required final int id,
          required final String name,
          required final double latitude,
          required final double longitude,
          required final String timezone,
          @JsonKey(defaultValue: '') required final String country,
          @JsonKey(defaultValue: '') required final String admin1}) =
      _$LocationInternalImpl;

  factory _LocationInternal.fromJson(Map<String, dynamic> json) =
      _$LocationInternalImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get timezone;
  @override
  @JsonKey(defaultValue: '')
  String get country;
  @override
  @JsonKey(defaultValue: '')
  String get admin1;

  /// Create a copy of LocationInternal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationInternalImplCopyWith<_$LocationInternalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
