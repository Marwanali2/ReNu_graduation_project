import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:graduation_project/core/errors/failures.dart';
import 'package:graduation_project/core/networking/api_services.dart';
import 'package:graduation_project/features/antika/data/models/antika_model.dart';
import 'package:graduation_project/features/antika/data/models/categories_antika.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo.dart';

class AntikaRepoImpl implements AntikaRepo {
  final ApiServices apiServices;

  AntikaRepoImpl(this.apiServices);

  @override
  Future<Either<Failures, List<AntikaModel>>> fetchFavoriteAntika() async {
    try {
      var data = await apiServices.get(endpoint: '/show_antika');
      List<AntikaModel> showAntika = [];
      for (var item in data['data']) {
        showAntika.add(AntikaModel.fromJson(item));
      }
      return right(showAntika);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<AntikaModel>>> fetchShowAntika() async {
    try {
      var data = await apiServices.get(endpoint: '/show_antika');
      List<AntikaModel> showAntika = [];
      for (var item in data['data']) {
        showAntika.add(AntikaModel.fromJson(item));
      }
      return right(showAntika);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<CategoriesAntika>>> fetchCameraAntika() async {
    try {
      var data = await apiServices.get(endpoint: '/show_camera');
      List<CategoriesAntika> showcameraAntika = [];
      for (var item in data['data']) {
        showcameraAntika.add(CategoriesAntika.fromJson(item));
      }
      return right(showcameraAntika);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<CategoriesAntika>>> fetchCoinsAntika() async {
    try {
      var data = await apiServices.get(endpoint: '/show_coin');
      List<CategoriesAntika> showcoinAntika = [];
      for (var item in data['data']) {
        showcoinAntika.add(CategoriesAntika.fromJson(item));
      }
      return right(showcoinAntika);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<CategoriesAntika>>> fetchJewerlyAntika() async {
    try {
      var data = await apiServices.get(endpoint: '/show_jewelry');
      List<CategoriesAntika> showJewelryAntika = [];
      for (var item in data['data']) {
        showJewelryAntika.add(CategoriesAntika.fromJson(item));
      }
      return right(showJewelryAntika);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
