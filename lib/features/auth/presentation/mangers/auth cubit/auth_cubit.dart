import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/networking/api_services.dart';
import 'package:graduation_project/features/auth/data/models/user_model.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final Dio _dio = Dio();
  UserModel userModel = UserModel();

  Future<void> registerUser({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String phone,
  }) async {
    emit(RegisterLoadingState());
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
          'password_confirmation': passwordConfirmation,
          'phone': phone,
        },
      );
      if (response.statusCode == 200) {
        if (response.data['message'] == 'success') {
          var responseBody = response.data;
          UserModel.fromJson(responseBody['deta']['user']);
          //  userToken = responseBody['deta']['user']['token'];
          debugPrint('*********userToken is $userToken *********');
          debugPrint('success response is $responseBody}:');
          emit(RegisterSuccessState());
        } else {
          debugPrint('failure response is $response}:');
          emit(
            RegisterFailureState(
              errorMessage: response.data['message'],
            ),
          );
        }
      }
    } catch (e) {
      debugPrint('Failed to register , The Reason : $e');
      emit(
        RegisterFailureState(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());
    try {
      Response response = await _dio.post('${ApiServices.baseUrl}/users/login',
          options: Options(
            headers: {
              'Accept': 'application/json',
              'Authorization': '',
            }, // التوكين ملوش لازمة انه يتبعت مع الطلب
          ),
          data: {
            'email': email,
            'password': password,
          });
      var responseBody = response.data;
      if (response.statusCode == 200 && responseBody['data'] != null) {
       userModel= UserModel.fromJson(responseBody['deta']['user']);
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
        emit(LoginFailureState(errorMessage: responseBody['message']?? 'Unknown error'));
      }
    } on DioError catch (dioError) {
      debugPrint('DioError: $dioError');
      emit(LoginFailureState(errorMessage: dioError.message));
    } catch (e) {
      debugPrint('Failed to login, Reason: $e');
      emit(LoginFailureState(errorMessage: e.toString()));
    }
  }

  Future<void> sendCode({
    required String token,
  }) async {
    emit(SendCodeLoadingState());
    try {
      Response response = await _dio.post(
        '${ApiServices.baseUrl}/users/sendcode',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': token,
          },
        ),
      );
      if (response.statusCode == 200) {
        var responseBody = response.data;
        if (responseBody['message'] == 'generate code') {
          debugPrint('success send code with response: $responseBody');
          emit(SendCodeSuccessState());
        } else {
          debugPrint('Failure response: $responseBody');
          emit(SendCodeFailureState(errorMessage: responseBody['message']));
        }
      }
    } on Exception catch (e) {
      debugPrint('Failed to send code , Reason is : $e');
      emit(LoginFailureState(errorMessage: e.toString()));
    }
  }

   Future<void> checkCode({
    required String token,
    required int code,
  }) async {
    emit(CheckCodeLoadingState());
    try {
      Response response = await _dio.post(
        '${ApiServices.baseUrl}/users/checkcode',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': token,
          },
        ),
         data: {
            'code': code,
          }
      );
      if (response.statusCode == 200) {
        var responseBody = response.data;
        if (responseBody['message'] == 'success') {
          debugPrint('success Check code with response: $responseBody');
          emit(CheckCodeSuccessState());
        } else {
          debugPrint('Failure response: $responseBody');
          emit(CheckCodeFailureState(errorMessage: responseBody['message']));
        }
      }
    } on Exception catch (e) {
      debugPrint('Failed to Check code , Reason is : $e');
      emit(CheckCodeFailureState(errorMessage: e.toString()));
    }
  }

}
