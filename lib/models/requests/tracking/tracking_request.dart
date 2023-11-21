import 'package:json_annotation/json_annotation.dart';

part 'tracking_request.g.dart';

@JsonSerializable()
class TrackingRequest {
  @JsonKey(name: "Date")
  final DateTime date;
  @JsonKey(name: "Driver")
  final List<int> driver;
  @JsonKey(name: "ShiftLocation")
  final List<int> shiftLocation;
  @JsonKey(name: "ShiftGroup")
  final List<int> shiftGroup;
  @JsonKey(name: "Shift")
  final List<int> shift;

  TrackingRequest({
    required this.date,
    required this.driver,
    required this.shiftLocation,
    required this.shiftGroup,
    required this.shift,
  });

  TrackingRequest copyWith({
    DateTime? date,
    List<int>? driver,
    List<int>? shiftLocation,
    List<int>? shiftGroup,
    List<int>? shift,
  }) =>
      TrackingRequest(
        date: date ?? this.date,
        driver: driver ?? this.driver,
        shiftLocation: shiftLocation ?? this.shiftLocation,
        shiftGroup: shiftGroup ?? this.shiftGroup,
        shift: shift ?? this.shift,
      );

  factory TrackingRequest.fromJson(Map<String, dynamic> json) => _$TrackingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TrackingRequestToJson(this);
}
