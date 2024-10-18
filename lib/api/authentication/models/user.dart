import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? id;
  String? userName;
  String? email;
  String? phoneNumber;
  bool? isTest;
  String? firstNameAr;
  String? firstNameEn;
  bool? locked;
  bool? isBuiltIn;
  String? language;
  bool? loggedIn;
  bool? isActive;
  String? createdBy;
  String? createdOn;
  String? lastModifiedBy;
  String? lastModifiedOn;
  String? lastModifiedByName;

  User({
    this.id,
    this.userName,
    this.email,
    this.phoneNumber,
    this.isTest,
    this.firstNameAr,
    this.firstNameEn,
    this.locked,
    this.isBuiltIn,
    this.language,
    this.loggedIn,
    this.isActive,
    this.createdBy,
    this.createdOn,
    this.lastModifiedBy,
    this.lastModifiedOn,
    this.lastModifiedByName,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
