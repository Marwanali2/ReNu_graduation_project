import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
part 'recycling_state.dart';

class RecyclingCubit extends Cubit<RecyclingState> {
  RecyclingCubit() : super(RecyclingInitial());
  final Dio _dio = Dio();
  static String totalPoints = ' 0';
  static String pointsOfBlastic = '0';
  static String pointsOfIron = '0';
  static String pointsOfGlass = '0';

  Future<void> sendRequest({
    required int weightOfBlastic,
    required int weightOfIron,
    required int weightOfGlass,
  }) async {
    emit(SendRequestLoadingState());
    debugPrint(
        'weightofblastic: $weightOfBlastic, weightofiron: $weightOfIron, weightofglass: $weightOfGlass');
    try {
      Response response = await _dio.post(
          'https://api-service.cloud/recycle/public_html/api/users/recycle/sendrequest',
          options: Options(
            headers: {
              'Accept': 'application/json',
              'Authorization': 'Bearer ${AuthCubit.userModel.token}'
              //  'Authorization': 'Bearer 169|WG61rv1RN2V8kNlnbnAJAou6M0aqWIsz19jiF5tLc6970021'
            },
          ),
          data: {
            'weightofblastic': weightOfBlastic,
            'weightofiron': weightOfIron,
            'weightofglass': weightOfGlass,
          });
      var responseBody = response.data;
      if (response.statusCode == 200 &&
          responseBody['message'] == 'done request') {
        debugPrint('Success Confirming Order: $responseBody');
        emit(SendRequestSuccessState());
      } else {
        debugPrint('Failure Confirming Order: $responseBody');
        emit(SendRequestFailureState(
            errorMessage: responseBody['message'] ?? 'Unknown error'));
      }
    } catch (e) {
      if (kDebugMode) {
        print('${AuthCubit.userModel.token}');
      }
      debugPrint('Failed to send request, Reason: $e');
      emit(SendRequestFailureState(
          errorMessage: 'Failed to Confirming Order, TRY AGAIN'));
    }
  }

  Future<void> showRequestResult() async {
    emit(ShowRequestResultLoadingState());
    try {
      Response response = await _dio.get(
        'https://api-service.cloud/recycle/public_html/api/users/recycle/showtotalresult',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer ${AuthCubit.userModel.token}'
          },
        ),
      );
      var responseBody = response.data;
      if (response.statusCode == 200) {
        RecyclingCubit.totalPoints = responseBody['deta']['points'];
        RecyclingCubit.pointsOfBlastic =
            responseBody['deta']['pointsofblastic'];
        RecyclingCubit.pointsOfIron = responseBody['deta']['pointsofiron'];
        RecyclingCubit.pointsOfGlass = responseBody['deta']['pointsofglasses'];
        debugPrint('Success show request result : $responseBody');

        emit(
          ShowRequestResultSuccessState(
            totalPoints: responseBody['deta']['points'],
            pointsOfBlastic: responseBody['deta']['pointsofblastic'],
            pointsOfIron: responseBody['deta']['pointsofiron'],
            pointsOfGlasses: responseBody['deta']['pointsofglasses'],
          ),
        );
      } else {
        debugPrint('Failure show request result: $responseBody');
        emit(ShowRequestResultFailureState(
            errorMessage: responseBody['message'] ?? 'Unknown error'));
      }
    } catch (e) {
      if (kDebugMode) {
        print('${AuthCubit.userModel.token}');
      }
      debugPrint('Failed to show request result, Reason: $e');
      emit(ShowRequestResultFailureState(
          errorMessage: 'Failed to show request result, TRY AGAIN'));
    }
  }
}
