part of 'get_upcoming_movies_bloc.dart';

@freezed
class GetUpcomingMoviesState with _$GetUpcomingMoviesState {
  const factory GetUpcomingMoviesState.initial() = _Initial;
  const factory GetUpcomingMoviesState.loading() = _Loading;
  const factory GetUpcomingMoviesState.success(ResponseListMovie response) =
      _Success;
  const factory GetUpcomingMoviesState.error(String message) = _Error;
}
