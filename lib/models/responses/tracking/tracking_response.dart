import 'package:json_annotation/json_annotation.dart';

part 'tracking_response.g.dart';

@JsonSerializable()
class TrackingResponse {
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "DriverId")
  final int? driverId;
  @JsonKey(name: "DriverName")
  final String? driverName;
  @JsonKey(name: "ETA")
  final String? eta;
  @JsonKey(name: "ClockIn")
  final DateTime? clockIn;
  @JsonKey(name: "ClockOut")
  final dynamic clockOut;
  @JsonKey(name: "PhoneNo")
  final dynamic phoneNo;

  TrackingResponse({
    this.id,
    this.driverId,
    this.driverName,
    this.eta,
    this.clockIn,
    this.clockOut,
    this.phoneNo,
  });

  TrackingResponse copyWith({
    int? id,
    int? driverId,
    String? driverName,
    String? eta,
    DateTime? clockIn,
    dynamic clockOut,
    dynamic phoneNo,
  }) =>
      TrackingResponse(
        id: id ?? this.id,
        driverId: driverId ?? this.driverId,
        driverName: driverName ?? this.driverName,
        eta: eta ?? this.eta,
        clockIn: clockIn ?? this.clockIn,
        clockOut: clockOut ?? this.clockOut,
        phoneNo: phoneNo ?? this.phoneNo,
      );

  factory TrackingResponse.fromJson(Map<String, dynamic> json) => _$TrackingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TrackingResponseToJson(this);
}
