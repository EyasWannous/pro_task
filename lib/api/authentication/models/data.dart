import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String? token;
  String? refreshToken;
  String? refreshTokenExpiryTime;
  User? user;

  Data({this.token, this.refreshToken, this.refreshTokenExpiryTime, this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
