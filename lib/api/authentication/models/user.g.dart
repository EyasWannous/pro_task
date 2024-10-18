// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      isTest: json['isTest'] as bool?,
      firstNameAr: json['firstNameAr'] as String?,
      firstNameEn: json['firstNameEn'] as String?,
      locked: json['locked'] as bool?,
      isBuiltIn: json['isBuiltIn'] as bool?,
      language: json['language'] as String?,
      loggedIn: json['loggedIn'] as bool?,
      isActive: json['isActive'] as bool?,
      createdBy: json['createdBy'] as String?,
      createdOn: json['createdOn'] as String?,
      lastModifiedBy: json['lastModifiedBy'] as String?,
      lastModifiedOn: json['lastModifiedOn'] as String?,
      lastModifiedByName: json['lastModifiedByName'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'isTest': instance.isTest,
      'firstNameAr': instance.firstNameAr,
      'firstNameEn': instance.firstNameEn,
      'locked': instance.locked,
      'isBuiltIn': instance.isBuiltIn,
      'language': instance.language,
      'loggedIn': instance.loggedIn,
      'isActive': instance.isActive,
      'createdBy': instance.createdBy,
      'createdOn': instance.createdOn,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedOn': instance.lastModifiedOn,
      'lastModifiedByName': instance.lastModifiedByName,
    };
