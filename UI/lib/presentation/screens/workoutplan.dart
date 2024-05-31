// import 'package:flutter/material.dart';
// import 'addplan.dart';
// import'../widgets/bottom_nav_bar.dart';
// import '../widgets/navbar.dart';
// import '../widgets/workout_plan_card.dart';
// void main() {
//   runApp(MaterialApp());
// }

// class Workoutplan extends StatefulWidget {
//   @override
//   State<Workoutplan> createState() => _WorkoutplanState();
// }

// class _WorkoutplanState extends State<Workoutplan> {
//   int _currentIndex = 1;

//   void _onTap(int index) {
//     if (index == 0) {
      
//       Navigator.pushNamed(context, '/Home');
//     } else if(index == 3) {
//         Navigator.pushNamed(context, '/NutritionPage');
//     } 
//     else if (index == 2) {
//       Navigator.pushNamed(context, '/ExercisePage');
//     }
//     else {
//       setState(() {
//         _currentIndex = index;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
      
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         drawer: NavBar(),
//         appBar: AppBar(
          
//           title: Text(
//             'Workout Plan',
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             )
            
//           ),
//           backgroundColor: Colors.black,
//           centerTitle: true,
//           iconTheme: IconThemeData(
//           color: Colors.white,
//         ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 20, left: 16),
//                 child: Center(
//                   child: Text(
//                     'Your workout plans',
//                     style: TextStyle(
//                       color: Colors.orange,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               WorkoutPlanCard(
//                 task: 'Cardio Workout',
//                 date: '10/4/2024',
//                 reps: '20',
//                 sets: '10',
//               ),
//               SizedBox(height: 30),
//               WorkoutPlanCard(
//                 task: 'Strength Workout',
//                 date: '10/4/2024',
//                 reps: '20',
//                 sets: '10',
//               ),
//               SizedBox(height: 30),
//               WorkoutPlanCard(
//                 task: 'Cardio Workout',
//                 date: '10/4/2024',
//                 reps: '20',
//                 sets: '10',
//               ),
//               SizedBox(height: 30),
//               WorkoutPlanCard(
//                 task: 'Cardio Workout',
//                 date: '10/4/2024',
//                 reps: '20',
//                 sets: '10',
//               ),
//               SizedBox(height: 30),
//               WorkoutPlanCard(
//                 task: 'Cardio Workout',
//                 date: '10/4/2024',
//                 reps: '20',
//                 sets: '10',
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             Navigator.pushNamed(
//                     context, '/Addplan'
//                     );
//           },
//           child: Icon(
//             Icons.add,
//             size: 30.0,
//           ),
//           backgroundColor: Colors.orange,
//         ),
//          bottomNavigationBar: BottomNavBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//       ),
//       ),
//     );
//   }
// }
