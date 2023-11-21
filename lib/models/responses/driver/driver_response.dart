import 'package:json_annotation/json_annotation.dart';

part 'driver_response.g.dart';

@JsonSerializable()
class DriverResponse {
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "PassType")
  final dynamic passType;
  @JsonKey(name: "PSAPassNumber")
  final dynamic psaPassNumber;
  @JsonKey(name: "PSAPassExpiryDate")
  final dynamic psaPassExpiryDate;
  @JsonKey(name: "TotalLeaveBalance")
  final dynamic totalLeaveBalance;
  @JsonKey(name: "Country")
  final dynamic country;
  @JsonKey(name: "Mobile")
  final dynamic mobile;
  @JsonKey(name: "JoinDate")
  final dynamic joinDate;
  @JsonKey(name: "EmployeeNo")
  final dynamic employeeNo;
  @JsonKey(name: "Email")
  final dynamic email;
  @JsonKey(name: "DrivingLicenseClass")
  final dynamic drivingLicenseClass;
  @JsonKey(name: "DrivingLicenseIssueDate")
  final dynamic drivingLicenseIssueDate;
  @JsonKey(name: "DrivingExperience")
  final dynamic drivingExperience;
  @JsonKey(name: "Name")
  final String? name;
  @JsonKey(name: "ShiftGroup")
  final String? shiftGroup;

  DriverResponse({
    this.id,
    this.passType,
    this.psaPassNumber,
    this.psaPassExpiryDate,
    this.totalLeaveBalance,
    this.country,
    this.mobile,
    this.joinDate,
    this.employeeNo,
    this.email,
    this.drivingLicenseClass,
    this.drivingLicenseIssueDate,
    this.drivingExperience,
    this.name,
    this.shiftGroup,
  });

  DriverResponse copyWith({
    int? id,
    dynamic passType,
    dynamic psaPassNumber,
    dynamic psaPassExpiryDate,
    dynamic totalLeaveBalance,
    dynamic country,
    dynamic mobile,
    dynamic joinDate,
    dynamic employeeNo,
    dynamic email,
    dynamic drivingLicenseClass,
    dynamic drivingLicenseIssueDate,
    dynamic drivingExperience,
    String? name,
    String? shiftGroup,
  }) =>
      DriverResponse(
        id: id ?? this.id,
        passType: passType ?? this.passType,
        psaPassNumber: psaPassNumber ?? this.psaPassNumber,
        psaPassExpiryDate: psaPassExpiryDate ?? this.psaPassExpiryDate,
        totalLeaveBalance: totalLeaveBalance ?? this.totalLeaveBalance,
        country: country ?? this.country,
        mobile: mobile ?? this.mobile,
        joinDate: joinDate ?? this.joinDate,
        employeeNo: employeeNo ?? this.employeeNo,
        email: email ?? this.email,
        drivingLicenseClass: drivingLicenseClass ?? this.drivingLicenseClass,
        drivingLicenseIssueDate: drivingLicenseIssueDate ?? this.drivingLicenseIssueDate,
        drivingExperience: drivingExperience ?? this.drivingExperience,
        name: name ?? this.name,
        shiftGroup: shiftGroup ?? this.shiftGroup,
      );

  factory DriverResponse.fromJson(Map<String, dynamic> json) => _$DriverResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DriverResponseToJson(this);
}
