// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftGroupResponse _$ShiftGroupResponseFromJson(Map<String, dynamic> json) =>
    ShiftGroupResponse(
      id: json['Id'] as int?,
      shiftName: json['ShiftName'] as String?,
      shiftLocationId: json['ShiftLocationId'] as int?,
      memberCount: json['MemberCount'] as int?,
      shiftLocation: json['ShiftLocation'] == null
          ? null
          : ShiftLocation.fromJson(
              json['ShiftLocation'] as Map<String, dynamic>),
      shiftHourStart: json['ShiftHourStart'] as String?,
      shiftHourEnd: json['ShiftHourEnd'] as String?,
    );

Map<String, dynamic> _$ShiftGroupResponseToJson(ShiftGroupResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'ShiftName': instance.shiftName,
      'ShiftLocationId': instance.shiftLocationId,
      'MemberCount': instance.memberCount,
      'ShiftLocation': instance.shiftLocation,
      'ShiftHourStart': instance.shiftHourStart,
      'ShiftHourEnd': instance.shiftHourEnd,
    };

ShiftLocation _$ShiftLocationFromJson(Map<String, dynamic> json) =>
    ShiftLocation(
      id: json['Id'] as int?,
      address: json['Address'] as String?,
      geocode: json['Geocode'] as String?,
      shiftLocationTypeId: json['ShiftLocationTypeId'] as int?,
      customer: json['Customer'],
    );

Map<String, dynamic> _$ShiftLocationToJson(ShiftLocation instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Address': instance.address,
      'Geocode': instance.geocode,
      'ShiftLocationTypeId': instance.shiftLocationTypeId,
      'Customer': instance.customer,
    };
