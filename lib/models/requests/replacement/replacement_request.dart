import 'package:json_annotation/json_annotation.dart';

part 'replacement_request.g.dart';

@JsonSerializable()
class ReplacementRequest {
  @JsonKey(name: "DriverReplace")
  final int driverReplace;
  @JsonKey(name: "AvailableDriver")
  final int availableDriver;
  @JsonKey(name: "ShiftName")
  final String shiftName;
  @JsonKey(name: "Date")
  final DateTime date;
  @JsonKey(name: "Reason")
  final String reason;
  @JsonKey(name: "RequestBy")
  final String requestBy;

  ReplacementRequest({
    required this.driverReplace,
    required this.availableDriver,
    required this.shiftName,
    required this.date,
    required this.reason,
    required this.requestBy,
  });

  ReplacementRequest copyWith({
    int? driverReplace,
    int? availableDriver,
    String? shiftName,
    DateTime? date,
    String? reason,
    String? requestBy,
  }) =>
      ReplacementRequest(
        driverReplace: driverReplace ?? this.driverReplace,
        availableDriver: availableDriver ?? this.availableDriver,
        shiftName: shiftName ?? this.shiftName,
        date: date ?? this.date,
        reason: reason ?? this.reason,
        requestBy: requestBy ?? this.requestBy,
      );

  factory ReplacementRequest.fromJson(Map<String, dynamic> json) => _$ReplacementRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReplacementRequestToJson(this);
}
