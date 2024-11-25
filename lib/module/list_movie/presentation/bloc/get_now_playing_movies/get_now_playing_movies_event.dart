part of 'get_now_playing_movies_bloc.dart';

@freezed
class GetNowPlayingMoviesEvent with _$GetNowPlayingMoviesEvent {
  const factory GetNowPlayingMoviesEvent.started() = _Started;
  const factory GetNowPlayingMoviesEvent.getNowPlayingMovies(int page) =
      _GetNowPlayingMovies;
  const factory GetNowPlayingMoviesEvent.filterNowPlayingMovies(int id) =
      _FilterNowPlayingMovies;
  const factory GetNowPlayingMoviesEvent.unfilterNowPlayingMovies() =
      _UnfilterNowPlayingMovies;
}
