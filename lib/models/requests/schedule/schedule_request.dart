import 'package:json_annotation/json_annotation.dart';

part 'schedule_request.g.dart';

@JsonSerializable()
class ScheduleRequest {
  @JsonKey(name: "Type")
  final String? type;
  @JsonKey(name: "Period")
  final DateTime period;
  @JsonKey(name: "ShiftType")
  final String? shiftType;
  @JsonKey(name: "DriverId")
  final int? driverId;

  ScheduleRequest({
    this.type,
    required this.period,
    this.shiftType,
    this.driverId,
  });

  ScheduleRequest copyWith({
    String? type,
    DateTime? period,
    String? shiftType,
    int? driverId,
  }) =>
      ScheduleRequest(
        type: type ?? this.type,
        period: period ?? this.period,
        shiftType: shiftType ?? this.shiftType,
        driverId: driverId ?? this.driverId,
      );

  factory ScheduleRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleRequestToJson(this);
}
