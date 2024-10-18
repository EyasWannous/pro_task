import 'package:json_annotation/json_annotation.dart';

part 'search_to_post.g.dart';

@JsonSerializable()
class SearchToPost {
  final String keyword;
  final String pageNumber;
  final String pageSize;
  final bool isActive;

  SearchToPost({
    required this.keyword,
    required this.pageNumber,
    required this.pageSize,
    required this.isActive,
  });

  factory SearchToPost.fromJson(Map<String, dynamic> json) =>
      _$SearchToPostFromJson(json);

  Map<String, dynamic> toJson() => _$SearchToPostToJson(this);
}
