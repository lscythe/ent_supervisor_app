// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleRequest _$ScheduleRequestFromJson(Map<String, dynamic> json) =>
    ScheduleRequest(
      type: json['Type'] as String?,
      period: DateTime.parse(json['Period'] as String),
      shiftType: json['ShiftType'] as String?,
      driverId: json['DriverId'] as int?,
    );

Map<String, dynamic> _$ScheduleRequestToJson(ScheduleRequest instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'Period': instance.period.toIso8601String(),
      'ShiftType': instance.shiftType,
      'DriverId': instance.driverId,
    };
