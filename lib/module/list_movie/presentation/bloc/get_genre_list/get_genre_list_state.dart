part of 'get_genre_list_bloc.dart';

@freezed
class GetGenreListState with _$GetGenreListState {
  const factory GetGenreListState.initial() = _Initial;
  const factory GetGenreListState.loading() = _Loading;
  const factory GetGenreListState.success(List<Genre> response) = _Success;
  const factory GetGenreListState.error(String message) = _Error;
}
