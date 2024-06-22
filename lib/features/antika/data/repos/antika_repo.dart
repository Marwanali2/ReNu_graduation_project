import 'package:dartz/dartz.dart';
import 'package:graduation_project/core/errors/failures.dart';
import 'package:graduation_project/features/antika/data/models/antika_model.dart';
import 'package:graduation_project/features/antika/data/models/categories_antika.dart';

abstract class AntikaRepo {
  Future<Either<Failures, List<AntikaModel>>> fetchShowAntika();
  Future<Either<Failures, List<AntikaModel>>> fetchFavoriteAntika();
  Future<Either<Failures, List<CategoriesAntika>>> fetchCameraAntika();
  Future<Either<Failures, List<CategoriesAntika>>> fetchCoinsAntika();
  Future<Either<Failures, List<CategoriesAntika>>> fetchJewerlyAntika();
    Future<Either<Failures, List<AntikaModel>>> fetchCategoriesDetails();

}
