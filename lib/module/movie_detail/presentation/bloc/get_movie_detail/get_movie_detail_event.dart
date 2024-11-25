part of 'get_movie_detail_bloc.dart';

@freezed
class GetMovieDetailEvent with _$GetMovieDetailEvent {
  const factory GetMovieDetailEvent.started() = _Started;
  const factory GetMovieDetailEvent.getMovieDetail(int id) = _GetMovieDetail;
}
