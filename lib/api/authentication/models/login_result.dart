import 'package:json_annotation/json_annotation.dart';
import 'package:pro/api/authentication/models/data.dart';

part 'login_result.g.dart';

@JsonSerializable()
class LoginResult {
  Data? data;
  bool? succeeded;

  LoginResult({
    this.data,
    this.succeeded,
  });

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
      _$LoginResultFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResultToJson(this);
}
