part of 'get_upcoming_movies_bloc.dart';

@freezed
class GetUpcomingMoviesEvent with _$GetUpcomingMoviesEvent {
  const factory GetUpcomingMoviesEvent.started() = _Started;
  const factory GetUpcomingMoviesEvent.getUpcomingMovies(int page) =
      _GetUpcomingMovies;
}