import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/animation/fade_indexed_stack.dart';
import 'package:pro/edit_search/view/view.dart';
import 'package:pro/home/cubit/home_cubit.dart';
import 'package:pro/home/widgets/home_tab_button.dart';
import 'package:pro/search_overview/bloc/search_overview_bloc.dart';
import 'package:pro/search_overview/view/searchs_overview_page.dart';
import 'package:pro/stats/view/stats_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select((HomeCubit cubit) => cubit.state.tab);

    return Scaffold(
      body: FadeIndexedStack(
        index: selectedTab.index,
        children: const [SearchsOverviewPage(), StatsPage()],
        // StatsPage(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        key: const Key('homeView_addTask_floatingActionButton'),
        onPressed: () => Navigator.of(context).push(
          EditSearchPage.route(
            searchOverviewBloc: context.read<SearchOverviewBloc>(),
            initialTask: null,
          ),
        ),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.search,
              icon: const Icon(Icons.list),
            ),
            HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.stats,
              icon: const Icon(Icons.show_chart_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
