part of 'clean_up_cubit.dart';

sealed class CleanUpState extends Equatable {
  const CleanUpState();

  @override
  List<Object> get props => [];
}

final class CleanUpInitial extends CleanUpState {}


class SendingUserLocationSuccessState extends CleanUpState {}

// ignore: must_be_immutable
class SendingUserLocationFailureState extends CleanUpState {
  String? errorMessage;

  SendingUserLocationFailureState({required this.errorMessage});
}

class SendingUserLocationLoadingState extends CleanUpState {}

class GetCompanySuccessState extends CleanUpState {}
// ignore: must_be_immutable
class GetCompanyFailureState extends CleanUpState {
  String? errorMessage;

  GetCompanyFailureState({required this.errorMessage});
}
class GetCompanyLoadingState extends CleanUpState {}

class SendReviewSuccessState extends CleanUpState {}
// ignore: must_be_immutable
class SendReviewFailureState extends CleanUpState {
  String? errorMessage;

  SendReviewFailureState({required this.errorMessage});
}
class SendReviewLoadingState extends CleanUpState {}


class ShowCompanyReviewsSuccessState extends CleanUpState {}
// ignore: must_be_immutable
class ShowCompanyReviewsFailureState extends CleanUpState {
  String? errorMessage;

  ShowCompanyReviewsFailureState({required this.errorMessage});
}
class ShowCompanyReviewsLoadingState extends CleanUpState {}

