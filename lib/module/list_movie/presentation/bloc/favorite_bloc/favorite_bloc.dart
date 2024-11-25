import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteMovieUsecase favoriteMovieUsecase;
  GetFavoriteMovieUsecase getFavoriteMovieUsecase;

  FavoriteBloc(this.favoriteMovieUsecase, this.getFavoriteMovieUsecase)
      : super(const FavoriteState(movie: [], status: FavoriteStatus.initial)) {
    on<SetFavorite>((event, emit) async {
      final result = await favoriteMovieUsecase(event.movie);

      result.fold(
        (l) => emit(state.copyWith(errorMessage: l.message)),
        (r) => emit(state.copyWith(movie: r, status: FavoriteStatus.success)),
      );
    });

    on<GetFavorite>((event, emit) async {
      final result = await getFavoriteMovieUsecase(null);
      result.fold(
        (l) => emit(state.copyWith(errorMessage: l.message)),
        (r) => emit(state.copyWith(movie: r, status: FavoriteStatus.success)),
      );
    });
  }
}
