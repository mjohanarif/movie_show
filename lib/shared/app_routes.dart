import 'package:flutter/material.dart';
import 'package:movie_show/main.dart';

class AppRoutes {
  static const String main = '/';
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return _materialRoute(
          const MainPage(),
        );

      default:
        return _materialRoute(
          const MainPage(),
        );
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => view,
    );
  }
}
