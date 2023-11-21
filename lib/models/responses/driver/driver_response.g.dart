// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverResponse _$DriverResponseFromJson(Map<String, dynamic> json) =>
    DriverResponse(
      id: json['Id'] as int?,
      passType: json['PassType'],
      psaPassNumber: json['PSAPassNumber'],
      psaPassExpiryDate: json['PSAPassExpiryDate'],
      totalLeaveBalance: json['TotalLeaveBalance'],
      country: json['Country'],
      mobile: json['Mobile'],
      joinDate: json['JoinDate'],
      employeeNo: json['EmployeeNo'],
      email: json['Email'],
      drivingLicenseClass: json['DrivingLicenseClass'],
      drivingLicenseIssueDate: json['DrivingLicenseIssueDate'],
      drivingExperience: json['DrivingExperience'],
      name: json['Name'] as String?,
      shiftGroup: json['ShiftGroup'] as String?,
    );

Map<String, dynamic> _$DriverResponseToJson(DriverResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'PassType': instance.passType,
      'PSAPassNumber': instance.psaPassNumber,
      'PSAPassExpiryDate': instance.psaPassExpiryDate,
      'TotalLeaveBalance': instance.totalLeaveBalance,
      'Country': instance.country,
      'Mobile': instance.mobile,
      'JoinDate': instance.joinDate,
      'EmployeeNo': instance.employeeNo,
      'Email': instance.email,
      'DrivingLicenseClass': instance.drivingLicenseClass,
      'DrivingLicenseIssueDate': instance.drivingLicenseIssueDate,
      'DrivingExperience': instance.drivingExperience,
      'Name': instance.name,
      'ShiftGroup': instance.shiftGroup,
    };
