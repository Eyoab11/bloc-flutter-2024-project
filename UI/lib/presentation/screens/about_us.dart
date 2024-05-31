import 'package:anbessafit/presentation/widgets/navbar.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'AnbessaFit',
          style: TextStyle(
            letterSpacing: 1.5,
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
            backgroundImage: AssetImage('assets/download.jpg'),
            radius: 60,
          )),
          SizedBox(height: 20),
          Center(
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
          Text(
            'Welcome to the transformative world of ANBESSAFIT, where fitness meets innovation, and every workout becomes a tailored journey to your well-being. At the core of this cutting-edge fitness website lies its standout feature the Task Tracker. This ingenious tool empowers users to curate and manage personalized fitness tasks with unparalleled ease. Whether you are an experienced athlete honing specific skills or a fitness enthusiast embarking on a new chapter, FitTask adapts to your aspirations, offering a seamless task creation process. The user-friendly interface ensures that setting up tasks is a breeze simply log in, define your fitness objectives, and let FitTask generate a bespoke task list tailored to your preferences, whether it is strength training, cardio, or flexibility',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 50),
          Center(
          child: Text(
            'If you like this app share it with your friends ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          )
          ),
          
        ],),
    );
  }
}