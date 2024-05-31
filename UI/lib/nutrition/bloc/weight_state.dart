
import 'package:anbessafit/nutrition/model/weight.dart';
import 'package:equatable/equatable.dart';


abstract class WeightState extends Equatable {
  const WeightState();

  @override
  List<Object?> get props => [];
}

class WeightInitialState extends WeightState {}

class WeightLoadingState extends WeightState {}

class WeightLoadedState extends WeightState {
  final List<WeightGainPlan> weights;

  const WeightLoadedState(this.weights);

  @override
  List<Object?> get props => [weights];
}

class WeightErrorState extends WeightState {
  final String message;

  const WeightErrorState(this.message);

  @override
  List<Object?> get props => [message];
}

class WeightSuccessState extends WeightState {
  final String message;

  const WeightSuccessState(this.message);

  @override
  List<Object?> get props => [message];
}
