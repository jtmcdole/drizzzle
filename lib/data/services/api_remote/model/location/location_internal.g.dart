// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_internal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationInternalImpl _$$LocationInternalImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationInternalImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timezone: json['timezone'] as String,
      country: json['country'] as String? ?? '',
      admin1: json['admin1'] as String? ?? '',
    );
