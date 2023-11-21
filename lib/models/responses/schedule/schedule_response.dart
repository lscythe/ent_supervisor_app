import 'package:json_annotation/json_annotation.dart';

part 'schedule_response.g.dart';

@JsonSerializable()
class ScheduleResponse {
  @JsonKey(name: "Name")
  final String? name;
  @JsonKey(name: "Shift")
  final List<Shift>? shift;

  ScheduleResponse({
    this.name,
    this.shift,
  });

  ScheduleResponse copyWith({
    String? name,
    List<Shift>? shift,
  }) =>
      ScheduleResponse(
        name: name ?? this.name,
        shift: shift ?? this.shift,
      );

  factory ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleResponseToJson(this);
}

@JsonSerializable()
class Shift {
  @JsonKey(name: "Name")
  final String? name;
  @JsonKey(name: "StartTime")
  final String? startTime;
  @JsonKey(name: "EndTime")
  final String? endTime;
  @JsonKey(name: "ShiftGroup")
  final List<ShiftGroup>? shiftGroup;
  @JsonKey(name: "Planned")
  final int? planned;
  @JsonKey(name: "Ordered")
  final int? ordered;
  @JsonKey(name: "Actual")
  final int? actual;

  Shift({
    this.name,
    this.startTime,
    this.endTime,
    this.shiftGroup,
    this.planned,
    this.ordered,
    this.actual,
  });

  Shift copyWith({
    String? name,
    String? startTime,
    String? endTime,
    List<ShiftGroup>? shiftGroup,
    int? planned,
    int? ordered,
    int? actual,
  }) =>
      Shift(
        name: name ?? this.name,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        shiftGroup: shiftGroup ?? this.shiftGroup,
        planned: planned ?? this.planned,
        ordered: ordered ?? this.ordered,
        actual: actual ?? this.actual,
      );

  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftToJson(this);
}

@JsonSerializable()
class ShiftGroup {
  @JsonKey(name: "Name")
  final String? name;
  @JsonKey(name: "Location")
  final String? location;
  @JsonKey(name: "CountDriver")
  final int? countDriver;
  @JsonKey(name: "Drivers")
  final List<Driver>? drivers;

  ShiftGroup({
    this.name,
    this.location,
    this.countDriver,
    this.drivers,
  });

  ShiftGroup copyWith({
    String? name,
    String? location,
    int? countDriver,
    List<Driver>? drivers,
  }) =>
      ShiftGroup(
        name: name ?? this.name,
        location: location ?? this.location,
        countDriver: countDriver ?? this.countDriver,
        drivers: drivers ?? this.drivers,
      );

  factory ShiftGroup.fromJson(Map<String, dynamic> json) =>
      _$ShiftGroupFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftGroupToJson(this);
}

@JsonSerializable()
class Driver {
  @JsonKey(name: "Name")
  final String? name;
  @JsonKey(name: "DateFrom")
  final DateTime? dateFrom;
  @JsonKey(name: "DateTo")
  final DateTime? dateTo;
  @JsonKey(name: "Employee")
  final String? employee;
  @JsonKey(name: "Shift")
  final String? shift;
  @JsonKey(name: "ShiftGroup")
  final String? shiftGroup;

  Driver({
    this.name,
    this.dateFrom,
    this.dateTo,
    this.employee,
    this.shift,
    this.shiftGroup,
  });

  Driver copyWith({
    String? name,
    DateTime? dateFrom,
    DateTime? dateTo,
    String? employee,
    String? shift,
    String? shiftGroup,
  }) =>
      Driver(
        name: name ?? this.name,
        dateFrom: dateFrom ?? this.dateFrom,
        dateTo: dateTo ?? this.dateTo,
        employee: employee ?? this.employee,
        shift: shift ?? this.shift,
        shiftGroup: shiftGroup ?? this.shiftGroup,
      );

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  Map<String, dynamic> toJson() => _$DriverToJson(this);
}
