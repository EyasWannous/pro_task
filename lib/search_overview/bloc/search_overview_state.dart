part of 'search_overview_bloc.dart';

enum SearchOverviewStatus { initial, loading, success, failure }

final class SearchOverviewState extends Equatable {
  const SearchOverviewState({
    this.status = SearchOverviewStatus.initial,
    this.search = const [],
  });

  final SearchOverviewStatus status;
  final List<Data> search;

  SearchOverviewState copyWith({
    SearchOverviewStatus? status,
    List<Data>? search,
  }) {
    return SearchOverviewState(
      status: status ?? this.status,
      search: search ?? this.search,
    );
  }

  @override
  List<Object?> get props => [status, search];
}
