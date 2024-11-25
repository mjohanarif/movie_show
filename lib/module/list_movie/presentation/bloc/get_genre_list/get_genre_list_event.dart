part of 'get_genre_list_bloc.dart';

@freezed
class GetGenreListEvent with _$GetGenreListEvent {
  const factory GetGenreListEvent.started() = _Started;
  const factory GetGenreListEvent.getGenreList() = _GetGenreList;
}
