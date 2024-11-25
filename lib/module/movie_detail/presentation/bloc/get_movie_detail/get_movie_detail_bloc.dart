import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_show/module/movie_detail/movie_detail.dart';

part 'get_movie_detail_event.dart';
part 'get_movie_detail_state.dart';
part 'get_movie_detail_bloc.freezed.dart';

class GetMovieDetailBloc
    extends Bloc<GetMovieDetailEvent, GetMovieDetailState> {
  GetMovieDetailUsecase getMovieDetailUsecase;

  GetMovieDetailBloc(this.getMovieDetailUsecase) : super(const _Initial()) {
    on<_GetMovieDetail>((event, emit) async {
      emit(const _Loading());

      final result = await getMovieDetailUsecase(event.id);

      result.fold(
        (l) => emit(_Error(l.message)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
