import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';
import 'package:path_provider/path_provider.dart';

import 'module/movie_detail/movie_detail.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  locator
    // repository
    ..registerLazySingleton<MovieListRepository>(
      () => MovieListRepositoryImpl(
        remoteDataSource: locator(),
        localDataSource: locator(),
      ),
    )
    ..registerLazySingleton<MovieDetailRepository>(
      () => MovieDetailRepositoryImpl(
        remoteDataSource: locator(),
      ),
    )

    // usecase
    ..registerLazySingleton(
      () => GetUpcomingMovieListUsecase(
        repository: locator(),
      ),
    )
    ..registerLazySingleton(
      () => GetNowPlayingMovieListUsecase(
        repository: locator(),
      ),
    )
    ..registerLazySingleton(
      () => GetGenreListUsecase(
        repository: locator(),
      ),
    )
    ..registerLazySingleton(
      () => FilterUpcomingMovieUsecase(
        repository: locator(),
      ),
    )
    ..registerLazySingleton(
      () => FilterNowPlayingMovieUsecase(
        repository: locator(),
      ),
    )
    ..registerLazySingleton(
      () => GetMovieDetailUsecase(
        repository: locator(),
      ),
    )

    // data source
    ..registerLazySingleton<ListMovieRemoteDataSource>(
      () => ListMovieRemoteDataSourceImpl(
        client: locator(),
      ),
    )
    ..registerLazySingleton<ListMovieLocalDataSource>(
      () => ListMovieLocalDataSourceImpl(
        cacheHandler: locator(),
      ),
    )
    ..registerLazySingleton<MovieDetailRemoteDataSource>(
      () => MovieDetailRemoteDataSourceImpl(
        client: locator(),
      ),
    )

    // BLOC
    ..registerFactory(
      () => GetUpcomingMoviesBloc(
        locator(),
        locator(),
      ),
    )
    ..registerFactory(
      () => GetNowPlayingMoviesBloc(
        locator(),
        locator(),
      ),
    )
    ..registerFactory(
      () => GetGenreListBloc(
        locator(),
      ),
    )
    ..registerFactory(
      () => GetMovieDetailBloc(
        locator(),
      ),
    )

    // external
    ..registerLazySingleton(
      () => Dio()
        ..options = BaseOptions(
          baseUrl: Constant.baseUrl,
          headers: {
            'Authorization': 'Bearer ${Constant.assetToken}',
            'accept': 'application/json',
          },
        )
        ..interceptors.addAll(
          [
            LogInterceptor(
              requestBody: true,
              responseBody: true,
            ),
          ],
        ),
    )
    ..registerLazySingleton(InternetConnectionChecker.new)
    ..registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(
        locator(),
      ),
    )
    ..registerLazySingleton(
      () => CacheHandler(
        cache: locator(),
      ),
    )
    ..registerLazySingleton<HiveInterface>(
      () => Hive,
    );
  if (!kIsWeb) {
    final appDocDir = await getApplicationDocumentsDirectory();
    Hive.init('${appDocDir.path}/db');
  }
}
