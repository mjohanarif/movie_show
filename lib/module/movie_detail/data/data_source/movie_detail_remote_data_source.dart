import 'package:dio/dio.dart';
import 'package:movie_show/module/movie_detail/movie_detail.dart';
import 'package:movie_show/shared/shared.dart';

abstract class MovieDetailRemoteDataSource {
  Future<MovieDetailModel> getMovieDetail(int id);
}

class MovieDetailRemoteDataSourceImpl implements MovieDetailRemoteDataSource {
  final Dio client;

  MovieDetailRemoteDataSourceImpl({required this.client});

  @override
  Future<MovieDetailModel> getMovieDetail(int id) async {
    try {
      final response = await client.get(
        'movie/$id?language=en-US',
      );

      return MovieDetailModel.fromJson(response.data);
    } on DioException catch (exception) {
      throw ServerException(
        message: exception.response != null
            ? 'Error ${exception.response!.statusCode}: ${exception.response!.data['status_message']}'
            : exception.message ?? 'Server Error',
      );
    }
  }
}
