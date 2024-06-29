import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/core/networking/api_services.dart';
import 'package:graduation_project/features/antika/data/models/store_new_antika.dart';

part 'store_state.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit() : super(StoreCubitInitial());

  final Dio dio = Dio();

  Future<void> submitSellItem(StoreNewAntika item) async {
    emit(StoreCubitLoading());
    try {
      FormData formData = FormData.fromMap({
        'name': item.name,
        'desc': item.desc,
        'category_name': item.categoryName,
        'created_at': item.createdAt.toIso8601String(),
        'updatedd_at': item.updatedAt.toIso8601String(),
        'status': item.status,
        'image': await MultipartFile.fromFile(item.image),
      });
      Response response = await dio.post(
        '${ApiServices.baseUrl}/dashbord/antika/store',
        data: formData,
      );
      if (response.statusCode == 201) {
        emit(StoreCubitSuccess());
      } else {
        // ignore: prefer_const_constructors
        emit(StoreCubitFailure('Failed to submit item'));
      }
    } catch (e) {
      emit(StoreCubitFailure(e.toString()));
    }
  }
}
