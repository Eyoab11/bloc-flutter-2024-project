import 'package:anbessafit/auth/bloc/auth_bloc.dart';
import 'package:anbessafit/auth/data_provider/signup_data_provider.dart';
import 'package:anbessafit/auth/presentation/signup.dart';
import 'package:anbessafit/auth/repository/signup_repo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(MyLogin());
// }

class MySignup extends StatelessWidget {
  const MySignup({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthRegBloc>(
            create: (context) => AuthRegBloc(
                authRepository:
                    AuthRegRepository(dataProvider: AuthRegDataProvider())),
          ),
          // You can add more BlocProviders here if needed
        ],
        child: const SignUpScreen(),
      );
  }
}
