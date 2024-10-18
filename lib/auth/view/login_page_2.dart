import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/api/authentication/i_authentication_repository.dart';
import 'package:pro/app/bloc/app_bloc.dart';
import 'package:pro/auth/cubit/auth_cubit.dart';
import 'package:pro/auth/view/login_form_2.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  static Page<void> page() => const MaterialPage<void>(child: LoginPage2());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => AuthCubit(
          context.read<IAuthenticationRepository>(),
          context.read<AppBloc>(),
        ),
        child: const LoginForm2(),
      ),
    );
  }
}
