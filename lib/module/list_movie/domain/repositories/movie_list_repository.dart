import 'package:dartz/dartz.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

abstract class MovieListRepository {
  Future<Either<Failure, ResponseListMovie>> getUpcomingMovieList(int page);
  Future<Either<Failure, ResponseListMovie>> getNowPlayingMovieList(int page);
}
