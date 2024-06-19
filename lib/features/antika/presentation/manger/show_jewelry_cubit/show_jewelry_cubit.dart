import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/Antika_model.dart';

part 'show_jewelry_state.dart';

class ShowJewelryCubit extends Cubit<ShowJewelryState> {
  ShowJewelryCubit() : super(ShowJewelryInitial());
}
