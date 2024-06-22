// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';

// part 'clean_up_state.dart';

// class CleanUpCubit extends Cubit<CleanUpState> {
//   CleanUpCubit() : super(CleanUpInitial());
//   final Dio _dio = Dio();
//   Future<void> sendUserLocation({
//     required String userLat,
//     required String userLong,
//   }) async {
//     emit(SendRequestLoadingState());
//     debugPrint('userLat: $userLat, userLong: $userLong');
//     try {
//       Response response = await _dio.post(
//           'https://api-service.cloud/recycle/public_html/api/users/cleanup/Userlocation',
//           options: Options(
//             headers: {
//               'Accept': 'application/json',
//               'Authorization': 'Bearer ${AuthCubit.userModel.token}'
//             },
//           ),
//           data: {
//             'lat': userLat,
//             'long': userLong,
//           });
//       var responseBody = response.data;
//       if (response.statusCode == 200) {
//         debugPrint('Success Sending User Location with lat $userLat and long $userLong : $responseBody');
//         emit(SendRequestSuccessState());
//       } else {
//         debugPrint('Failure Sending User Location: $responseBody');
//         emit(SendRequestFailureState(
//             errorMessage: responseBody['message'] ?? 'Unknown error'));
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print('${AuthCubit.userModel.token}');
//       }
//       debugPrint('Failed to send user location request with lat $userLat and long $userLong, Reason: $e');
//       emit(SendRequestFailureState(
//           errorMessage: 'Failed to Sending Your Location, TRY AGAIN'));
//     }
//   }

//   Future<void> showRequestResult() async {
//     emit(ShowRequestResultLoadingState());
//     try {
//       Response response = await _dio.get(
//         'https://api-service.cloud/recycle/public_html/api/users/recycle/showtotalresult',
//         options: Options(
//           headers: {
//             'Accept': 'application/json',
//             'Authorization': 'Bearer ${AuthCubit.userModel.token}'
//           },
//         ),
//       );
//       var responseBody = response.data;
//       if (response.statusCode == 200) {
//         RecyclingCubit.totalPoints = responseBody['deta']['points'];
//         RecyclingCubit.pointsOfBlastic =
//             responseBody['deta']['pointsofblastic'];
//         RecyclingCubit.pointsOfIron = responseBody['deta']['pointsofiron'];
//         RecyclingCubit.pointsOfGlass = responseBody['deta']['pointsofglasses'];
//         debugPrint('Success show request result : $responseBody');

//         emit(
//           ShowRequestResultSuccessState(),
//         );
//       } else {
//         debugPrint('Failure show request result: $responseBody');
//         emit(ShowRequestResultFailureState(
//             errorMessage: responseBody['message'] ?? 'Unknown error'));
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print('${AuthCubit.userModel.token}');
//       }
//       debugPrint('Failed to show request result, Reason: $e');
//       emit(ShowRequestResultFailureState(
//           errorMessage: 'Failed to show request result, TRY AGAIN'));
//     }
//   }
// }
