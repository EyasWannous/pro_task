// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultPage _$SearchResultPageFromJson(Map<String, dynamic> json) =>
    SearchResultPage(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
      succeeded: json['succeeded'] as bool?,
    );

Map<String, dynamic> _$SearchResultPageToJson(SearchResultPage instance) =>
    <String, dynamic>{
      'data': instance.data,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'pageSize': instance.pageSize,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
      'succeeded': instance.succeeded,
    };
