import 'package:dartz/dartz.dart';
import 'package:movie_show/injection.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

class MovieListRepositoryImpl implements MovieListRepository {
  final ListMovieRemoteDataSource remoteDataSource;
  final ListMovieLocalDataSource localDataSource;

  MovieListRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, ResponseListMovie>> getNowPlayingMovieList(
      int page) async {
    try {
      ResponseListMovie result;
      if (await locator<NetworkInfo>().isConnected) {
        result = await remoteDataSource.getNowPlayingMovieList(page);
      } else {
        result = await localDataSource.getNowPlayingMovies();
      }

      localDataSource.saveNowPlaying(result);
      return Right(result);
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.message));
    }
  }

  @override
  Future<Either<Failure, ResponseListMovie>> getUpcomingMovieList(
      int page) async {
    try {
      ResponseListMovie result;
      if (await locator<NetworkInfo>().isConnected) {
        result = await remoteDataSource.getUpcomingMovieList(page);
      } else {
        result = await localDataSource.getUpcomingMovies();
      }

      localDataSource.saveUpcomingMovies(result);
      return Right(result);
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.message));
    }
  }
}
