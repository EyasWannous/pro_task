import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/edit_search/bloc/edit_search_bloc.dart';
import 'package:pro/edit_search/widgets/widgets.dart';
import 'package:pro/extensions/sizebox_extension.dart';
import 'package:pro/extensions/widget_extension.dart';
import 'package:pro/theme/bloc/theme_bloc.dart';
import 'package:pro/theme/theme.dart';

class EditSearchView extends StatelessWidget {
  const EditSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final status = context.select((EditSearchBloc bloc) => bloc.state.status);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
        actions: [
          BlocBuilder<ThemeBloc, ThemeData>(
            builder: (_, themeData) {
              return IconButton(
                onPressed: () =>
                    context.read<ThemeBloc>().add(ThemeSwitchEvent()),
                icon: Icon(
                  themeData.colorScheme == FlutterTasksTheme.dark.colorScheme
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: context.read<EditSearchBloc>().formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        "https://www.projoodle.com/landing/img/todo-list-wizard.png",
                    progressIndicatorBuilder: (_, __, downloadProgress) =>
                        Center(
                      child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                      ),
                    ),
                    errorWidget: (_, __, ___) => const Icon(Icons.error),
                    width: 75 * 2,
                    height: 150 * 2,
                  ),
                  Text(
                    'Add Task to your list',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 20),
                  ),
                ],
              ),
              20.h,
              const TodoField(),
              20.h,
              const DesField()
            ],
          ),
        ).allPadding(16),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Save changes',
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        onPressed: status.isLoadingOrSuccess
            ? null
            : () {
                // if (context.read<EditSearchBloc>().checkValidation()) {
                //   context.read<EditSearchBloc>().add();
                // }
              },
        child: status.isLoadingOrSuccess
            ? const CupertinoActivityIndicator()
            : const Icon(Icons.check_rounded),
      ),
    );
  }
}
