part of 'get_movie_detail_bloc.dart';

@freezed
class GetMovieDetailState with _$GetMovieDetailState {
  const factory GetMovieDetailState.initial() = _Initial;
  const factory GetMovieDetailState.loading() = _Loading;
  const factory GetMovieDetailState.success(MovieDetailModel response) =
      _Success;
  const factory GetMovieDetailState.error(String message) = _Error;
}
