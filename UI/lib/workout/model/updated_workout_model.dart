class UpdatedWorkoutDto {
  final int id;
  final String task;
  final DateTime date;
  final int reps;
  final int sets;

  UpdatedWorkoutDto({
    required this.id,
    required this.task,
    required this.date,
    required this.reps,
    required this.sets,
  });

  factory UpdatedWorkoutDto.fromJson(Map<String, dynamic> json) {
    return UpdatedWorkoutDto(
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
}