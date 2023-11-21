// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_drop_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftDropRequest _$ShiftDropRequestFromJson(Map<String, dynamic> json) =>
    ShiftDropRequest(
      driverId: json['DriverId'] as int,
      shiftName: json['ShiftName'] as String,
      date: DateTime.parse(json['Date'] as String),
      reason: json['Reason'] as String,
      requestBy: json['RequestBy'] as String,
    );

Map<String, dynamic> _$ShiftDropRequestToJson(ShiftDropRequest instance) =>
    <String, dynamic>{
      'DriverId': instance.driverId,
      'ShiftName': instance.shiftName,
      'Date': instance.date.toIso8601String(),
      'Reason': instance.reason,
      'RequestBy': instance.requestBy,
    };
