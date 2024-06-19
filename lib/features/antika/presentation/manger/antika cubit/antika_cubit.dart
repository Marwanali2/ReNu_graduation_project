import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'antika_state.dart';

class AntikaCubitCubit extends Cubit<AntikaCubitState> {
  AntikaCubitCubit() : super(AntikaCubitInitial());

}
