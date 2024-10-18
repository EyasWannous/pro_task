import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/api/authentication/i_authentication_repository.dart';
import 'package:pro/api/search/i_search_repository.dart';
import 'package:pro/app/bloc/app_bloc.dart';
import 'package:pro/theme/bloc/theme_bloc.dart';

import 'app_view.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.searchRepository,
    required this.authenticationRepository,
    required this.token,
  });

  final ISearchRepository searchRepository;
  final IAuthenticationRepository authenticationRepository;
  final String? token;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ISearchRepository>.value(
          value: searchRepository,
        ),
        RepositoryProvider<IAuthenticationRepository>.value(
          value: authenticationRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(
            create: (_) => ThemeBloc()..add(InitialThemeSetEvent()),
          ),
          BlocProvider<AppBloc>(
            create: (_) =>
                AppBloc(authenticationRepository: authenticationRepository)
                  ..add(AppTokenChecked(token ?? '')),
          ),
          // BlocProvider<StatsBloc>(
          //   create: (context) =>
          //       StatsBloc()..add(const StatsSubscriptionRequested()),
          // ),
        ],
        child: const AppView(),
      ),
    );
  }
}
