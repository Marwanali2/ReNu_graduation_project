part of 'create_antika_cubit.dart';

sealed class CreateAntikaState extends Equatable {
  const CreateAntikaState();

  @override
  List<Object> get props => [];
}

final class CreateAntikaInitial extends CreateAntikaState {}

final class CreateAntikaLoading extends CreateAntikaState {}

final class CreateAntikaSuccess extends CreateAntikaState {
  final List<CreateAntika> items;

  const CreateAntikaSuccess(this.items);
}

final class CreateAntikaFailure extends CreateAntikaState {
  final String errorMessage;

  const CreateAntikaFailure(this.errorMessage);
}
