import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Set background color to black
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black, 
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.orange),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add),
            label: 'Workout Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports),
            label: 'Exercise',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Nutrition',
          ),
        ],
      ),
    );
  }
}
