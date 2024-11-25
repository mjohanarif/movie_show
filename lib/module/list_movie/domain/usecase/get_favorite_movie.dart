import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

class GetFavoriteMovieUsecase
    implements UseCaseFuture<Failure, List<Movie>, void> {
  final MovieListRepository repository;

  GetFavoriteMovieUsecase({required this.repository});

  @override
  FutureOr<Either<Failure, List<Movie>>> call(void param) {
    return repository.getFavoriteMovie();
  }
}
