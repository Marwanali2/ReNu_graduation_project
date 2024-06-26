part of 'store_cubit.dart';

sealed class StoreState extends Equatable {
  const StoreState();

  @override
  List<Object> get props => [];
}

final class StoreCubitInitial extends StoreState {}

final class StoreCubitLoading extends StoreState {}

final class StoreCubitSuccess extends StoreState {}

final class StoreCubitFailure extends StoreState {
  final String errorMessage;

  const StoreCubitFailure(this.errorMessage);
}
