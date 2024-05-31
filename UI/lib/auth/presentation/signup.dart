import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anbessafit/auth/bloc/auth_bloc.dart';
import 'package:anbessafit/auth/bloc/auth_event.dart';
import 'package:anbessafit/auth/data_provider/signup_data_provider.dart';
import 'package:anbessafit/auth/repository/signup_repo.dart';
import 'package:anbessafit/presentation/widgets/custom_scaffold.dart';

enum UserRole { trainee, trainer }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  UserRole? _userRole;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthRegBloc(
        authRepository: AuthRegRepository(
          dataProvider: AuthRegDataProvider(),
        ),
      ),
      child: Scaffold(
        body: CustomScaffold(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(height: 10),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                              ),
                              children: [
                                TextSpan(
                                  text: ' Welcome to Anbessa ',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Fit',
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Full name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Full name',
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Your Full Name',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            obscureText: true,
                            obscuringCharacter: '*',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(height: 25.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Select User Role',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Radio<UserRole>(
                                    value: UserRole.trainee,
                                    groupValue: _userRole,
                                    onChanged: (UserRole? value) {
                                      setState(() {
                                        _userRole = value;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Trainee',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Radio<UserRole>(
                                    value: UserRole.trainer,
                                    groupValue: _userRole,
                                    onChanged: (UserRole? value) {
                                      setState(() {
                                        _userRole = value;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Trainer',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 25.0),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate() &&
                                    _userRole != null) {
                                  BlocProvider.of<AuthRegBloc>(context).add(
                                    SignupEvent(
                                      email: _emailController.text,
                                      password: _passwordController.text,
                                      role: _userRole!, // Include the user role here
                                    ),
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    '/GenderSelectionScreen',
                                  );
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(
                                    SnackBar(
                                      content: Text('Please select user role.'),
                                    ),
                                  );
                                }
                              },
                              child: const Text('Sign Up'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                            ),
                          ),
                          SizedBox(height: 25                           ),
                          SizedBox(height: 25.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/SignInScreen',
                                  );
                                },
                                child: Text(
                                  ' Sign In',
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _signUpUser({
  required String email,
  required String password,
  required UserRole role,
}) {
  // Call your sign-up function here
  // You can access email, password, and role parameters to perform the sign-up process
}

