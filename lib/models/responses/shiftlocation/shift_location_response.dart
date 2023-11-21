import 'package:json_annotation/json_annotation.dart';

part 'shift_location_response.g.dart';

@JsonSerializable()
class ShiftLocationResponse {
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

  ShiftLocationResponse({
    this.id,
    this.address,
    this.geocode,
    this.shiftLocationTypeId,
    this.customer,
  });

  ShiftLocationResponse copyWith({
    int? id,
    String? address,
    String? geocode,
    int? shiftLocationTypeId,
    dynamic customer,
  }) =>
      ShiftLocationResponse(
        id: id ?? this.id,
        address: address ?? this.address,
        geocode: geocode ?? this.geocode,
        shiftLocationTypeId: shiftLocationTypeId ?? this.shiftLocationTypeId,
        customer: customer ?? this.customer,
      );

  factory ShiftLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$ShiftLocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftLocationResponseToJson(this);
}
