import 'package:json_annotation/json_annotation.dart';

part 'user_to_post.g.dart';

@JsonSerializable()
class UserToPost {
  UserToPost({
    required this.userName,
    required this.password,
  });

  factory UserToPost.fromJson(Map<String, dynamic> json) =>
      _$UserToPostFromJson(json);

  Map<String, dynamic> toJson() => _$UserToPostToJson(this);

  final String userName;
  final String password;
}
