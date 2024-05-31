import 'package:flutter/material.dart';
import '../widgets/role_selection_icon.dart';
import '../widgets/teal_button.dart';
import '../screens/home.dart';


class RoleSelection extends StatefulWidget {
  @override
  State<RoleSelection> createState() => _RoleSelectionState();
}

class _RoleSelectionState extends State<RoleSelection> {
  bool _isTraineeSelected = false;
  bool _isTrainerSelected = false;

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
            'What\'s your role?',
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
                'Your role will be selected from the below choices',
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
                icon: Icons.sports_gymnastics,
                text: 'Trainee',
                onTap: () {
                  setState(() {
                    _isTraineeSelected = !_isTraineeSelected;
                    if (_isTraineeSelected) {
                      _isTrainerSelected = false; 
                    }
                  });
                },
                isSelected: _isTraineeSelected,
              ),
              SizedBox(width: 20),
              IconsChoosing(
                icon: Icons.sports_martial_arts,
                text: 'Trainer',
                onTap: () {
                  setState(() {
                    _isTrainerSelected = !_isTrainerSelected;
                    if (_isTrainerSelected) {
                      _isTraineeSelected = false; 
                    }
                  });
                },
                isSelected: _isTrainerSelected,
              ),
            ],
          ),
          SizedBox(height: 30),
          TealButton(
            text: 'Next',
            onPressed: () {
              if (_isTraineeSelected) {
                Navigator.pushNamed(
                  context, '/Home');
              } else if (_isTrainerSelected) {
                Navigator.pushNamed(
                  context, '/Home');
            
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Role Selection'),
                      content: Text('Please select a role.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
