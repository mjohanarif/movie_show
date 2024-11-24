import 'dart:convert';

import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

abstract class ListMovieLocalDataSource {
  Future<ResponseListMovie> getUpcomingMovies();
  Future<String> saveUpcomingMovies(ResponseListMovie movieList);
  Future<ResponseListMovie> getNowPlayingMovies();
  Future<String> saveNowPlaying(ResponseListMovie movieList);
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
      return 'Success saving Now Playinh Movies';
    } on CacheException catch (e) {
      throw CacheException(message: e.message);
    }
  }
}
