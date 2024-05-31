import 'package:flutter/material.dart';
import '../screens/weight_gain_screen.dart';
import '../screens/weight_loss_screen.dart';
import '../widgets/navbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/bottom_nav_bar.dart';


class NutritionPage extends StatefulWidget {
  NutritionPage({Key? key}) : super(key: key);

  @override
  State<NutritionPage> createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {
    int _currentIndex = 3;

  void _onTap(int index) {
    if (index == 0) {
      
      Navigator.pushNamed(context, '/Home');
    } else if (index ==1) {
      Navigator.pushNamed(context, '/Workoutplan');
    }
    else if (index==2) {
      Navigator.pushNamed(context, '/ExercisePage');
    }
    else {
      setState(() {
        _currentIndex = index;
      });
    }
  }
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/gymmm.jpg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton( // Use the CustomButton widget instead of ElevatedButton
                text: 'Weight loss',
                onPressed: () {
                  Navigator.pushNamed(
                    context, '/WeightLossScreen'
                  );
                },
              ),
              SizedBox(width: 16), // Add space between the buttons
              CustomButton( // Use the CustomButton widget instead of ElevatedButton
                text: 'Weight Gain',
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/WeightGainScreen'
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}