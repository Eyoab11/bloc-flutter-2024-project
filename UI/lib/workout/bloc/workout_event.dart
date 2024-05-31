import 'package:anbessafit/workout/model/updated_workout_model.dart';
import 'package:anbessafit/workout/model/workout_model.dart';

abstract class WorkoutEvent {
  const WorkoutEvent();
}

class LoadWorkoutsEvent extends WorkoutEvent {
  const LoadWorkoutsEvent();
}

class CreateWorkoutEvent extends WorkoutEvent {
  final Workout workout;

  const CreateWorkoutEvent(this.workout);
}

class DeleteWorkoutEvent extends WorkoutEvent {
  final String? workoutId;

  const DeleteWorkoutEvent(this.workoutId);
}

class UpdateWorkoutEvent extends WorkoutEvent {
  final String workoutId;
  final UpdatedWorkoutDto workout;

  UpdateWorkoutEvent({required this.workoutId, required this.workout});

  List<Object> get props => [workoutId, workout];
}

class GetWorkoutsByIdEvent extends WorkoutEvent {
  final int workoutId;

  GetWorkoutsByIdEvent({
    required this.workoutId,
  });
}

class GetWorkoutsEvent extends WorkoutEvent {
  const GetWorkoutsEvent();
}

class GetOrderWorkoutsEvent extends WorkoutEvent {
  const GetOrderWorkoutsEvent();
}
