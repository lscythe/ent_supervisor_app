// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingRequest _$TrackingRequestFromJson(Map<String, dynamic> json) =>
    TrackingRequest(
      date: DateTime.parse(json['Date'] as String),
      driver: (json['Driver'] as List<dynamic>).map((e) => e as int).toList(),
      shiftLocation: (json['ShiftLocation'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      shiftGroup:
          (json['ShiftGroup'] as List<dynamic>).map((e) => e as int).toList(),
      shift: (json['Shift'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$TrackingRequestToJson(TrackingRequest instance) =>
    <String, dynamic>{
      'Date': instance.date.toIso8601String(),
      'Driver': instance.driver,
      'ShiftLocation': instance.shiftLocation,
      'ShiftGroup': instance.shiftGroup,
      'Shift': instance.shift,
    };
