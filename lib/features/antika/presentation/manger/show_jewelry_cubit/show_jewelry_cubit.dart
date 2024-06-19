import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/Antika_model.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo.dart';

part 'show_jewelry_state.dart';

class ShowJewelryCubit extends Cubit<ShowJewelryState> {
  ShowJewelryCubit(this.antikaRepo) : super(ShowJewelryInitial());
  final AntikaRepo antikaRepo;

Future <void> fetchJewerlyAntika()async {
emit(ShowJewelryLoading());
var result= await antikaRepo.fetchJewerlyAntika();
result.fold((failure) {
emit(ShowJewelryFailure(failure.errorMessage));
},

(showAntika) {
emit(ShowJewelrySuccess(showAntika));
}
);
}
}
