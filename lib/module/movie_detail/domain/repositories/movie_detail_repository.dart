import 'package:dartz/dartz.dart';
import 'package:movie_show/module/movie_detail/domain/entities/movie_detail.dart';
import 'package:movie_show/shared/shared.dart';

abstract class MovieDetailRepository {
  Future<Either<Failure, MovieDetailModel>> getMovieDetail(int id);
}
