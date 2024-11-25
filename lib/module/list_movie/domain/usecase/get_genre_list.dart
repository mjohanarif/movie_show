import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

class GetGenreListUsecase implements UseCaseFuture<Failure, List<Genre>, void> {
  final MovieListRepository repository;

  GetGenreListUsecase({required this.repository});

  @override
  FutureOr<Either<Failure, List<Genre>>> call(void param) {
    return repository.getGenreList();
  }
}
