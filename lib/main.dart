import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/injection.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

import 'module/movie_detail/movie_detail.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();

  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(
      details.exceptionAsString(),
      error: details.exceptionAsString(),
      stackTrace: details.stack,
      name: 'ERROR',
    );
  };
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 820),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => locator<GetUpcomingMoviesBloc>()
              ..add(const GetUpcomingMoviesEvent.getUpcomingMovies(1)),
            lazy: false,
          ),
          BlocProvider(
            create: (context) => locator<GetNowPlayingMoviesBloc>()
              ..add(const GetNowPlayingMoviesEvent.getNowPlayingMovies(1)),
          ),
          BlocProvider(
            create: (context) => locator<GetGenreListBloc>()
              ..add(const GetGenreListEvent.getGenreList()),
            lazy: false,
          ),
          BlocProvider(
            create: (context) => locator<GetMovieDetailBloc>(),
          ),
        ],
        child: MaterialApp(
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          theme: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
