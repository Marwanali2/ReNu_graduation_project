import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/categories_antika.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo.dart';

part 'show_coins_state.dart';

class ShowCoinsCubit extends Cubit<ShowCoinsState> {
  ShowCoinsCubit(this.antikaRepo) : super(ShowCoinsInitial());
  final AntikaRepo antikaRepo;

  Future<void> fetchCoinsAntika() async {
    emit(ShowCoinsLoading());
    var result = await antikaRepo.fetchCoinsAntika();
    result.fold((failure) {
      emit(ShowCoinsFailure(failure.errorMessage));
    }, (showcoin) {
      emit(ShowCoinsSuccess(showcoin));
    });
  }
}
