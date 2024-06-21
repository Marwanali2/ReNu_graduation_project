import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/antika_model.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this.antikaRepo) : super(DetailsInitial());

final AntikaRepo antikaRepo;

  Future<void> fetchCategoriesDetails() async {
    emit(DetailsLoading());
    var result = await antikaRepo.fetchCategoriesDetails();
    result.fold((failure) {
      emit(DetailsFailure(failure.errorMessage));
    }, (details) {
      emit(DetailsSuccess( details));
    });
  }
  
}
