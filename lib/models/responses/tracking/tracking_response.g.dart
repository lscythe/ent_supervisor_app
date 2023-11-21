// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingResponse _$TrackingResponseFromJson(Map<String, dynamic> json) =>
    TrackingResponse(
      id: json['Id'] as int?,
      driverId: json['DriverId'] as int?,
      driverName: json['DriverName'] as String?,
      eta: json['ETA'] as String?,
      clockIn: json['ClockIn'] == null
          ? null
          : DateTime.parse(json['ClockIn'] as String),
      clockOut: json['ClockOut'],
      phoneNo: json['PhoneNo'],
    );

Map<String, dynamic> _$TrackingResponseToJson(TrackingResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'DriverId': instance.driverId,
      'DriverName': instance.driverName,
      'ETA': instance.eta,
      'ClockIn': instance.clockIn?.toIso8601String(),
      'ClockOut': instance.clockOut,
      'PhoneNo': instance.phoneNo,
    };
