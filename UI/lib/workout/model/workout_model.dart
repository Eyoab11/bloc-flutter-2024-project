import 'package:anbessafit/workout/model/updated_workout_model.dart';

class Workout {
  final int id;
  final String task;
  final DateTime date;
  final int reps;
  final int sets;

  Workout({
    required this.id,
    required this.task,
    required this.date,
    required this.reps,
    required this.sets,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      id: json['id'] as int,
      task: json['task'] as String,
      date: DateTime.parse(json['date'] as String),
      reps: json['reps'] as int,
      sets: json['sets'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'task': task,
      'date': date.toIso8601String(),
      'reps': reps,
      'sets': sets,
    };
  }

  factory Workout.fromUpdatedWorkoutDto(UpdatedWorkoutDto updatedWorkout) {
    return Workout(
      id: updatedWorkout.id,
      task: updatedWorkout.task,
      date: updatedWorkout.date,
      reps: updatedWorkout.reps,
      sets: updatedWorkout.sets,
    );
  }
}
