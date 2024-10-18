import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pro/api/search/i_search_repository.dart';
import 'package:pro/api/search/models/data.dart';
import 'package:pro/api/search/models/search_result_page.dart';

part 'search_overview_event.dart';
part 'search_overview_state.dart';

class SearchOverviewBloc
    extends Bloc<SearchOverviewEvent, SearchOverviewState> {
  SearchOverviewBloc({
    required this.resultScrollController,
    required ISearchRepository searchRepository,
  })  : _searchRepository = searchRepository,
        super(const SearchOverviewState()) {
    on<SearchOverviewSubscriptionRequested>(
        _onSearchOverviewSubscriptionRequested);

    resultScrollController.addListener(() {
      bool hasClients = (resultScrollController.hasClients);
      bool isEnd = (resultScrollController.position.maxScrollExtent ==
          resultScrollController.position.pixels);
      bool isNewEnd = (resultScrollController.position.maxScrollExtent !=
          lastPixelsPosition);
      if (hasClients && isEnd && isNewEnd) {
        lastPixelsPosition = resultScrollController.position.pixels;
        onRefresh();
        // onSearch(state.text, state.pageNumber + 1);
      }
    });
  }

  final ScrollController resultScrollController;
  final ISearchRepository _searchRepository;
  final List<Data> searchResult = [];
  double lastPixelsPosition = 0;

  int pageNumber = 1;
  int perPage = 7;

  FutureOr<void> _onSearchOverviewSubscriptionRequested(
    SearchOverviewSubscriptionRequested event,
    Emitter<SearchOverviewState> emit,
  ) async {
    emit(state.copyWith(status: SearchOverviewStatus.loading));

    SearchResultPage? currentsearch = await _searchRepository.getSearch(
      pageNumber.toString(),
      perPage.toString(),
    );

    if (currentsearch == null || currentsearch.data == null) {
      emit(state.copyWith(status: SearchOverviewStatus.failure));
    }

    if (pageNumber == 1) {
      searchResult.clear();

      if (currentsearch?.data == null || currentsearch!.data!.isEmpty) {
        emit(state.copyWith(
          status: SearchOverviewStatus.success,
          search: searchResult,
        ));

        return;
      }

      searchResult.addAll(currentsearch.data!);

      emit(state.copyWith(
        status: SearchOverviewStatus.success,
        search: searchResult,
      ));

      return;
    }

    if (currentsearch?.data != null && currentsearch!.data!.isNotEmpty) {
      searchResult.addAll(currentsearch.data!);
    }

    emit(state.copyWith(
      status: SearchOverviewStatus.success,
      search: searchResult,
    ));
  }

  Future<void> onRefresh() async {
    // pageNumber = (searchResult.length / perPage).ceil();
    pageNumber++;
    add(const SearchOverviewSubscriptionRequested());
  }
}
