import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting dates

class AddPlan extends StatefulWidget {
  final Function(Map<String, dynamic>) addWorkoutPlan;

  const AddPlan({Key? key, required this.addWorkoutPlan}) : super(key: key);

  @override
  _AddPlanState createState() => _AddPlanState();
}

class _AddPlanState extends State<AddPlan> {
  final _formKey = GlobalKey<FormState>();
  String task = '';
  String reps = '';
  String sets = '';
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Workout Plan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Task'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a task';
                  }
                  return null;
                },
                onSaved: (value) {
                  task = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Reps'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of reps';
                  }
                  return null;
                },
                onSaved: (value) {
                  reps = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Sets'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of sets';
                  }
                  return null;
                },
                onSaved: (value) {
                  sets = value!;
                },
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text(selectedDate == null
                    ? 'No Date Chosen!'
                    : 'Date: ${DateFormat.yMd().format(selectedDate!)}'),
                trailing: Icon(Icons.calendar_today),
                onTap: _presentDatePicker,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Add Plan'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        selectedDate = pickedDate;
      });
    });
  }

  void _submitForm() {
    if (_formKey.currentState!.validate() && selectedDate != null) {
      _formKey.currentState!.save();
      widget.addWorkoutPlan({
        'task': task,
        'reps': reps,
        'sets': sets,
        'date': DateFormat.yMd().format(selectedDate!),
      });
      Navigator.of(context).pop();
    } else if (selectedDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please choose a date'),
        ),
      );
    }
  }
}
