import 'package:cashedu/app/data/models/login/login_response.model.dart';
import 'package:cashedu/app/data/providers/login.provider.dart';

class LoginRepository {
  final LoginProvider provider = LoginProvider();

  Future<LoginResponse> login(String username, String password) async {
    Map<String, dynamic>? json = await provider.login(username, password);
    return LoginResponse.fromJson(json!);
  }
}