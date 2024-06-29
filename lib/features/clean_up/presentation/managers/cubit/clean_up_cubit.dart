import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:graduation_project/core/networking/api_services.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';
import 'package:graduation_project/features/clean_up/data/models/company_model.dart';
import 'package:graduation_project/features/clean_up/data/models/review_model.dart';

part 'clean_up_state.dart';

class CleanUpCubit extends Cubit<CleanUpState> {
  CleanUpCubit() : super(CleanUpInitial());
  final Dio _dio = Dio();
  static CompanyModel companyModel = CompanyModel();
  static List<ReviewModel> customersReviews = [];

  Future<void> sendUserLocation({
    required String userLat,
    required String userLong,
  }) async {
    emit(SendingUserLocationLoadingState());
    debugPrint('userLat: $userLat, userLong: $userLong');
    try {
      Response response =
          await _dio.post('${ApiServices.baseUrl}/users/cleanup/Userlocation',
              options: Options(
                headers: {
                  'Accept': 'application/json',
                  'Authorization': 'Bearer ${AuthCubit.userModel.token}'
                },
              ),
              data: {
            'lat': userLat,
            'long': userLong,
          });
      var responseBody = response.data;
      if (response.statusCode == 200) {
        debugPrint(
            'Success Sending User Location with lat $userLat and long $userLong : $responseBody');
        emit(SendingUserLocationSuccessState());
      } else {
        debugPrint('Failure Sending User Location: $responseBody');
        emit(SendingUserLocationFailureState(
            errorMessage: responseBody['message'] ?? 'Unknown error'));
      }
    } catch (e) {
      if (kDebugMode) {
        print('${AuthCubit.userModel.token}');
      }
      debugPrint(
          'Failed to send user location request with lat $userLat and long $userLong, Reason: $e');
      emit(SendingUserLocationFailureState(
          errorMessage: 'Failed to Sending Your Location, TRY AGAIN'));
    }
  }

  Future<void> showRequestResult() async {
    emit(GetCompanyLoadingState());
    try {
      Response response = await _dio.get(
        '${ApiServices.baseUrl}/users/cleanup/getcompanylocation/32',
        options: Options(
          headers: {
            'Accept': 'application/json',
          },
        ),
      );
      var responseBody = response.data;
      if (response.statusCode == 200) {
        companyModel = CompanyModel.fromJson(responseBody['deta']['company']);
        debugPrint('Success Get Company Data : $responseBody');

        emit(
          GetCompanySuccessState(),
        );
      } else {
        debugPrint('Failure Get Company Data: $responseBody');
        emit(GetCompanyFailureState(
            errorMessage: responseBody['message'] ?? 'Unknown error'));
      }
    } catch (e) {
      if (kDebugMode) {
        print('${AuthCubit.userModel.token}');
      }
      debugPrint('Failed to Get Company Data, Reason: $e');
      emit(GetCompanyFailureState(
          errorMessage: 'Failed to Get Company Data, TRY AGAIN'));
    }
  }

  Future<void> sendCustomerReview({
    required String numberOfStars,
    required String reviewComment,
  }) async {
    emit(SendReviewLoadingState());
    debugPrint('numberOfStars: $numberOfStars, reviewComment: $reviewComment');
    try {
      Response response =
          await _dio.post('${ApiServices.baseUrl}/users/cleanup/sendreview/32',
              options: Options(
                headers: {
                  'Accept': 'application/json',
                  'Authorization': 'Bearer ${AuthCubit.userModel.token}'
                },
              ),
              data: {
            'value': numberOfStars,
            'comment': reviewComment,
          });
      var responseBody = response.data;
      if (response.statusCode == 200 &&
          responseBody['message'] == 'review is successful') {
        debugPrint('Success Send Customer Review: $responseBody');
        emit(SendReviewSuccessState());
      } else {
        debugPrint('Failure Send Customer Review: $responseBody');
        emit(SendReviewFailureState(
            errorMessage: responseBody['message'] ?? 'Unknown error'));
      }
    } catch (e) {
      if (kDebugMode) {
        print('${AuthCubit.userModel.token}');
      }
      debugPrint('Failed to Send Customer Review, Reason: $e');
      emit(SendReviewFailureState(
          errorMessage: 'Failed to Send Customer Review, TRY AGAIN'));
    }
  }

  Future<void> showCompanyReview() async {
    emit(ShowCompanyReviewsLoadingState());
    try {
      Response response = await _dio.get(
        '${ApiServices.baseUrl}/users/cleanup/showreview/32',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer ${AuthCubit.userModel.token}'
          },
        ),
      );
      var responseBody = response.data;
      if (response.statusCode == 200) {
        customersReviews = (responseBody['data'] as List)
            .map((e) => ReviewModel.fromJson(e))
            .toList();
        debugPrint('Success Get Company Reviews : $responseBody');

        emit(
          ShowCompanyReviewsSuccessState(),
        );
      } else {
        debugPrint('Failure Get Company Reviews: $responseBody');
        emit(ShowCompanyReviewsFailureState(
            errorMessage: responseBody['message'] ?? 'Unknown error'));
      }
    } catch (e) {
      if (kDebugMode) {
        print('${AuthCubit.userModel.token}');
      }
      debugPrint('Failed to Get Company Reviews, Reason: $e');
      emit(ShowCompanyReviewsFailureState(
          errorMessage: 'Failed to Get Company Reviews, TRY AGAIN'));
    }
  }
}
