import 'package:anbessafit/workout/model/workout_model.dart';
import 'package:equatable/equatable.dart';


abstract class WorkoutState extends Equatable {
  const WorkoutState();

  @override
  List<Object?> get props => [];
}

class WorkoutInitialState extends WorkoutState {}

class WorkoutLoadingState extends WorkoutState {}

class WorkoutLoadedState extends WorkoutState {
  final List<Workout> workouts;

  const WorkoutLoadedState(this.workouts);

  @override
  List<Object?> get props => [workouts];
}

class WorkoutErrorState extends WorkoutState {
  final String message;

  const WorkoutErrorState(this.message);

  @override
  List<Object?> get props => [message];
}

class WorkoutSuccessState extends WorkoutState {
  final String message;

  const WorkoutSuccessState(this.message);

  @override
  List<Object?> get props => [message];
}

class WorkoutsLoadingState extends WorkoutState {
  const WorkoutsLoadingState();

  @override
  List<Object?> get props => [];
}
