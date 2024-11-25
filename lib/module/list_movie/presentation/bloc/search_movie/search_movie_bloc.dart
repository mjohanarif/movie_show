import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';

part 'search_movie_event.dart';
part 'search_movie_state.dart';
part 'search_movie_bloc.freezed.dart';

class SearchMovieBloc extends Bloc<SearchMovieEvent, SearchMovieState> {
  SearchMovieUsecase searchMovieUsecase;

  SearchMovieBloc(
    this.searchMovieUsecase,
  ) : super(const _Initial()) {
    on<_SearchMovie>((event, emit) async {
      emit(const _Loading());

      final response = await searchMovieUsecase(event.query);

      response.fold(
        (l) => emit(_Error(l.message)),
        (r) => emit(_Success(r)),
      );
    });

    on<_InitialSearch>((event, emit) async {
      emit(const _Loading());

      emit(const _Initial());
    });
  }
}
