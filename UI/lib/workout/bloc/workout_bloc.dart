import 'package:anbessafit/workout/bloc/workout_event.dart';
import 'package:anbessafit/workout/bloc/workout_state.dart';
import 'package:anbessafit/workout/model/updated_workout_model.dart';
import 'package:anbessafit/workout/model/workout_model.dart';
import 'package:anbessafit/workout/repository/workout_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final WorkoutRepository workoutRepository;

  WorkoutBloc(this.workoutRepository) : super(WorkoutInitialState()) {
    on<CreateWorkoutEvent>((event, emit) => _createWorkout(event.workout, emit));
    on<DeleteWorkoutEvent>((event, emit) => _deleteWorkout(event.workoutId, emit));
    on<UpdateWorkoutEvent>(
        (event, emit) => _updateWorkout(event.workoutId, event.workout, emit));
    on<GetWorkoutsByIdEvent>(
        (event, emit) => _getWorkoutById(event.workoutId, emit));
    on<GetWorkoutsEvent>((event, emit) => _getWorkouts(emit));
  }

  Future<void> _createWorkout(Workout workout, Emitter<WorkoutState> emit) async {
    try {
      emit(WorkoutLoadingState());
      await workoutRepository.createWorkout(workout);
      emit(const WorkoutSuccessState("Workout created successfully!"));
    } catch (error) {
      emit(WorkoutErrorState(error.toString()));
    }
  }

  Future<void> _deleteWorkout(String? workoutId, Emitter<WorkoutState> emit) async {
    try {
      emit(WorkoutLoadingState());
      if (workoutId != null) {
        final int id = int.parse(workoutId);
        await workoutRepository.deleteWorkout(id);
        emit(const WorkoutSuccessState("Workout deleted successfully!"));
      } else {
        throw Exception('Workout ID is null');
      }
    } catch (error) {
      emit(WorkoutErrorState(error.toString()));
    }
  }

  Future<void> _updateWorkout(
      String? workoutId, UpdatedWorkoutDto updatedWorkout, Emitter<WorkoutState> emit) async {
    try {
      emit(WorkoutLoadingState());
      if (workoutId != null) {
        final workout = Workout.fromUpdatedWorkoutDto(updatedWorkout);
        final int id = int.parse(workoutId);
        await workoutRepository.updateWorkout(id, workout);
        emit(const WorkoutSuccessState("Workout updated successfully!"));
      } else {
        throw Exception('Workout ID is null');
      }
    } catch (error) {
      emit(WorkoutErrorState(error.toString()));
    }
  }

  Future<void> _getWorkoutById(int workoutId, Emitter<WorkoutState> emit) async {
  try {
    emit(WorkoutLoadingState());
    final workout = await workoutRepository.getWorkoutById(workoutId);
    emit(WorkoutLoadedState([workout])); // Wrap the single workout in a list
  } catch (error) {
    emit(WorkoutErrorState(error.toString()));
  }
}


  Future<void> _getWorkouts(Emitter<WorkoutState> emit) async {
    try {
      emit(const WorkoutsLoadingState());
      final workouts = await workoutRepository.getAllWorkouts();
      emit(WorkoutLoadedState(workouts));
    } catch (error) {
      emit(WorkoutErrorState(error.toString()));
    }
  }
}
