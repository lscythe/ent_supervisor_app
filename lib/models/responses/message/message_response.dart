import 'package:json_annotation/json_annotation.dart';

part 'message_response.g.dart';

@JsonSerializable()
class MessageResponse {
  @JsonKey(name: "Date")
  final DateTime? date;
  @JsonKey(name: "Time")
  final String? time;
  @JsonKey(name: "Title")
  final String? title;
  @JsonKey(name: "Message")
  final String? message;

  MessageResponse({
    this.date,
    this.time,
    this.title,
    this.message,
  });

  MessageResponse copyWith({
    DateTime? date,
    String? time,
    String? title,
    String? message,
  }) =>
      MessageResponse(
        date: date ?? this.date,
        time: time ?? this.time,
        title: title ?? this.title,
        message: message ?? this.message,
      );

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MessageResponseToJson(this);
}
