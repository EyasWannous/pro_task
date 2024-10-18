import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pro/api/search/i_search_repository.dart';
import 'package:pro/api/search/models/data.dart';
import 'package:pro/search_overview/bloc/search_overview_bloc.dart';

part 'edit_search_event.dart';
part 'edit_search_state.dart';

class EditSearchBloc extends Bloc<EditSearchEvent, EditSearchState> {
  EditSearchBloc({
    required SearchOverviewBloc searchOverviewBloc,
    required ISearchRepository searchRepository,
  })  : _searchOverviewBloc = searchOverviewBloc,
        _searchRepository = searchRepository,
        todoEditingController = TextEditingController(),
        desEditingController = TextEditingController(),
        completedEditingController = TextEditingController(),
        super(const EditSearchState()) {
    on<EditSearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final ISearchRepository _searchRepository;
  final SearchOverviewBloc _searchOverviewBloc;

  final TextEditingController todoEditingController;
  final TextEditingController desEditingController;
  final TextEditingController completedEditingController;

  final formKey = GlobalKey<FormState>();

  bool checkValidation() => formKey.currentState!.validate();

  int initialMax = 1000;
  Set<int> setOfInts = {};
}
