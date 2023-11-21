import 'package:json_annotation/json_annotation.dart';

part 'shift_group_response.g.dart';

@JsonSerializable()
class ShiftGroupResponse {
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "ShiftName")
  final String? shiftName;
  @JsonKey(name: "ShiftLocationId")
  final int? shiftLocationId;
  @JsonKey(name: "MemberCount")
  final int? memberCount;
  @JsonKey(name: "ShiftLocation")
  final ShiftLocation? shiftLocation;
  @JsonKey(name: "ShiftHourStart")
  final String? shiftHourStart;
  @JsonKey(name: "ShiftHourEnd")
  final String? shiftHourEnd;

  ShiftGroupResponse({
    this.id,
    this.shiftName,
    this.shiftLocationId,
    this.memberCount,
    this.shiftLocation,
    this.shiftHourStart,
    this.shiftHourEnd,
  });

  ShiftGroupResponse copyWith({
    int? id,
    String? shiftName,
    int? shiftLocationId,
    int? memberCount,
    ShiftLocation? shiftLocation,
    String? shiftHourStart,
    String? shiftHourEnd,
  }) =>
      ShiftGroupResponse(
        id: id ?? this.id,
        shiftName: shiftName ?? this.shiftName,
        shiftLocationId: shiftLocationId ?? this.shiftLocationId,
        memberCount: memberCount ?? this.memberCount,
        shiftLocation: shiftLocation ?? this.shiftLocation,
        shiftHourStart: shiftHourStart ?? this.shiftHourStart,
        shiftHourEnd: shiftHourEnd ?? this.shiftHourEnd,
      );

  factory ShiftGroupResponse.fromJson(Map<String, dynamic> json) => _$ShiftGroupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftGroupResponseToJson(this);
}

@JsonSerializable()
class ShiftLocation {
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "Address")
  final String? address;
  @JsonKey(name: "Geocode")
  final String? geocode;
  @JsonKey(name: "ShiftLocationTypeId")
  final int? shiftLocationTypeId;
  @JsonKey(name: "Customer")
  final dynamic customer;

  ShiftLocation({
    this.id,
    this.address,
    this.geocode,
    this.shiftLocationTypeId,
    this.customer,
  });

  ShiftLocation copyWith({
    int? id,
    String? address,
    String? geocode,
    int? shiftLocationTypeId,
    dynamic customer,
  }) =>
      ShiftLocation(
        id: id ?? this.id,
        address: address ?? this.address,
        geocode: geocode ?? this.geocode,
        shiftLocationTypeId: shiftLocationTypeId ?? this.shiftLocationTypeId,
        customer: customer ?? this.customer,
      );

  factory ShiftLocation.fromJson(Map<String, dynamic> json) => _$ShiftLocationFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftLocationToJson(this);
}
