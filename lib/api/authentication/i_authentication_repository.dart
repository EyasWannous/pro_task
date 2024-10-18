import 'package:pro/api/authentication/models/login_result.dart';

abstract class IAuthenticationRepository {
  const IAuthenticationRepository();

  Future<LoginResult?> login({
    required String username,
    required String password,
  });

  Future<String?> checkLoggedIn();

  Future<void> logOut();

  Future<String?> refresh();
}
