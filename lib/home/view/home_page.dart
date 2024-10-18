import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/api/search/i_search_repository.dart';
import 'package:pro/home/cubit/home_cubit.dart';
import 'package:pro/search_overview/bloc/search_overview_bloc.dart';

import 'home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (_) => HomeCubit(),
        ),
        // BlocProvider<TasksOverviewBloc>(
        //   create: (context) => TasksOverviewBloc(
        //     // ScrollController(),
        //     // statsBloc: context.read<StatsBloc>(),
        //     searchRepository: context.read<ISearchRepository>(),
        //   )..add(const TasksOverviewSubscriptionRequested()),
        // ),
        BlocProvider<SearchOverviewBloc>(
          create: (context) => SearchOverviewBloc(
            resultScrollController: ScrollController(),
            // statsBloc: context.read<StatsBloc>(),
            searchRepository: context.read<ISearchRepository>(),
          )..add(const SearchOverviewSubscriptionRequested()),
        ),
        // BlocProvider<ProductBloc>(
        //   create: (_) => ProductBloc(
        //     productRepository: context.read<IProductRepository>(),
        //     categoryRepository: context.read<ICategoryRepository>(),
        //   )..add(const CategoriesSubscriptionRequested()),
        // ),
      ],
      child: const HomeView(),
    );
  }
}
