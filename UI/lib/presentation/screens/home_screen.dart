import 'package:anbessafit/presentation/screens/welocome_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/stack_home.dart'; // 
import '../widgets/teal_button.dart';

class HomePageLoading extends StatelessWidget {
  const HomePageLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StackHome(
            backgroundImage: 'assets/download.jpg',
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20, // Adjust bottom padding as needed
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Anbessa'),
                            TextSpan(
                              text: 'Fit',
                              style: TextStyle(
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  SizedBox(height: 30),
                   Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Elevate. '),
                            TextSpan(
                              text: 'conquer. ',
                              style: TextStyle(
                                color: Colors.orange,
                              ),
                            ),
                            TextSpan(
                              text: 'Achieve',
                            ),
                          ],
                        ),
                      ),
                    ),

                  SizedBox(height: 40),
                    // Adjust vertical spacing as needed
                  TealButton(
                    text: 'Start Your Journey',
                    onPressed: () {
                      Navigator.pushNamed(context, '/WelcomeScreen');
                    }
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
