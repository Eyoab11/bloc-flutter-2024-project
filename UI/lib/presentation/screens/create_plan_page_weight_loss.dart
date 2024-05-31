import 'package:flutter/material.dart';
import '../widgets/date_input_widgets.dart';
import '../widgets/number_input_widget.dart';

class CreatePlanWeightLoss extends StatefulWidget {
  @override
  State<CreatePlanWeightLoss> createState() => _CreatePlanWeightLossState();
}

class _CreatePlanWeightLossState extends State<CreatePlanWeightLoss> {
  DateTime? _startingDate;
  DateTime? _dueDate;

  Future<void> _selectStartingDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _startingDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _startingDate) {
      setState(() {
        _startingDate = picked;
      });
    }
  }

  Future<void> _selectDueDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dueDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _dueDate) {
      setState(() {
        _dueDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Create Plan',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DateInputRow(
                    labelText: 'Starting Date:',
                    selectedDate: _startingDate,
                    onDateSelected: _selectStartingDate,
                  ),
                  SizedBox(height: 20),
                  DateInputRow(
                    labelText: 'Due Date:',
                    selectedDate: _dueDate,
                    onDateSelected: _selectDueDate,
                  ),
                  SizedBox(height: 20),
                  NumberInputRow(
                    labelText: 'Weight losing goal in kg:',
                    initialValue: 'Enter weight goal',
                  ),
                  SizedBox(height: 20),
                  NumberInputRow(
                    labelText: 'Burnt Calorie Goal:',
                    initialValue: 'Enter calorie goal',
                  ),
                  SizedBox(height: 20),
                  NumberInputRow(
                    labelText: 'Weight lost:',
                    initialValue: 'Enter lost weight',
                  ),
                  SizedBox(height: 20),
                  NumberInputRow(
                    labelText: 'Calorie Burnt:',
                    initialValue: 'Enter burnt calorie',
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Implement edit functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Text(
                          'Create Plan',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
