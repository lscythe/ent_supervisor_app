import 'package:json_annotation/json_annotation.dart';

part 'shift_drop_request.g.dart';

@JsonSerializable()
class ShiftDropRequest {
  @JsonKey(name: "DriverId")
  final int driverId;
  @JsonKey(name: "ShiftName")
  final String shiftName;
  @JsonKey(name: "Date")
  final DateTime date;
  @JsonKey(name: "Reason")
  final String reason;
  @JsonKey(name: "RequestBy")
  final String requestBy;

  ShiftDropRequest({
    required this.driverId,
    required this.shiftName,
    required this.date,
    required this.reason,
    required this.requestBy,
  });

  ShiftDropRequest copyWith({
    int? driverId,
    String? shiftName,
    DateTime? date,
    String? reason,
    String? requestBy,
  }) =>
      ShiftDropRequest(
        driverId: driverId ?? this.driverId,
        shiftName: shiftName ?? this.shiftName,
        date: date ?? this.date,
        reason: reason ?? this.reason,
        requestBy: requestBy ?? this.requestBy,
      );

  factory ShiftDropRequest.fromJson(Map<String, dynamic> json) => _$ShiftDropRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftDropRequestToJson(this);
}
