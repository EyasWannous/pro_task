part of 'search_overview_bloc.dart';

sealed class SearchOverviewEvent extends Equatable {
  const SearchOverviewEvent();

  @override
  List<Object> get props => [];
}

final class SearchOverviewSubscriptionRequested extends SearchOverviewEvent {
  const SearchOverviewSubscriptionRequested();
}

final class SearchOverviewTaskAdd extends SearchOverviewEvent {
  const SearchOverviewTaskAdd(this.task);
  final Data task;

  @override
  List<Object> get props => [task];
}
