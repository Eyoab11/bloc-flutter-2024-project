import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/navbar.dart';
void main() {
  runApp(ExercisePage());
}

class ExercisePage extends StatefulWidget {
  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {

  final List<ExerciseData> exercises = [
    ExerciseData(
      exerciseName: 'Push-up',
      description:
          'Push-up is a great exercise for strengthening the chest, shoulders, and triceps muscles.',
      imagePath: 'assets/pushUps.gif',
    ),
    ExerciseData(
      exerciseName: 'Squat',
      description:
          'Squat is a compound exercise that strengthens the lower body and core muscles.',
      imagePath: 'assets/sporty.jpg',
    ),
    ExerciseData(
      exerciseName: 'Plank',
      description:
          'Plank is an isometric exercise that strengthens the core muscles.',
      imagePath: 'assets/gymmm.jpg',
    ),
    ExerciseData(
      exerciseName: 'Jumping Jacks',
      description:
          'Jumping Jacks is a great cardiovascular exercise that engages multiple muscle groups.',
      imagePath: 'assets/dumbells.png',
    ),
    ExerciseData(
      exerciseName: 'Burpees',
      description:
          'Burpees are a full-body exercise that combines squats, push-ups, and jumps.',
      imagePath: 'assets/sporty.jpg',
    ),
  ];
 int _currentIndex = 2;

  void _onTap(int index) {
    if (index == 0) {
      
      Navigator.pushNamed(context, '/Home');
    } else if(index == 3) {
        Navigator.pushNamed(context, '/NutritionPage');
    } 
    else if (index == 1) {
      Navigator.pushNamed(context, '/Workoutplan');
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
          'Exercise Page',
          style: TextStyle(color: Colors.white),
        ),
      
      ),
      
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return ExerciseCard(exercise: exercises[index]);
        },
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}

class ExerciseData {
  final String exerciseName;
  final String description;
  final String imagePath;

  ExerciseData({
    required this.exerciseName,
    required this.description,
    required this.imagePath,
  });
}

class ExerciseCard extends StatelessWidget {
  final ExerciseData exercise;

  const ExerciseCard({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
            ),
            child: Image.asset(
              exercise.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exercise.exerciseName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    exercise.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
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
