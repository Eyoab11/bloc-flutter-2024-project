
import 'package:anbessafit/nutrition/Data_provider/weight_data_provider.dart';
import 'package:anbessafit/nutrition/model/weight.dart';

abstract class WeightRepository {
  Future<void> createWeight(double weight);
  Future<void> deleteWeight(int weightId);
  Future<void> updateWeight(int weightId, double weight);
  Future<List<WeightGainPlan>> getWeightById(int weightId);
  Future<List<WeightGainPlan>> getWeights();
}

class ConcreteWeightRepository implements WeightRepository {
  final WeightDataProvider weightDataProvider;

  ConcreteWeightRepository({
    required this.weightDataProvider,
  });

  @override
  Future<void> createWeight(double weight) async {
    await weightDataProvider.createWeight(weight);
  }

  @override
  Future<void> deleteWeight(int weightId) async {
    await weightDataProvider.deleteWeight(weightId);
  }

  @override
  Future<void> updateWeight(int weightId, double weight) async {
    await weightDataProvider.updateWeight(weightId, weight);
  }

  @override
  Future<List<WeightGainPlan>> getWeightById(int weightId) async {
    return await weightDataProvider.getWeightById(weightId);
  }

  @override
  Future<List<WeightGainPlan>> getWeights() async {
    return await weightDataProvider.getWeights();
  }
}
