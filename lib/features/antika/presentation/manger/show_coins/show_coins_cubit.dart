import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/Antika_model.dart';

part 'show_coins_state.dart';

class ShowCoinsCubit extends Cubit<ShowCoinsState> {
  ShowCoinsCubit() : super(ShowCoinsInitial());
}
