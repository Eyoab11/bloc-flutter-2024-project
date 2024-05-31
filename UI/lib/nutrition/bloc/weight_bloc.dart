import 'package:anbessafit/nutrition/bloc/weight_event.dart';
import 'package:anbessafit/nutrition/bloc/weight_state.dart';
import 'package:anbessafit/nutrition/repository/weight_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeightBloc extends Bloc<WeightEvent, WeightState> {
  final WeightRepository weightRepository;

  WeightBloc(this.weightRepository) : super(WeightInitialState());

  @override
  Stream<WeightState> mapEventToState(WeightEvent event) async* {
    if (event is LoadWeightsEvent) {
      yield* _mapLoadWeightsEventToState();
    } else if (event is CreateWeightEvent) {
      yield* _mapCreateWeightEventToState(event.weight);
    } else if (event is DeleteWeightEvent) {
      yield* _mapDeleteWeightEventToState(event.weightId);
    } else if (event is UpdateWeightEvent) {
      yield* _mapUpdateWeightEventToState(
          event.weightId, event.updatedWeight);
    }
  }

  Stream<WeightState> _mapLoadWeightsEventToState() async* {
    yield WeightLoadingState();
    try {
      final weights = await weightRepository.getWeights();
      yield WeightLoadedState(weights);
    } catch (error) {
      yield WeightErrorState(error.toString());
    }
  }

  Stream<WeightState> _mapCreateWeightEventToState(double weight) async* {
    yield WeightLoadingState();
    try {
      await weightRepository.createWeight(weight);
      yield const WeightSuccessState("Weight created successfully!");
    } catch (error) {
      yield WeightErrorState(error.toString());
    }
  }

  Stream<WeightState> _mapDeleteWeightEventToState(int weightId) async* {
    yield WeightLoadingState();
    try {
      await weightRepository.deleteWeight(weightId);
      yield const WeightSuccessState("Weight deleted successfully!");
    } catch (error) {
      yield WeightErrorState(error.toString());
    }
  }

  Stream<WeightState> _mapUpdateWeightEventToState(
      int weightId, double weight) async* {
    yield WeightLoadingState();
    try {
      await weightRepository.updateWeight(weightId, weight);
      yield const WeightSuccessState("Weight updated successfully!");
    } catch (error) {
      yield WeightErrorState(error.toString());
    }
  }
}
