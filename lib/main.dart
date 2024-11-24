import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/injection.dart';
import 'package:movie_show/shared/shared.dart';

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
      child: MaterialApp(
        onGenerateRoute: AppRoutes.onGenerateRoutes,
        theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary,
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
