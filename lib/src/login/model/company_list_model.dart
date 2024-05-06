// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String message;
  int statusCode;
  List<Datum> data;

  LoginModel({
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json["message"],
        statusCode: json["status_code"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status_code": statusCode,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  String userCode;
  String loginName;
  String password;
  String userName;
  dynamic createDateTime;
  bool isEnabled;
  String databaseName;
  String companyName;
  String panNo;
  String deviceId;
  String agentCode;
  String userType;
  dynamic createdBy;
  dynamic createdDate;

  Datum({
    required this.userCode,
    required this.loginName,
    required this.password,
    required this.userName,
    required this.createDateTime,
    required this.isEnabled,
    required this.databaseName,
    required this.companyName,
    required this.panNo,
    required this.deviceId,
    required this.agentCode,
    required this.userType,
    required this.createdBy,
    required this.createdDate,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        userCode: json["UserCode"],
        loginName: json["LoginName"],
        password: json["Password"],
        userName: json["UserName"],
        createDateTime: json["CreateDateTime"],
        isEnabled: json["IsEnabled"],
        databaseName: json["DatabaseName"],
        companyName: json["CompanyName"],
        panNo: json["PanNo"],
        deviceId: json["DeviceId"],
        agentCode: json["AgentCode"],
        userType: json["UserType"],
        createdBy: json["CreatedBy"],
        createdDate: json["CreatedDate"],
      );

  Map<String, dynamic> toJson() => {
        "UserCode": userCode,
        "LoginName": loginName,
        "Password": password,
        "UserName": userName,
        "CreateDateTime": createDateTime,
        "IsEnabled": isEnabled,
        "DatabaseName": databaseName,
        "CompanyName": companyName,
        "PanNo": panNo,
        "DeviceId": deviceId,
        "AgentCode": agentCode,
        "UserType": userType,
        "CreatedBy": createdBy,
        "CreatedDate": createdDate,
      };
}
