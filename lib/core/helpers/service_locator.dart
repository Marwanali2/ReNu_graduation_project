import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:graduation_project/core/networking/api_services.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<AntikaRepoImpl>(
      AntikaRepoImpl(getIt.get<ApiServices>()));
}
