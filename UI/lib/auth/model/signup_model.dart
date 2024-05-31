enum Role {
  Trainer,
  Trainee
}

class SignupData {
  final String email;
  final String password;
  final Role role;

  SignupData({
    required this.email,
    required this.password,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'role': role.toString().split('.').last, // Convert enum to string
    };
  }

  static SignupData fromJson(Map<String, dynamic> signupDataJson) {
  return SignupData(
    email: signupDataJson['email'],
    password: signupDataJson['password'],
    role: signupDataJson['role'] == 'Trainee' ? Role.Trainee : Role.Trainer,
  );

  }
}
