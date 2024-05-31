import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/teal_button.dart';
import '../screens/role_selection_screen.dart';

class HeightSelectionScreen extends StatefulWidget {
  @override
  _HeightSelectionScreenState createState() => _HeightSelectionScreenState();
}

class _HeightSelectionScreenState extends State<HeightSelectionScreen> {
  TextEditingController _heightController = TextEditingController();
  bool _isHeightValid = false;

  @override
  void dispose() {
    _heightController.dispose();
    super.dispose();
  }

  void _validateHeight() {
    setState(() {
      _isHeightValid = _heightController.text.isNotEmpty;
    });
  }

  void _navigateToNextScreen() {
    final height = _heightController.text.trim();
    if (height.isNotEmpty) {
     Navigator.pushNamed(context, '/RoleSelection');
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter your height.'),
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'How tall are you?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[600],
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _heightController,
                onChanged: (_) => _validateHeight(),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  FilteringTextInputFormatter.digitsOnly
                ],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  labelText: 'Enter your height (cm)',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TealButton(
                text: 'Next',
                onPressed: _navigateToNextScreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
