part of 'antika_cubit.dart';

sealed class AntikaCubitState extends Equatable {
  const AntikaCubitState();

  @override
  List<Object> get props => [];
}

final class AntikaCubitInitial extends AntikaCubitState {}
final class AntikaCubitSuccess extends AntikaCubitState {}
final class AntikaCubitFailure extends AntikaCubitState {}
final class AntikaCubitloading extends AntikaCubitState {}

