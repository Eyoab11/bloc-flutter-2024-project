import 'package:anbessafit/auth/data_provider/signin_data_provider.dart';
import 'package:anbessafit/auth/model/auth_model.dart';
import 'package:anbessafit/auth/model/signin_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final AuthDataProvider dataProvider;
  final SharedPreferences sharedPreferences;

  AuthRepository(this.dataProvider, this.sharedPreferences);

  Future<AuthLoginData> login(String email, String password, Role role) async {
    try {
      final data = await dataProvider.login(email, password, role);
      final token = data['token'];
      final userId = data['userId']; // Correctly access 'userId' from data map

      await sharedPreferences.setString('token', token);
      await sharedPreferences.setInt(
          'userId', userId); // Store userId correctly

      return AuthLoginData(
        token: token,
        id: userId,
      );
    } catch (error) {
      rethrow;
    }
  }
}
