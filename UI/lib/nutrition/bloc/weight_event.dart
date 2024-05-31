import 'package:equatable/equatable.dart';

abstract class WeightEvent extends Equatable {
  const WeightEvent();

  @override
  List<Object?> get props => [];
}

class LoadWeightsEvent extends WeightEvent {}

class CreateWeightEvent extends WeightEvent {
  final double weight;

  const CreateWeightEvent(this.weight);

  @override
  List<Object?> get props => [weight];
}

class DeleteWeightEvent extends WeightEvent {
  final int weightId;

  const DeleteWeightEvent(this.weightId);

  @override
  List<Object?> get props => [weightId];
}

class UpdateWeightEvent extends WeightEvent {
  final int weightId;
  final double updatedWeight;

  const UpdateWeightEvent(this.weightId, this.updatedWeight);

  @override
  List<Object?> get props => [weightId, updatedWeight];
}
