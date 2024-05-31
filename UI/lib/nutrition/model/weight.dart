class WeightGainPlan {
  final double weightGainGoal;
  final DateTime startingDate;
  final DateTime dueDate;
  final double burntCalorieGoal;
  final double weightGain;
  final double calorieBurnt;


  WeightGainPlan({
    required this.weightGainGoal,
    required this.startingDate,
    required this.dueDate,
    required this.burntCalorieGoal,
    required this.weightGain,
    required this.calorieBurnt,
  });


  factory WeightGainPlan.fromJson(Map<String, dynamic> json) {
    return WeightGainPlan(
      weightGainGoal: json['weightGainGoal'],
      startingDate: DateTime.parse(json['startingDate']),
      dueDate: DateTime.parse(json['dueDate']),
      burntCalorieGoal: json['burntCalorieGoal'],
      weightGain: json['weightGain'],
      calorieBurnt: json['calorieBurnt'],
    );
}
}