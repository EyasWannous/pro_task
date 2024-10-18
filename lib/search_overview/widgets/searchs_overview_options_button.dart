import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/app/bloc/app_bloc.dart';
import 'package:pro/theme/bloc/theme_bloc.dart';
import 'package:pro/theme/theme.dart';

enum SearchsOverviewOption { swithTheme, logout }

class SearchsOverviewOptionsButton extends StatelessWidget {
  const SearchsOverviewOptionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SearchsOverviewOption>(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      tooltip: 'Options',
      onSelected: (options) {
        switch (options) {
          case SearchsOverviewOption.swithTheme:
            context.read<ThemeBloc>().add(ThemeSwitchEvent());
          case SearchsOverviewOption.logout:
            context.read<AppBloc>().add(const AppLogoutRequested());
        }
      },
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            value: SearchsOverviewOption.logout,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Logout'),
                Icon(Icons.logout),
              ],
            ),
          ),
          PopupMenuItem(
            value: SearchsOverviewOption.swithTheme,
            child: BlocBuilder<ThemeBloc, ThemeData>(
              builder: (_, themeData) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Change Theme'),
                    Icon(
                      themeData.colorScheme ==
                              FlutterTasksTheme.dark.colorScheme
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode_outlined,
                    ),
                  ],
                );
              },
            ),
          ),
        ];
      },
      icon: const Icon(Icons.more_vert_rounded),
    );
  }
}
