import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/api/search/i_search_repository.dart';
import 'package:pro/api/search/models/data.dart';
import 'package:pro/edit_search/bloc/edit_search_bloc.dart';
import 'package:pro/search_overview/bloc/search_overview_bloc.dart';

import 'edit_search_view.dart';

class EditSearchPage extends StatelessWidget {
  const EditSearchPage({super.key});

  static Route<void> route({
    Data? initialTask,
    required SearchOverviewBloc searchOverviewBloc,
  }) {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (context) => BlocProvider(
        create: (context) => EditSearchBloc(
          searchOverviewBloc: searchOverviewBloc,
          searchRepository: context.read<ISearchRepository>(),
        ),
        child: const EditSearchPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditSearchBloc, EditSearchState>(
      listenWhen: (previous, current) =>
          previous.status != current.status &&
          current.status == EditSearchStatus.success,
      listener: (context, state) => Navigator.of(context).pop(),
      child: const EditSearchView(),
    );
  }
}
