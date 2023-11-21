import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  @JsonKey(name: "Username")
  final String username;
  @JsonKey(name: "Password")
  final String password;

  LoginRequest({
    required this.username,
    required this.password,
  });

  LoginRequest copyWith({
    String? username,
    String? password,
  }) =>
      LoginRequest(
        username: username ?? this.username,
        password: password ?? this.password,
      );

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
