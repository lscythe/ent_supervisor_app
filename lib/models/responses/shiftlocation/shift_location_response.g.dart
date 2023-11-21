// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftLocationResponse _$ShiftLocationResponseFromJson(
        Map<String, dynamic> json) =>
    ShiftLocationResponse(
      id: json['Id'] as int?,
      address: json['Address'] as String?,
      geocode: json['Geocode'] as String?,
      shiftLocationTypeId: json['ShiftLocationTypeId'] as int?,
      customer: json['Customer'],
    );

Map<String, dynamic> _$ShiftLocationResponseToJson(
        ShiftLocationResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Address': instance.address,
      'Geocode': instance.geocode,
      'ShiftLocationTypeId': instance.shiftLocationTypeId,
      'Customer': instance.customer,
    };
