import 'package:json_annotation/json_annotation.dart';

part 'shift_response.g.dart';

@JsonSerializable()
class ShiftResponse {
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "Value")
  final String? value;

  ShiftResponse({
    this.id,
    this.value,
  });

  ShiftResponse copyWith({
    int? id,
    String? value,
  }) =>
      ShiftResponse(
        id: id ?? this.id,
        value: value ?? this.value,
      );

  factory ShiftResponse.fromJson(Map<String, dynamic> json) => _$ShiftResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftResponseToJson(this);
}
