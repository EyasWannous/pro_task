import 'package:pro/api/authentication/authentication_client.dart';
import 'package:pro/api/authentication/i_authentication_repository.dart';
import 'package:pro/api/authentication/models/login_result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationRepository extends IAuthenticationRepository {
  const AuthenticationRepository({
    required this.client,
    required SharedPreferences plugin,
  }) : _plugin = plugin;

  final AuthenticationClient client;
  final SharedPreferences _plugin;

  @override
  Future<LoginResult?> login({
    required String username,
    required String password,
  }) async {
    final result = await client.login(username, password);
    if (result == null) return null;

    await _plugin.setString('token', result.data!.token!);
    await _plugin.setString('refreshToken', result.data!.refreshToken!);

    return result;
  }

  @override
  Future<String?> checkLoggedIn() async {
    return _plugin.getString('token');
  }

  @override
  Future<void> logOut() {
    _plugin.remove('refreshToken');
    return _plugin.remove('token');
  }

  @override
  Future<String?> refresh() {
    // TODO: implement refresh
    throw UnimplementedError();
  }
}
