import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
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
        if (item.image != null)
          'image': await MultipartFile.fromFile(item.image!),
      });
      Response response = await dio.post(
        'https://api-service.cloud/recycle/public_html/api/dashbord/antika/store',
        data: formData,
      );
      if (response.statusCode == 201) {
        emit(StoreCubitSuccess());
      } else {
        emit(StoreCubitFailure( 'Failed to submit item'));
      }
    } catch (e) {
      emit(StoreCubitFailure(e.toString()));
    }
  }
}
