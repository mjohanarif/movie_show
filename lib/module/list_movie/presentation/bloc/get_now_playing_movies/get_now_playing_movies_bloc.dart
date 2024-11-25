import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';

part 'get_now_playing_movies_event.dart';
part 'get_now_playing_movies_state.dart';
part 'get_now_playing_movies_bloc.freezed.dart';

class GetNowPlayingMoviesBloc
    extends Bloc<GetNowPlayingMoviesEvent, GetNowPlayingMoviesState> {
  GetNowPlayingMovieListUsecase getNowPlayingMovieListUsecase;
  FilterNowPlayingMovieUsecase filterNowPlayingMovieUsecase;
  ResponseListMovie responseList = const ResponseListMovie(
    page: 0,
    totalPages: 0,
    results: [],
  );

  GetNowPlayingMoviesBloc(
    this.getNowPlayingMovieListUsecase,
    this.filterNowPlayingMovieUsecase,
  ) : super(const _Initial()) {
    on<_GetNowPlayingMovies>((event, emit) async {
      if (responseList.results.isEmpty) {
        emit(const _Loading());
      } else {
        emit(_Success(responseList.copyWith(isLoading: true)));
      }

      final response = await getNowPlayingMovieListUsecase(event.page);

      response.fold(
        (l) => emit(_Error(l.message)),
        (r) {
          if (responseList.results.isEmpty) {
            responseList = r.copyWith(isFiltered: false);
          } else {
            responseList.results.addAll(r.results);
            responseList = responseList.copyWith(
              page: r.page,
              isLoading: false,
              isFiltered: false,
            );
          }
          emit(_Success(responseList));
        },
      );
    });

    on<_FilterNowPlayingMovies>((event, emit) async {
      emit(const _Loading());

      final response = await filterNowPlayingMovieUsecase(event.id);

      response.fold(
        (l) => emit(_Error(l.message)),
        (r) => emit(_Success(r.copyWith(
          isLoading: false,
          isFiltered: true,
        ))),
      );
    });

    on<_UnfilterNowPlayingMovies>((event, emit) async {
      emit(_Success(responseList.copyWith(
        isLoading: false,
        isFiltered: false,
      )));
    });
  }
}
