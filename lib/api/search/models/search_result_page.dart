import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'search_result_page.g.dart';

@JsonSerializable()
class SearchResultPage {
  List<Data>? data;
  int? currentPage;
  int? totalPages;
  int? totalCount;
  int? pageSize;
  bool? hasPreviousPage;
  bool? hasNextPage;
  bool? succeeded;

  SearchResultPage({
    this.data,
    this.currentPage,
    this.totalPages,
    this.totalCount,
    this.pageSize,
    this.hasPreviousPage,
    this.hasNextPage,
    this.succeeded,
  });

  factory SearchResultPage.fromJson(Map<String, dynamic> json) =>
      _$SearchResultPageFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultPageToJson(this);
}
