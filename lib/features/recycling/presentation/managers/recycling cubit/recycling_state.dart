part of 'recycling_cubit.dart';

abstract class RecyclingState extends Equatable {
  @override
  List<Object> get props => [];
  const RecyclingState();
}

class RecyclingInitial extends RecyclingState {}

class SendRequestSuccessState extends RecyclingState {}

// ignore: must_be_immutable
class SendRequestFailureState extends RecyclingState {
  String? errorMessage;

  SendRequestFailureState({required this.errorMessage});
}

class SendRequestLoadingState extends RecyclingState {}

class ShowRequestResultSuccessState extends RecyclingState {}

// ignore: must_be_immutable
class ShowRequestResultFailureState extends RecyclingState {
  String? errorMessage;

  ShowRequestResultFailureState({required this.errorMessage});
}

class ShowRequestResultLoadingState extends RecyclingState {}
