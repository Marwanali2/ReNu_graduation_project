part of 'favorites_cubit.dart';

sealed class FavoritesState extends Equatable {
  const FavoritesState();

  @override
  List<Object> get props => [];
}

final class FavoritesInitial extends FavoritesState {}
final class FavoritesSuccess extends FavoritesState {
    final List<AntikaModel> showAntika;

 const FavoritesSuccess(this.showAntika);

}
final class FavoritesFailure extends FavoritesState {
  final String errorMessage;

const  FavoritesFailure(this.errorMessage);

}
final class FavoritesLoading extends FavoritesState {}
