import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/Antika_model.dart';

part 'show_antika_state.dart';

class AntikaCubitCubit extends Cubit<AntikaCubitState> {
  AntikaCubitCubit() : super(AntikaCubitInitial());

}
