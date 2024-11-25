part of 'favorite_bloc.dart';

@immutable
sealed class FavoriteEvent extends Equatable {}

class SetFavorite extends FavoriteEvent {
  final Movie movie;
  SetFavorite(this.movie);

  @override
  List<Object> get props => [movie];
}

class GetFavorite extends FavoriteEvent {
  GetFavorite();

  @override
  List<Object> get props => [];
}
