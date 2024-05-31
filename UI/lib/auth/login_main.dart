import 'package:anbessafit/auth/bloc/login_bloc.dart';
import 'package:anbessafit/auth/data_provider/signin_data_provider.dart';
import 'package:anbessafit/auth/presentation/login.dart';
import 'package:anbessafit/auth/repository/signin_repo.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder<SharedPreferences>(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          final sharedPreferences = snapshot.data!;
          return MultiBlocProvider(
            providers: [
              BlocProvider<LoginBloc>(
                create: (context) => LoginBloc(
                  AuthRepository(
                    AuthDataProvider(Dio()),
                    sharedPreferences,
                  ),
                ),
              ),
            ],
            child: SignInScreen(),
          );
        },
      ),
    );
  }
}
