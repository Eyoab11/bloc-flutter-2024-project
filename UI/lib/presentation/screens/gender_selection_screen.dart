import 'package:flutter/material.dart';
import '../widgets/icons_choosing.dart';
import '../widgets/teal_button.dart';
import 'package:anbessafit/presentation/screens/weight_selection_screen.dart';

class GenderSelectionScreen extends StatefulWidget {
  @override
  State<GenderSelectionScreen> createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  bool _isMaleSelected = false;
  bool _isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'What\'s your gender?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.orange[600],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Center(
              child: Text(
                'Your coach will select training for you based on your health data.',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconsChoosing(
                icon: Icons.male,
                text: 'Male',
                isSelected: _isMaleSelected,
                onTap: () {
                  setState(() {
                    _isMaleSelected = !_isMaleSelected;
                    _isFemaleSelected = false; 
                  });
                },
              ),
              SizedBox(width: 20),
              IconsChoosing(
                icon: Icons.female,
                text: 'Female',
                isSelected: _isFemaleSelected,
                onTap: () {
                  setState(() {
                    _isFemaleSelected = !_isFemaleSelected;
                    _isMaleSelected = false; // Deselect male
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 30),
          TealButton(
            text: 'Next',
            onPressed: () {
              if (_isMaleSelected || _isFemaleSelected) {
                Navigator.pushNamed(context, '/WeightSelectionScreen');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Please select your gender.'),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
