import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

class GetUpcomingMovieListUsecase
    implements UseCaseFuture<Failure, ResponseListMovie, int> {
  final MovieListRepository repository;

  GetUpcomingMovieListUsecase({required this.repository});

  @override
  FutureOr<Either<Failure, ResponseListMovie>> call(int param) {
    return repository.getUpcomingMovieList(param);
  }
}
