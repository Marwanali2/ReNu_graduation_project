import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/Antika_model.dart';

part 'show_camera_state.dart';

class ShowCameraCubit extends Cubit<ShowCameraState> {
  ShowCameraCubit() : super(ShowCameraInitial());
}
