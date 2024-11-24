import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';

part 'get_now_playing_movies_event.dart';
part 'get_now_playing_movies_state.dart';
part 'get_now_playing_movies_bloc.freezed.dart';

class GetNowPlayingMoviesBloc
    extends Bloc<GetNowPlayingMoviesEvent, GetNowPlayingMoviesState> {
  GetNowPlayingMovieListUsecase getNowPlayingMovieListUsecase;
  ResponseListMovie responseList = const ResponseListMovie(
    page: 0,
    totalPages: 0,
    results: [],
  );

  GetNowPlayingMoviesBloc(this.getNowPlayingMovieListUsecase)
      : super(const _Initial()) {
    on<_GetNowPlayingMovies>((event, emit) async {
      if (responseList.results.isEmpty) emit(const _Loading());

      final response = await getNowPlayingMovieListUsecase(event.page);

      response.fold(
        (l) => emit(_Error(l.message)),
        (r) {
          if (responseList.results.isEmpty) {
            responseList = r;
          } else {
            responseList.results.addAll(r.results);
            responseList = responseList.copyWith(page: r.page);
          }
          emit(_Success(responseList));
        },
      );
    });
  }
}
