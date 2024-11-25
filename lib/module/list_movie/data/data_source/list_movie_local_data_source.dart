import 'dart:convert';

import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

abstract class ListMovieLocalDataSource {
  Future<ResponseListMovie> getUpcomingMovies();
  Future<String> saveUpcomingMovies(ResponseListMovie movieList);
  Future<ResponseListMovie> getNowPlayingMovies();
  Future<String> saveNowPlaying(ResponseListMovie movieList);
  Future<bool> isGenreOpen();
  Future<List<Genre>> getGenreList();
  Future<String> saveGenreList(List<Genre> genreList);
  Future<ResponseListMovie> filterUpcomingMovie(int id);
  Future<ResponseListMovie> filterNowPlayingMovie(int id);
  Future<List<Movie>> favoriteMovie(Movie movie);
  Future<List<Movie>> getFavoriteMovie();
}

class ListMovieLocalDataSourceImpl implements ListMovieLocalDataSource {
  final CacheHandler cacheHandler;

  ListMovieLocalDataSourceImpl({required this.cacheHandler});

  @override
  Future<ResponseListMovie> getUpcomingMovies() async {
    try {
      final result = await cacheHandler.getCache(
        boxKey: Constant.upcomingKey,
      );

      if (result == null) {
        throw CacheException(message: "Can't get Upcoming Movies data");
      }

      return ResponseListMovie.fromJson(jsonDecode(result));
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }

  @override
  Future<String> saveUpcomingMovies(ResponseListMovie movieList) async {
    try {
      final result = await cacheHandler.setCache(
        boxKey: Constant.upcomingKey,
        value: jsonEncode(
          movieList.toJson(),
        ),
      );
      if (result == null) {
        throw CacheException(message: "Can't Save Upcoming Movies data");
      }
      return 'Success saving Upcoming Movies';
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }

  @override
  Future<ResponseListMovie> getNowPlayingMovies() async {
    try {
      final result = await cacheHandler.getCache(
        boxKey: Constant.nowPlayingKey,
      );

      if (result == null) {
        throw CacheException(message: "Can't get Now Playing Movies");
      }

      return ResponseListMovie.fromJson(jsonDecode(result));
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }

  @override
  Future<String> saveNowPlaying(ResponseListMovie movieList) async {
    try {
      final result = await cacheHandler.setCache(
        boxKey: Constant.nowPlayingKey,
        value: jsonEncode(
          movieList.toJson(),
        ),
      );
      if (result == null) {
        throw CacheException(message: "Can't Save Now Playing Movies");
      }
      return 'Success saving Now Playing Movies';
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }

  @override
  Future<List<Genre>> getGenreList() async {
    try {
      final result = await cacheHandler.getCache(
        boxKey: Constant.genreKey,
      );

      if (result == null) {
        throw CacheException(message: "Can't get Genre List");
      }

      final res = json.decode(result);
      return List<Genre>.from(res.map((e) => Genre.fromJson(e)));
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }

  @override
  Future<String> saveGenreList(List<Genre> movieList) async {
    try {
      final result = await cacheHandler.setCache(
        boxKey: Constant.genreKey,
        value: jsonEncode((movieList).map((e) => e.toJson()).toList()),
      );
      if (result == null) {
        throw CacheException(message: "Can't Save Genre List");
      }
      return 'Success saving Genre List';
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }

  @override
  Future<ResponseListMovie> filterUpcomingMovie(int id) async {
    try {
      final result = await cacheHandler.getCache(
        boxKey: Constant.upcomingKey,
      );

      if (result == null) {
        throw CacheException(message: "Can't get Upcoming Movies data");
      }

      var listMovie = ResponseListMovie.fromJson(jsonDecode(result))
          .results
          .where((element) => (element.genreIds.contains(id)))
          .toList();

      return ResponseListMovie.fromJson(jsonDecode(result)).copyWith(
        results: listMovie,
      );
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }

  @override
  Future<ResponseListMovie> filterNowPlayingMovie(int id) async {
    try {
      final result = await cacheHandler.getCache(
        boxKey: Constant.nowPlayingKey,
      );

      if (result == null) {
        throw CacheException(message: "Can't get Now Playing Movies data");
      }

      var listMovie = ResponseListMovie.fromJson(jsonDecode(result))
          .results
          .where((element) => (element.genreIds.contains(id)))
          .toList();

      return ResponseListMovie.fromJson(jsonDecode(result)).copyWith(
        results: listMovie,
      );
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }

  @override
  Future<bool> isGenreOpen() async {
    final result = cacheHandler.isBoxOpen(Constant.genreKey);

    return result;
  }

  @override
  Future<List<Movie>> favoriteMovie(Movie movie) async {
    try {
      List<Movie> results = [];
      final result = await cacheHandler.getCache(
        boxKey: Constant.favoriteKey,
      );

      if (result == null) {
        results.add(movie);
        final result = await cacheHandler.setCache(
          boxKey: Constant.favoriteKey,
          value: jsonEncode((results).map((e) => e.toJson()).toList()),
        );
        if (result == null) {
          throw CacheException(message: "Can't Save favorite List");
        }
        final resultList = await cacheHandler.getCache(
          boxKey: Constant.favoriteKey,
        );
        final res = json.decode(resultList);
        return List<Movie>.from(res.map((e) => Movie.fromJson(e)));
      }
      final res = json.decode(result);
      results = List<Movie>.from(res.map((e) => Movie.fromJson(e)));
      var indexMovie = results.indexWhere((e) => (e.id == movie.id));
      if (indexMovie == -1) {
        results.add(movie);
        final result = await cacheHandler.setCache(
          boxKey: Constant.favoriteKey,
          value: jsonEncode((results).map((e) => e.toJson()).toList()),
        );
        if (result == null) {
          throw CacheException(message: "Can't Save favorite List");
        }
      } else {
        results.removeAt(indexMovie);
        final result = await cacheHandler.setCache(
          boxKey: Constant.favoriteKey,
          value: jsonEncode((results).map((e) => e.toJson()).toList()),
        );
        if (result == null) {
          throw CacheException(message: "Can't Save favorite List");
        }
      }
      final resultList = await cacheHandler.getCache(
        boxKey: Constant.favoriteKey,
      );
      final resFavorite = json.decode(resultList);
      return List<Movie>.from(resFavorite.map((e) => Movie.fromJson(e)));
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }

  @override
  Future<List<Movie>> getFavoriteMovie() async {
    try {
      final result = await cacheHandler.getCache(
        boxKey: Constant.favoriteKey,
      );

      if (result == null) {
        return [];
      }

      final res = json.decode(result);
      return List<Movie>.from(res.map((e) => Movie.fromJson(e)));
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }
}
