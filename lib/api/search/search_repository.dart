import 'dart:convert';

import 'package:pro/api/search/i_search_repository.dart';
import 'package:pro/api/search/models/search_result_page.dart';
import 'package:pro/api/search/search_client.dart';
import 'package:pro/api/storage.dart';

class SearchRepository extends ISearchRepository {
  const SearchRepository({
    required this.storage,
    required this.client,
  });

  final SearchClient client;
  final Storage storage;
  static const String key = 'search?';

  @override
  Future<SearchResultPage?> getSearch(String pageNumber, String perPage) async {
    final result =
        await client.getSearch(pageNumber, perPage, storage.getValue('token')!);
    if (result == null) {
      if (storage.contains('${key}PageNumber:$pageNumber,PerPage:$perPage')) {
        final savedTasks =
            storage.getValue('${key}PageNumber:$pageNumber,PerPage:$perPage');

        if (savedTasks == null) return null;

        final tasks = SearchResultPage.fromJson(
          jsonDecode(savedTasks) as Map<String, dynamic>,
        );

        return tasks;
      }
      return null;
    }

    await storage.setValue(
      '${key}PageNumber:$pageNumber,PerPage:$perPage',
      result,
    );

    final tasks = SearchResultPage.fromJson(
      jsonDecode(result) as Map<String, dynamic>,
    );

    return tasks;
  }
}
