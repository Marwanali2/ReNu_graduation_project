part of 'show_camera_cubit.dart';

sealed class ShowCameraState extends Equatable {
  const ShowCameraState();

  @override
  List<Object> get props => [];
}

final class ShowCameraInitial extends ShowCameraState {}

final class ShowCameraSuccess extends ShowCameraState {
  final List<CategoriesAntika> showcameraAntika;

  const ShowCameraSuccess(this.showcameraAntika);
}

final class ShowCameraFailure extends ShowCameraState {
  final String errorMessage;

  const ShowCameraFailure(this.errorMessage);
}

final class ShowCameraLoading extends ShowCameraState {}
