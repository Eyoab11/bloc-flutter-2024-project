import 'package:anbessafit/auth/data_provider/signup_data_provider.dart';
import 'package:anbessafit/auth/model/signup_model.dart';

class AuthRegRepository {
  final AuthRegDataProvider _dataProvider;

  AuthRegRepository({required AuthRegDataProvider dataProvider})
      : _dataProvider = dataProvider;

  Future<SignupData> register(SignupData registrationData) async {
    try {
      final registeredDataJson =
          await _dataProvider.registerUser(registrationData);
      final registeredData = SignupData.fromJson(registeredDataJson);
      return registeredData;
    } catch (error) {
      throw Exception('Registration failed: $error');
    }
  }
}
