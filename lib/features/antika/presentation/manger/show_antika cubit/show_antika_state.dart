part of 'show_antika_cubit.dart';

sealed class AntikaCubitState extends Equatable {
  const AntikaCubitState();

  @override
  List<Object> get props => [];
}

final class AntikaCubitInitial extends AntikaCubitState {}

final class AntikaCubitSuccess extends AntikaCubitState {
  final List<AntikaModel> showAntika;

  const AntikaCubitSuccess(this.showAntika);
}

final class AntikaCubitFailure extends AntikaCubitState {
  final String errorMessage;

  const AntikaCubitFailure(this.errorMessage);
}

final class AntikaCubitloading extends AntikaCubitState {}
