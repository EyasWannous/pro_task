import 'package:pro/api/search/models/search_result_page.dart';

abstract class ISearchRepository {
  const ISearchRepository();

  Future<SearchResultPage?> getSearch(String pageNumber, String perPage);
}
