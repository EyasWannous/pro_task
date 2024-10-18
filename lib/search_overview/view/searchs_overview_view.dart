import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro/extensions/sizebox_extension.dart';
import 'package:pro/extensions/widget_extension.dart';
import 'package:pro/search_overview/bloc/search_overview_bloc.dart';
import 'package:pro/search_overview/widgets/search_list_tile.dart';

class SearchsOverviewView extends StatelessWidget {
  const SearchsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Tasks',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w900,
                fontFamily: GoogleFonts.lora().fontFamily,
              ),
        ),
        actions: const [],
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(4.0),
        //   child: Container(
        //     color: Colors.orange,
        //     height: 4.0,
        //   ),
        // ),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<SearchOverviewBloc, SearchOverviewState>(
            listenWhen: (previous, current) =>
                previous.status != current.status,
            listener: (context, state) {
              if (state.status == SearchOverviewStatus.failure) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      content: Text('An error occurred while loading tasks.'),
                    ),
                  );
              }
            },
          ),
        ],
        child: BlocBuilder<SearchOverviewBloc, SearchOverviewState>(
          builder: (context, state) {
            if (state.search.isEmpty) {
              if (state.status == SearchOverviewStatus.loading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              } else if (state.status != SearchOverviewStatus.success) {
                return const SizedBox();
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/tasks.jpg',
                        width: 250,
                      ),
                    ),
                    20.h,
                    // const SizedBox(height: 20),
                    Text(
                      'No tasks found with the selected filters.',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    20.h,
                    // const SizedBox(height: 20),
                    // ElevatedButton(
                    //   onPressed: context.read<SearchOverviewBloc>().onRefresh,
                    //   child: const Text('Refresh'),
                    // ),
                  ],
                ),
              );
            }

            return ListView.builder(
              controller:
                  context.read<SearchOverviewBloc>().resultScrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              // cacheExtent: 5,
              // controller:
              //     context.read<SearchOverviewBloc>().resultScrollController,
              itemCount: state.search.length,
              itemBuilder: (context, index) {
                if (index != state.search.length - 1) {
                  return SearchListTile(
                    oneItem: state.search.elementAt(index),
                  ).onlyPadding(top: 6);
                }
                return Column(
                  children: [
                    SearchListTile(
                      oneItem: state.search.elementAt(index),
                    ).onlyPadding(top: 6, bottom: 36),
                    if (state.status == SearchOverviewStatus.loading)
                      const Center(child: RefreshProgressIndicator())
                  ],
                ).onlyPadding(bottom: 36);
              },
            );
          },
        ),
      ),
    );
  }
}
