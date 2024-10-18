// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_to_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchToPost _$SearchToPostFromJson(Map<String, dynamic> json) => SearchToPost(
      keyword: json['keyword'] as String,
      pageNumber: json['pageNumber'] as String,
      pageSize: json['pageSize'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$SearchToPostToJson(SearchToPost instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'isActive': instance.isActive,
    };
