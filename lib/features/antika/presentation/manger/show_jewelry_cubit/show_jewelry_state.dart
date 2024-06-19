part of 'show_jewelry_cubit.dart';

sealed class ShowJewelryState extends Equatable {
  const ShowJewelryState();

  @override
  List<Object> get props => [];
}

final class ShowJewelryInitial extends ShowJewelryState {}
final class ShowJewelrySuccess extends ShowJewelryState {
  final List<AntikaModel> showJewelryAntika;

 const  ShowJewelrySuccess(this.showJewelryAntika);
}
final class ShowJewelryFailure extends ShowJewelryState {
  final String errorMessage;

 const ShowJewelryFailure(this.errorMessage);
}
final class ShowJewelryLoading extends ShowJewelryState {}
