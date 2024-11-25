import 'package:dio/dio.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

abstract class ListMovieRemoteDataSource {
  Future<ResponseListMovie> getUpcomingMovieList(int page);
  Future<ResponseListMovie> getNowPlayingMovieList(int page);
  Future<List<Genre>> getGenreList();
}

class ListMovieRemoteDataSourceImpl implements ListMovieRemoteDataSource {
  final Dio client;

  ListMovieRemoteDataSourceImpl({required this.client});

  @override
  Future<ResponseListMovie> getUpcomingMovieList(int page) async {
    try {
      final response =
          await client.get('movie/upcoming?&language=en-US&page=$page');

      return ResponseListMovie.fromJson(response.data);
    } on DioException catch (exception) {
      throw ServerException(
        message: exception.response != null
            ? 'Error ${exception.response!.statusCode}: ${exception.response!.data['status_message']}'
            : exception.message ?? 'Server Error',
      );
    }
  }

  @override
  Future<ResponseListMovie> getNowPlayingMovieList(int page) async {
    try {
      final response =
          await client.get('movie/now_playing?&language=en-US&page=$page');

      return ResponseListMovie.fromJson(response.data);
    } on DioException catch (exception) {
      throw ServerException(
        message: exception.response != null
            ? 'Error ${exception.response!.statusCode}: ${exception.response!.data['status_message']}'
            : exception.message ?? 'Server Error',
      );
    }
  }

  @override
  Future<List<Genre>> getGenreList() async {
    try {
      final response = await client.get('genre/movie/list?language=en');

      final result = List<Map<String, dynamic>>.from(
        response.data['genres'],
      );

      return result.map((e) => Genre.fromJson(e)).toList();
    } on DioException catch (exception) {
      throw ServerException(
        message: exception.response != null
            ? 'Error ${exception.response!.statusCode}: ${exception.response!.data['status_message']}'
            : exception.message ?? 'Server Error',
      );
    }
  }
}
