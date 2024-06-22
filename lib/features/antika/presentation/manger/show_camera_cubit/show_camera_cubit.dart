import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/categories_antika.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo.dart';

part 'show_camera_state.dart';

class ShowCameraCubit extends Cubit<ShowCameraState> {
  ShowCameraCubit(this.antikaRepo) : super(ShowCameraInitial());
  final AntikaRepo antikaRepo;

  Future<void> fetchCameraAntika() async {
    emit(ShowCameraLoading());
    var result = await antikaRepo.fetchCameraAntika();
    result.fold((failure) {
      emit(ShowCameraFailure(failure.errorMessage));
    }, (showcamera) {
      emit(ShowCameraSuccess(showcamera));
    });
  }
}
