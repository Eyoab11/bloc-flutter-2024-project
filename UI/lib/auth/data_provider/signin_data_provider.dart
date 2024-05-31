
import 'package:anbessafit/auth/model/signin_model.dart';
import 'package:dio/dio.dart';

class AuthDataProvider {
  final Dio dio;

  AuthDataProvider(this.dio);

  Future<Map<String, dynamic>> login(
      String email, String password, Role role) async {
    try {
      final response = await dio.post(
        'http://localhost:3000/auth/login',
        data: {
          'email': email,
          'password': password,
          'role': role.toString().split('.').last,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // If the login is successful, return the token and user ID
        final data = response.data;
        final token = data['access_token'];
        final userId = data['userId']; // Extract user ID from response data

        if (userId != null && userId is int) {
          return {
            'token': token,
            'userId': userId,
          };
        } else {
          throw Exception('User ID is invalid or missing');
        }
      } else {
        // If the login fails, throw an exception with the error message
        final errorMessage = response.data['message'];
        throw Exception('Login failed: $errorMessage');
      }
    } catch (error) {
      rethrow;
    }
  }
}