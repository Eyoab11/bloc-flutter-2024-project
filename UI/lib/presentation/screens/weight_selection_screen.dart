import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/teal_button.dart';
import '../screens/height_selection_screen.dart';

class WeightSelectionScreen extends StatefulWidget {
  @override
  _WeightSelectionScreenState createState() => _WeightSelectionScreenState();
}

class _WeightSelectionScreenState extends State<WeightSelectionScreen> {
  TextEditingController _weightController = TextEditingController();
  bool _isWeightValid = false;

  @override
  void dispose() {
    _weightController.dispose();
    super.dispose();
  }

  void _validateWeight() {
    setState(() {
      _isWeightValid = _weightController.text.isNotEmpty;
    });
  }

  void _navigateToNextScreen() {
    final weight = _weightController.text.trim();
    if (weight.isNotEmpty) {
    Navigator.push(context, 
                MaterialPageRoute(builder: (BuildContext context) => HeightSelectionScreen())); 
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter your weight.'),
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
                'How much do you weigh?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[600],
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _weightController,
                onChanged: (_) => _validateWeight(),
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
                  labelText: 'Enter your weight (kg)',
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
