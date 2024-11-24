import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';

part 'get_upcoming_movies_event.dart';
part 'get_upcoming_movies_state.dart';
part 'get_upcoming_movies_bloc.freezed.dart';

class GetUpcomingMoviesBloc
    extends Bloc<GetUpcomingMoviesEvent, GetUpcomingMoviesState> {
  GetUpcomingMovieListUsecase getUpcomingMovieListUsecase;
  ResponseListMovie responseList = const ResponseListMovie(
    page: 0,
    totalPages: 0,
    results: [],
  );

  GetUpcomingMoviesBloc(this.getUpcomingMovieListUsecase)
      : super(const _Initial()) {
    on<_GetUpcomingMovies>((event, emit) async {
      if (responseList.results.isEmpty) emit(const _Loading());

      final response = await getUpcomingMovieListUsecase(event.page);

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
