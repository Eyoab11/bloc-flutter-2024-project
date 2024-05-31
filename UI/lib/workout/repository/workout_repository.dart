
import 'package:anbessafit/workout/data_provider/workout_dataprovider.dart';
import 'package:anbessafit/workout/model/workout_model.dart';


abstract class WorkoutRepository {
  Future<Workout> createWorkout(Workout workout);
  Future<void> deleteWorkout(int id);
  Future<Workout> updateWorkout(int id, Workout workout);
  Future<Workout> getWorkoutById(int id);
  Future<List<Workout>> getAllWorkouts();
}

class ConcreteWorkoutRepository implements WorkoutRepository {
  final WorkoutDataProvider workoutDataProvider;

  ConcreteWorkoutRepository(this.workoutDataProvider);

  @override
  Future<Workout> createWorkout(Workout workout) async {
    return await workoutDataProvider.createWorkout(workout);
  }

  @override
  Future<void> deleteWorkout(int id) async {
    await workoutDataProvider.deleteWorkout(id);
  }

  @override
  Future<Workout> updateWorkout(int id, Workout workout) async {
    return await workoutDataProvider.updateWorkout(id, workout);
  }

  @override
  Future<Workout> getWorkoutById(int id) async {
    return await workoutDataProvider.getWorkoutById(id);
  }

  @override
  Future<List<Workout>> getAllWorkouts() async {
    return await workoutDataProvider.getAllWorkouts();
  }
}
