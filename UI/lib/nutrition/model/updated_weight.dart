class UpdatedWeightModel {
  final int weightId;
  final double weight;

  UpdatedWeightModel({
    required this.weightId,
    required this.weight,
  });

  factory UpdatedWeightModel.fromJson(Map<String, dynamic> json) {
    return UpdatedWeightModel(
      weightId: json['weightId'] as int,
      weight: json['weight'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'weightId': weightId,
      'weight': weight,
    };
  }
}
