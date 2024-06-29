import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/networking/api_services.dart';
import 'package:graduation_project/features/auth/data/models/user_model.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final Dio _dio = Dio();
  static UserModel userModel = UserModel();

  Future<void> registerUser({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String phone,
  }) async {
    emit(RegisterLoadingState());
    debugPrint(
        'name: $name, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, phone: $phone');
    try {
      Response response = await _dio.post(
        '${ApiServices.baseUrl}/users/register',
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
        data: {
          'name': name,
          'email': email,
          'password': password,
          'phone': phone,
          'password_confirmation': passwordConfirmation,
        },
      );
      var responseBody = response.data;
      if (response.statusCode == 200 && responseBody['message'] == 'success') {
        UserModel.fromJson(responseBody['deta']['user']);
        userToken = responseBody['deta']['user']['token'];
        debugPrint('*********userToken is $userToken *********');
        debugPrint('success response is $responseBody}:');
        emit(RegisterSuccessState());
      } else if (response.statusCode == 422) {
        debugPrint('failure response is ${responseBody['message']}:');
        emit(
          RegisterFailureState(
            errorMessage: response.data['message'],
          ),
        );
      }
    } on Exception catch (e) {
      debugPrint('Failed to register , The Reason : ${e.toString()}');
      emit(
        RegisterFailureState(
          errorMessage: 'Failed to register, TRY AGAIN',
        ),
      );
    }
  }

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());
    debugPrint('email: $email, password: $password');
    try {
      Response response = await _dio.post('${ApiServices.baseUrl}/users/login',
          options: Options(
            headers: {
              'Accept': 'application/json',
            }, // التوكين ملوش لازمة انه يتبعت مع الطلب
          ),
          data: {
            'email': email,
            'password': password,
          });
      var responseBody = response.data;
      if (response.statusCode == 200 && responseBody[0] != null) {
        userModel = UserModel.fromJson(responseBody[0]);
        userToken = responseBody[0]['token'];
        debugPrint('*********userToken is $userToken *********');
        debugPrint('success login with response: $responseBody');
        /*  CachedNetwork.insertToCache(
            key: 'token',
            value: responseBody['data']['token'],
          ).then((value) {
            userToken == UserDataCubit().userModel?.token;
          }); */
        emit(LoginSuccessState());
      } else {
        debugPrint('Failure response: $responseBody');
        emit(LoginFailureState(
            errorMessage: responseBody['message'] ?? 'Unknown error'));
      }
    } catch (e) {
      debugPrint('Failed to login, Reason: $e');
      emit(LoginFailureState(errorMessage: 'Failed to login, TRY AGAIN'));
    }
  }

  Future<void> editUser({
    required String name,
    required String oldPassword,
    required String password,
    required String passwordConfirmation,
  }) async {
    emit(EditUserLoadingState());
    debugPrint(
        'name: $name, oldPassword: $oldPassword, password: $password, passwordConfirmation: $passwordConfirmation');
    try {
      Response response =
          await _dio.post('${ApiServices.baseUrl}/users/edit_profile',
              options: Options(
                headers: {
                  'Accept': 'application/json',
                  'Authorization': 'Bearer ${AuthCubit.userModel.token}'
                },
              ),
              data: {
            'name': name,
            'oldpassword': oldPassword,
            'password': password,
            'password_confirmation': passwordConfirmation
          });
      var responseBody = response.data;
      if (response.statusCode == 200 && responseBody['message'] == 'updated') {
        debugPrint('Success Edit: $responseBody');
        emit(EditUserSuccessState());
      } else {
        debugPrint('Failure Edit: $responseBody');
        emit(EditUserFailureState(
            errorMessage: responseBody['message'] ?? 'Unknown error'));
      }
    } catch (e) {
      if (kDebugMode) {
        print('${AuthCubit.userModel.token}');
      }
      debugPrint('Failed to Edit, Reason: $e');
      emit(EditUserFailureState(errorMessage: 'Failed to Edit, TRY AGAIN'));
    }
  }
}
