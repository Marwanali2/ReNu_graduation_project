import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:graduation_project/core/networking/api_services.dart';
import 'package:graduation_project/features/antika/data/models/create_antika.dart';

part 'create_antika_state.dart';

class CreateAntikaCubit extends Cubit<CreateAntikaState> {
  CreateAntikaCubit() : super(CreateAntikaInitial());

  final Dio _dio = Dio();
  Future<void> fetchDropdownItems() async {
    emit(CreateAntikaLoading());
    try {
      final response =
          await _dio.get('${ApiServices.baseUrl}/dashbord/antika/create');
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(response.data);
        }
        final data = response.data as Map<String, dynamic>;
        if (data['deta'] != null) {
          final items = (data['deta']['Categories'] as List)
              .map((item) => CreateAntika.fromJson(item))
              .toList();
          if (kDebugMode) {
            print(items);
          }
          emit(CreateAntikaSuccess(items));
        } else {
          emit(const CreateAntikaFailure('Data is null or not a list'));
        }
      } else {
        emit(CreateAntikaFailure('${response.statusCode}'));
      }
    } catch (e) {
      emit(CreateAntikaFailure(e.toString()));
    }
  }
}
