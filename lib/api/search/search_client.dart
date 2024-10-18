import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pro/api/search/models/search_to_post.dart';

class SearchClient {
  SearchClient({
    http.Client? httpClient,
    this.baseUrl = 'http://10.207.252.142:8050/api/v1/websiteservices/search',
  }) : httpClient = httpClient ?? http.Client();

  final String baseUrl;
  final http.Client httpClient;

  Future<String?> getSearch(
    String pageNumber,
    String perPage,
    String token,
  ) async {
    try {
      final searchRequest = Uri.parse(baseUrl);

      final searchToPost = SearchToPost(
        keyword: "",
        pageNumber: pageNumber,
        pageSize: perPage,
        isActive: true,
      ).toJson();

      final response = await httpClient.post(
        searchRequest,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(searchToPost),
      );

      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
