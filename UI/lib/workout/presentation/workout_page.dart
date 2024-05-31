import 'package:anbessafit/presentation/widgets/bottom_nav_bar.dart';
import 'package:anbessafit/presentation/widgets/navbar.dart';
import 'package:anbessafit/presentation/widgets/workout_plan_card.dart';
import 'package:anbessafit/workout/presentation/addplan.dart';
import 'package:flutter/material.dart';

class WorkoutPlan extends StatefulWidget {
  @override
  State<WorkoutPlan> createState() => _WorkoutPlanState();
}

class _WorkoutPlanState extends State<WorkoutPlan> {
  int _currentIndex = 1;

  void _onTap(int index) {
    if (index == 0) {
      Navigator.pushNamed(context, '/Home');
    } else if (index == 3) {
      Navigator.pushNamed(context, '/NutritionPage');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/ExercisePage');
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  List<WorkoutPlanCard> workoutPlans = [
    WorkoutPlanCard(
      task: 'Cardio Workout',
      date: '10/4/2024',
      reps: '20',
      sets: '10',
    ),
    WorkoutPlanCard(
      task: 'Strength Workout',
      date: '10/4/2024',
      reps: '20',
      sets: '10',
    ),
  ];

  void addWorkoutPlan(Map<String, dynamic> plan) {
    setState(() {
      workoutPlans.add(WorkoutPlanCard(
        task: plan['task'],
        date: plan['date'],
        reps: plan['reps'],
        sets: plan['sets'],
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(
          'Workout Plan',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 16),
              child: Center(
                child: Text(
                  'Your workout plans',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ...workoutPlans.map((plan) => Column(
              children: [
                plan,
                SizedBox(height: 30),
              ],
            )).toList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPlan(addWorkoutPlan: addWorkoutPlan),
            ),
          );
          if (result != null && result is Map<String, dynamic>) {
            addWorkoutPlan(result);
          }
        },
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
        backgroundColor: Colors.orange,
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
