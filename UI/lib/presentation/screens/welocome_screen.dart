import 'package:anbessafit/auth/presentation/signup.dart';
import 'package:flutter/material.dart';
import 'package:anbessafit/presentation/screens/signin_screen.dart';
import 'package:anbessafit/presentation/widgets/custom_scaffold.dart';

import 'package:anbessafit/presentation/widgets/welcome_button.dart';


void main() {
  return runApp(MaterialApp());
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Welcome\n',

                        ),
                        TextSpan(
                          text: 'to\n',

                        ),
                        TextSpan(
                          text: 'Anbessa Fit!\n',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                
                ),
              Text(
                
                'Get fit,look great and Elevate your fitness game with Anbessa Fit!',
                textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
              SizedBox(height: 40,),
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WelcomeButton(
                        buttonText: 'Sign up',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()),
                          );
                        },
                        color: Colors.orange,
                        textColor:Colors.white,
                      ),
                      const SizedBox(width: 8.0),
                      WelcomeButton(
                        buttonText: 'Sign in',
                       onTap: () {
                                 Navigator.pushNamed(context,
                                   '/SignInScreen'
                                );
                              },
                        color: Colors.orange,
                        textColor:Colors.white,

                      ),
                    ],
                  ),      
          ],
        ),
      ),
    );
  }
}

