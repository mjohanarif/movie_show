part of 'favorite_bloc.dart';

enum FavoriteStatus { initial, loading, success, failure }

class FavoriteState extends Equatable {
  final List<Movie> movie;
  final String? errorMessage;
  final FavoriteStatus status;

  const FavoriteState({
    required this.movie,
    this.errorMessage,
    required this.status,
  });

  List<int> get favoriteList {
    List<int> number = [];
    for (var e in movie) {
      number.add(e.id);
    }

    return number;
  }

  bool favoriteLists(int input) {
    for (var e in movie) {
      if (e.id == input) return true;
    }

    return false;
  }

  @override
  List<Object?> get props => [
        movie,
        status,
        errorMessage,
      ];

  FavoriteState copyWith({
    List<Movie>? movie,
    String? errorMessage,
    FavoriteStatus? status,
  }) {
    return FavoriteState(
      movie: movie ?? this.movie,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
