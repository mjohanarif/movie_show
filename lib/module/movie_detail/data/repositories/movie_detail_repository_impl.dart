import 'package:dartz/dartz.dart';
import 'package:movie_show/module/movie_detail/movie_detail.dart';
import 'package:movie_show/shared/shared.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieDetailRemoteDataSource remoteDataSource;

  MovieDetailRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, MovieDetailModel>> getMovieDetail(int id) async {
    try {
      final result = await remoteDataSource.getMovieDetail(id);

      return Right(result);
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.message));
    } on CacheException catch (exception) {
      return Left(CacheFailure(exception.message));
    }
  }
}
