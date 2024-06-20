part of 'show_coins_cubit.dart';

sealed class ShowCoinsState extends Equatable {
  const ShowCoinsState();

  @override
  List<Object> get props => [];
}

final class ShowCoinsInitial extends ShowCoinsState {}

final class ShowCoinsSuccess extends ShowCoinsState {
  final List<CategoriesAntika> showcoinAntika;

  const ShowCoinsSuccess(this.showcoinAntika);
}

final class ShowCoinsFailure extends ShowCoinsState {
  final String errorMessage;

  const ShowCoinsFailure(this.errorMessage);
}

final class ShowCoinsLoading extends ShowCoinsState {}
