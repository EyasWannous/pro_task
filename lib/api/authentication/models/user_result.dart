// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'user_result.g.dart';

@JsonSerializable()
class UserResult {
  Data? data;
  bool? succeeded;

  UserResult({this.data, this.succeeded});

  factory UserResult.fromJson(Map<String, dynamic> json) =>
      _$UserResultFromJson(json);

  Map<String, dynamic> toJson() => _$UserResultToJson(this);
}
