import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/search_overview/bloc/search_overview_bloc.dart';
import 'package:pro/search_overview/view/searchs_overview_view.dart';

class SearchsOverviewPage extends StatelessWidget {
  const SearchsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchOverviewBloc>(
      create: (context) => context.read<SearchOverviewBloc>(),
      child: const SearchsOverviewView(),
    );
  }
}
