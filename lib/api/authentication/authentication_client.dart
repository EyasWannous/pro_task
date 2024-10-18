import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pro/api/authentication/models/login_result.dart';
import 'package:pro/api/authentication/models/user_to_post.dart';

class AuthenticationClient {
  AuthenticationClient({
    http.Client? httpClient,
    this.baseUrl = 'http://10.207.252.142:8050/api/tokens',
  }) : httpClient = httpClient ?? http.Client();

  final String baseUrl;
  final http.Client httpClient;

  Future<LoginResult?> login(String username, String password) async {
    try {
      final loginRequest = Uri.parse(baseUrl);

      final user = UserToPost(userName: username, password: password).toJson();
      // print(user);

      final response = await httpClient.post(
        loginRequest,
        body: jsonEncode(user),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      // print(jsonEncode(user));

      if (response.statusCode == 200) {
        return LoginResult.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
