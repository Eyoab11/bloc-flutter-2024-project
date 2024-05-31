import 'package:anbessafit/workout/model/workout_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WorkoutDataProvider {
  final Dio dio;
  final SharedPreferences sharedPreferences;

  WorkoutDataProvider(this.dio, this.sharedPreferences);

  Future<Map<String, String>> _authenticatedHeaders() async {
    final token = sharedPreferences.getString('token');

    if (token == null) {
      throw Exception('Missing token in local storage.');
    }

    return {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
  }

  Future<List<Workout>> getAllWorkouts() async {
    try {
      final headers = await _authenticatedHeaders();
      final response = await dio.get('http://localhost:3000/crud',
          options: Options(headers: headers));

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => Workout.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load workouts');
      }
    } catch (error) {
      print('Error: $error');
      rethrow;
    }
  }

  Future<Workout> getWorkoutById(int id) async {
    try {
      final headers = await _authenticatedHeaders();
      final response = await dio.get('http://localhost:3000/crud/$id',
          options: Options(headers: headers));

      if (response.statusCode == 200) {
        return Workout.fromJson(response.data);
      } else {
        throw Exception('Failed to load workout');
      }
    } catch (error) {
      print('Error: $error');
      rethrow;
    }
  }

  Future<Workout> createWorkout(Workout workout) async {
    try {
      final headers = await _authenticatedHeaders();
      final response = await dio.post('http://localhost:3000/crud',
          data: workout.toJson(), options: Options(headers: headers));

      if (response.statusCode == 201) {
        return Workout.fromJson(response.data);
      } else {
        throw Exception('Failed to create workout');
      }
    } catch (error) {
      print('Error: $error');
      rethrow;
    }
  }

  Future<Workout> updateWorkout(int id, Workout workout) async {
    try {
      final headers = await _authenticatedHeaders();
      final response = await dio.put('http://localhost:3000/crud/$id',
          data: workout.toJson(), options: Options(headers: headers));

      if (response.statusCode == 200) {
        return Workout.fromJson(response.data);
      } else {
        throw Exception('Failed to update workout');
      }
    } catch (error) {
      print('Error: $error');
      rethrow;
    }
  }

  Future<void> deleteWorkout(int id) async {
    try {
      final headers = await _authenticatedHeaders();
      final response = await dio.delete('http://localhost:3000/crud/$id',
          options: Options(headers: headers));

      if (response.statusCode != 200) {
        throw Exception('Failed to delete workout');
      }
    } catch (error) {
      print('Error: $error');
      rethrow;
    }
  }
}
