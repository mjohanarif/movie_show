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
    } on CacheException catch (exception) {
      return Left(CacheFailure(exception.message));
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
    } on CacheException catch (exception) {
      return Left(CacheFailure(exception.message));
    }
  }

  @override
  Future<Either<Failure, List<Genre>>> getGenreList() async {
    try {
      final List<Genre> result;
      if (await localDataSource.isGenreOpen()) {
        result = await localDataSource.getGenreList();
      } else {
        result = await remoteDataSource.getGenreList();
      }

      localDataSource.saveGenreList(result);
      return Right(result);
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.message));
    } on CacheException catch (exception) {
      return Left(CacheFailure(exception.message));
    }
  }

  @override
  Future<Either<Failure, ResponseListMovie>> filterNowPlayingMovie(
    int id,
  ) async {
    try {
      final result = await localDataSource.filterNowPlayingMovie(id);

      return Right(result);
    } on CacheException catch (exception) {
      return Left(CacheFailure(exception.message));
    }
  }

  @override
  Future<Either<Failure, ResponseListMovie>> filterUpcomingMovie(int id) async {
    try {
      final result = await localDataSource.filterUpcomingMovie(id);

      return Right(result);
    } on CacheException catch (exception) {
      return Left(CacheFailure(exception.message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> favoriteMovie(Movie movie) async {
    try {
      final result = await localDataSource.favoriteMovie(movie);

      return Right(result);
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getFavoriteMovie() async {
    try {
      final result = await localDataSource.getFavoriteMovie();

      return Right(result);
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.message));
    }
  }
}
