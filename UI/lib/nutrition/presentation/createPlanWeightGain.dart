import 'package:anbessafit/nutrition/model/weight.dart';
import 'package:anbessafit/presentation/widgets/date_input_widgets.dart';
import 'package:anbessafit/presentation/widgets/number_input_widget.dart';
import 'package:flutter/material.dart';
 // Import the model

class CreatePlanWeightGain extends StatefulWidget {
  @override
  State<CreatePlanWeightGain> createState() => _CreatePlanWeightGainState();
}

class _CreatePlanWeightGainState extends State<CreatePlanWeightGain> {
  DateTime? _startingDate;
  DateTime? _dueDate;
  double _weightGainGoal = 0.0;
  double _burntCalorieGoal = 0.0;
  double _weightGain = 0.0;
  double _calorieBurnt = 0.0;

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
        title: const Text('Create Plan', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
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
                  const SizedBox(height: 20),
                  DateInputRow(
                    labelText: 'Due Date:',
                    selectedDate: _dueDate,
                    onDateSelected: _selectDueDate,
                  ),
                  const SizedBox(height: 20),
                  NumberInputRow(
                    labelText: 'Weight gaining goal in kg:',
                    initialValue: _weightGainGoal.toString(),
                    onChanged: (value) {
                      setState(() {
                        _weightGainGoal = double.parse(value);
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  NumberInputRow(
                    labelText: 'Burnt Calorie Goal:',
                    initialValue: _burntCalorieGoal.toString(),
                    onChanged: (value) {
                      setState(() {
                        _burntCalorieGoal = double.parse(value);
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  NumberInputRow(
                    labelText: 'Weight Gain:',
                    initialValue: _weightGain.toString(),
                    onChanged: (value) {
                      setState(() {
                        _weightGain = double.parse(value);
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  NumberInputRow(
                    labelText: 'Calorie Burnt:',
                    initialValue: _calorieBurnt.toString(),
                    onChanged: (value) {
                      setState(() {
                        _calorieBurnt = double.parse(value);
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          final plan = WeightGainPlan(
                            startingDate: _startingDate!,
                            dueDate: _dueDate!,
                            weightGainGoal: _weightGainGoal,
                            burntCalorieGoal: _burntCalorieGoal,
                            weightGain: _weightGain,
                            calorieBurnt: _calorieBurnt,
                          );

                          Navigator.pop(context, plan);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: const Text(
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
