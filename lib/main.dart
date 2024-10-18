import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:pro/api/authentication/authentication_client.dart';
import 'package:pro/api/authentication/authentication_repository.dart';
import 'package:pro/api/search/search_client.dart';
import 'package:pro/api/search/search_repository.dart';
import 'package:pro/api/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pro/app/app.dart';
import 'package:pro/app/app_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.manual,
  //   overlays: [],
  // );

  FlutterError.onError = (details) {
    log(
      details.exceptionAsString(),
      stackTrace: details.stack,
    );
  };

  Bloc.observer = const AppBlocObserver();

  final plugin = await SharedPreferences.getInstance();

  final searchRepository = SearchRepository(
    client: SearchClient(),
    storage: Storage(plugin: plugin),
  );

  final authenticationRepository = AuthenticationRepository(
    client: AuthenticationClient(),
    plugin: plugin,
  );

  final token = await authenticationRepository.checkLoggedIn();

  runApp(App(
    searchRepository: searchRepository,
    authenticationRepository: authenticationRepository,
    token: token,
  ));
}
