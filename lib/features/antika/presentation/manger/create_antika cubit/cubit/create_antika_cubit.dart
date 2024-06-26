import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/create_antika.dart';

part 'create_antika_state.dart';

class CreateAntikaCubit extends Cubit<CreateAntikaState> {
  CreateAntikaCubit() : super(CreateAntikaInitial());

  final Dio _dio = Dio();
  Future<void> fetchDropdownItems() async {
    emit(CreateAntikaLoading());
    try {
      final response = await _dio.get(
          'https://api-service.cloud/recycle/public_html/api/dashbord/antika/create');
      if (response.statusCode == 200) {
        print(response.data);
        final data = response.data as Map<String, dynamic>;
        if (data != null && data['deta'] != null) {
          final items = (data['deta']['Categories'] as List)
              .map((item) => CreateAntika.fromJson(item))
              .toList();
          print(items);
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
