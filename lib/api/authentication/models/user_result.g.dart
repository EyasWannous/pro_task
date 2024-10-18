// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResult _$UserResultFromJson(Map<String, dynamic> json) => UserResult(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      succeeded: json['succeeded'] as bool?,
    );

Map<String, dynamic> _$UserResultToJson(UserResult instance) =>
    <String, dynamic>{
      'data': instance.data,
      'succeeded': instance.succeeded,
    };
