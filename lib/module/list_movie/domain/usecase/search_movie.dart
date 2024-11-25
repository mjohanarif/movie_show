import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

class SearchMovieUsecase
    implements UseCaseFuture<Failure, ResponseListMovie, String> {
  final MovieListRepository repository;

  SearchMovieUsecase({required this.repository});

  @override
  FutureOr<Either<Failure, ResponseListMovie>> call(String param) {
    return repository.searhMovie(param);
  }
}
