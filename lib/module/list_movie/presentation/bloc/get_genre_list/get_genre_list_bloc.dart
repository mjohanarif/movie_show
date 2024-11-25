import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:movie_show/module/list_movie/list_movie.dart';

part 'get_genre_list_event.dart';
part 'get_genre_list_state.dart';
part 'get_genre_list_bloc.freezed.dart';

class GetGenreListBloc extends Bloc<GetGenreListEvent, GetGenreListState> {
  GetGenreListUsecase getGenreListUsecase;
  GetGenreListBloc(this.getGenreListUsecase) : super(const _Initial()) {
    on<_GetGenreList>((event, emit) async {
      emit(const _Loading());

      final result = await getGenreListUsecase(null);

      result.fold(
        (l) => emit(_Error(l.message)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
