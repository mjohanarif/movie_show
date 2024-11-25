import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:movie_show/module/movie_detail/movie_detail.dart';
import 'package:movie_show/shared/shared.dart';

class GetMovieDetailUsecase
    implements UseCaseFuture<Failure, MovieDetailModel, int> {
  final MovieDetailRepository repository;

  GetMovieDetailUsecase({required this.repository});

  @override
  FutureOr<Either<Failure, MovieDetailModel>> call(int param) {
    return repository.getMovieDetail(param);
  }
}
