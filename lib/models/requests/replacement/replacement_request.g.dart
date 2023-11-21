// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replacement_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReplacementRequest _$ReplacementRequestFromJson(Map<String, dynamic> json) =>
    ReplacementRequest(
      driverReplace: json['DriverReplace'] as int,
      availableDriver: json['AvailableDriver'] as int,
      shiftName: json['ShiftName'] as String,
      date: DateTime.parse(json['Date'] as String),
      reason: json['Reason'] as String,
      requestBy: json['RequestBy'] as String,
    );

Map<String, dynamic> _$ReplacementRequestToJson(ReplacementRequest instance) =>
    <String, dynamic>{
      'DriverReplace': instance.driverReplace,
      'AvailableDriver': instance.availableDriver,
      'ShiftName': instance.shiftName,
      'Date': instance.date.toIso8601String(),
      'Reason': instance.reason,
      'RequestBy': instance.requestBy,
    };
