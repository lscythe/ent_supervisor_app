import 'package:json_annotation/json_annotation.dart';

part 'message_request.g.dart';

@JsonSerializable()
class MessageRequest {
  @JsonKey(name: "DriverId")
  final List<int> driverId;
  @JsonKey(name: "Type")
  final String type;
  @JsonKey(name: "DateStart")
  final DateTime dateStart;
  @JsonKey(name: "DateEnd")
  final DateTime dateEnd;

  MessageRequest({
    required this.driverId,
    required this.type,
    required this.dateStart,
    required this.dateEnd,
  });

  MessageRequest copyWith({
    List<int>? driverId,
    String? type,
    DateTime? dateStart,
    DateTime? dateEnd,
  }) =>
      MessageRequest(
        driverId: driverId ?? this.driverId,
        type: type ?? this.type,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd,
      );

  factory MessageRequest.fromJson(Map<String, dynamic> json) => _$MessageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MessageRequestToJson(this);
}
