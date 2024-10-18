// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      refreshTokenExpiryTime: json['refreshTokenExpiryTime'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiryTime': instance.refreshTokenExpiryTime,
      'user': instance.user,
    };
