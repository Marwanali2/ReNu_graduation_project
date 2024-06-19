import 'package:dartz/dartz.dart';
import 'package:graduation_project/core/errors/failures.dart';
import 'package:graduation_project/features/antika/data/models/Antika_model.dart';

abstract class AntikaRepo{

Future<Either<Failures,List<AntikaModel>>> fetchShowAntika();
Future<Either<Failures,List<AntikaModel>>> fetchFavoriteAntika();
Future<Either<Failures,List<AntikaModel>>> fetchCameraAntika();
Future<Either<Failures,List<AntikaModel>>> fetchCoinsAntika();
Future<Either<Failures,List<AntikaModel>>> fetchJewerlyAntika();

}