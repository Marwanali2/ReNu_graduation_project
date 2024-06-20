import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/antika_model.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo.dart';

part 'show_antika_state.dart';

class AntikaCubit extends Cubit<AntikaCubitState> {
  AntikaCubit(this.antikaRepo) : super(AntikaCubitInitial());
  final AntikaRepo antikaRepo;

  Future<void> fetchShowAntika() async {
    emit(AntikaCubitloading());
    var result = await antikaRepo.fetchFavoriteAntika();
    result.fold((failure) {
      emit(AntikaCubitFailure(failure.errorMessage));
    }, (showAntika) {
      emit(AntikaCubitSuccess(showAntika));
    });
  }
}
