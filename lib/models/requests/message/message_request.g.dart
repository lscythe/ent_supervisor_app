// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageRequest _$MessageRequestFromJson(Map<String, dynamic> json) =>
    MessageRequest(
      driverId:
          (json['DriverId'] as List<dynamic>).map((e) => e as int).toList(),
      type: json['Type'] as String,
      dateStart: DateTime.parse(json['DateStart'] as String),
      dateEnd: DateTime.parse(json['DateEnd'] as String),
    );

Map<String, dynamic> _$MessageRequestToJson(MessageRequest instance) =>
    <String, dynamic>{
      'DriverId': instance.driverId,
      'Type': instance.type,
      'DateStart': instance.dateStart.toIso8601String(),
      'DateEnd': instance.dateEnd.toIso8601String(),
    };
