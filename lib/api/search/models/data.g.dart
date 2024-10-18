// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String?,
      nameEn: json['nameEn'] as String?,
      nameAr: json['nameAr'] as String?,
      imageUrl: json['imageUrl'] as String?,
      descriptionEn: json['descriptionEn'] as String?,
      descriptionAr: json['descriptionAr'] as String?,
      contentEn: json['contentEn'] as String?,
      contentAr: json['contentAr'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'nameEn': instance.nameEn,
      'nameAr': instance.nameAr,
      'imageUrl': instance.imageUrl,
      'descriptionEn': instance.descriptionEn,
      'descriptionAr': instance.descriptionAr,
      'contentEn': instance.contentEn,
      'contentAr': instance.contentAr,
      'isActive': instance.isActive,
    };
