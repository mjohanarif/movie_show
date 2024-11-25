import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

class FavoriteMovieUsecase
    implements UseCaseFuture<Failure, List<Movie>, Movie> {
  final MovieListRepository repository;

  FavoriteMovieUsecase({required this.repository});

  @override
  FutureOr<Either<Failure, List<Movie>>> call(Movie param) {
    return repository.favoriteMovie(param);
  }
}
