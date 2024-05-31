
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anbessafit/auth/bloc/auth_bloc.dart';
import 'package:anbessafit/auth/data_provider/signup_data_provider.dart';
import 'package:anbessafit/auth/presentation/login.dart';
import 'package:anbessafit/auth/presentation/signup.dart';
import 'package:anbessafit/auth/repository/signup_repo.dart';
import 'package:anbessafit/nutrition/presentation/createPlanWeightGain.dart';
import 'package:anbessafit/nutrition/presentation/weightGainScreen.dart';
import 'package:anbessafit/presentation/screens/create_plan_page_weight_loss.dart';
import 'package:anbessafit/presentation/screens/excercise.dart' as exc1;
import 'package:anbessafit/workout/presentation/workout_page.dart';
import 'package:anbessafit/workout/presentation/addplan.dart';
import 'package:anbessafit/presentation/screens/height_selection_screen.dart';
import 'package:anbessafit/presentation/screens/home.dart';
import 'package:anbessafit/presentation/screens/role_selection_screen.dart';

import 'presentation/screens/gender_selection_screen.dart';
import 'presentation/screens/home_screen.dart';
import 'presentation/screens/weight_selection_screen.dart';
import 'presentation/screens/welocome_screen.dart';

import 'presentation/screens/forget_password.dart';
import 'presentation/screens/weight_loss_screen.dart';
import 'presentation/screens/nutrition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthRegBloc>(
          create: (context) => AuthRegBloc(
            authRepository: AuthRegRepository(dataProvider: AuthRegDataProvider()),
          ),
        ),

      ],
      child: MaterialApp(
        title: 'Your App',
        initialRoute: '/', 
        routes: {
          '/': (context) => HomePageLoading(),
          '/WelcomeScreen': (context) => WelcomeScreen(),
          '/SignUpScreen': (context) => SignUpScreen(),
          '/SignInScreen': (context) => SignInScreen(),
          '/ForgetPasswordScreen': (context) => ForgetPasswordScreen(),
          '/RoleSelection': (context) => RoleSelection(),
          '/GenderSelectionScreen': (context) => GenderSelectionScreen(),
          '/WeightSelectionScreen': (context) => WeightSelectionScreen(),
          '/HeightSelectionScreen': (context) => HeightSelectionScreen(),
          '/Home': (context) => HomePageHome(),
          '/WeightLossScreen': (context) => WeightLossScreen(),
          '/WeightGainScreen': (context) => WeightGainScreen(),

          '/NutritionPage': (context) => NutritionPage(),
          '/WeightGainPage': (context) => WeightGainScreen(),
          '/WeightLossPage': (context) => WeightLossScreen(),
          '/Workoutplan': (context) => WorkoutPlan(),
          '/Addplan': (context) => AddPlan(addWorkoutPlan: (Map<String, dynamic> plan) {} ,),
          '/ExercisePage': (context) => exc1.ExercisePage(),
          '/CreatePlanWeightGain': (context) => CreatePlanWeightGain(),
          '/CreatePlanWeightLoss': (context) => CreatePlanWeightLoss(),
        },
      ),
    );
  }
}
