// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) =>
    ScheduleResponse(
      name: json['Name'] as String?,
      shift: (json['Shift'] as List<dynamic>?)
          ?.map((e) => Shift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScheduleResponseToJson(ScheduleResponse instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Shift': instance.shift,
    };

Shift _$ShiftFromJson(Map<String, dynamic> json) => Shift(
      name: json['Name'] as String?,
      startTime: json['StartTime'] as String?,
      endTime: json['EndTime'] as String?,
      shiftGroup: (json['ShiftGroup'] as List<dynamic>?)
          ?.map((e) => ShiftGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      planned: json['Planned'] as int?,
      ordered: json['Ordered'] as int?,
      actual: json['Actual'] as int?,
    );

Map<String, dynamic> _$ShiftToJson(Shift instance) => <String, dynamic>{
      'Name': instance.name,
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
      'ShiftGroup': instance.shiftGroup,
      'Planned': instance.planned,
      'Ordered': instance.ordered,
      'Actual': instance.actual,
    };

ShiftGroup _$ShiftGroupFromJson(Map<String, dynamic> json) => ShiftGroup(
      name: json['Name'] as String?,
      location: json['Location'] as String?,
      countDriver: json['CountDriver'] as int?,
      drivers: (json['Drivers'] as List<dynamic>?)
          ?.map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShiftGroupToJson(ShiftGroup instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Location': instance.location,
      'CountDriver': instance.countDriver,
      'Drivers': instance.drivers,
    };

Driver _$DriverFromJson(Map<String, dynamic> json) => Driver(
      name: json['Name'] as String?,
      dateFrom: json['DateFrom'] == null
          ? null
          : DateTime.parse(json['DateFrom'] as String),
      dateTo: json['DateTo'] == null
          ? null
          : DateTime.parse(json['DateTo'] as String),
      employee: json['Employee'] as String?,
      shift: json['Shift'] as String?,
      shiftGroup: json['ShiftGroup'] as String?,
    );

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      'Name': instance.name,
      'DateFrom': instance.dateFrom?.toIso8601String(),
      'DateTo': instance.dateTo?.toIso8601String(),
      'Employee': instance.employee,
      'Shift': instance.shift,
      'ShiftGroup': instance.shiftGroup,
    };
