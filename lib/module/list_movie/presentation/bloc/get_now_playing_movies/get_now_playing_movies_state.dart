part of 'get_now_playing_movies_bloc.dart';

@freezed
class GetNowPlayingMoviesState with _$GetNowPlayingMoviesState {
  const factory GetNowPlayingMoviesState.initial() = _Initial;
  const factory GetNowPlayingMoviesState.loading() = _Loading;
  const factory GetNowPlayingMoviesState.success(ResponseListMovie response) =
      _Success;
  const factory GetNowPlayingMoviesState.error(String message) = _Error;
}
