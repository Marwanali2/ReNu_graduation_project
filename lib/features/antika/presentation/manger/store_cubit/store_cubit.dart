import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:graduation_project/features/antika/data/models/store_antika.dart';

part 'store_state.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit(this.dio) : super(StoreCubitInitial());
    final Dio dio;
Future<void> submitSellItem(StoreAntika item) async {
    emit(StoreCubitLoading());
    try {
      final response = await dio.post(
        'https://api-service.cloud/recycle/public_html/api/dashbord/antika/store',
        data: item.toJson(),
      );
      emit(StoreCubitSuccess());
    } catch (e) {
      emit(StoreCubitFailure(e.toString()));
    }
  }
}
