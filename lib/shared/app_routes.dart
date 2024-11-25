import 'package:flutter/material.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/module/list_movie/presentation/ui/pages/favorite_page.dart';
import 'package:movie_show/module/list_movie/presentation/ui/pages/search_page.dart';
import 'package:movie_show/module/movie_detail/movie_detail.dart';

class AppRoutes {
  static const String main = '/';
  static const String movieDetail = '/movie-detail';
  static const String favorite = '/favorite';
  static const String search = '/search';
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return _materialRoute(
          const MainPage(),
        );

      case movieDetail:
        return _materialRoute(
          const MovieDetailPage(),
        );
      case favorite:
        return _materialRoute(
          const FavoritePage(),
        );
      case search:
        return _materialRoute(
          const SearchPage(),
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
