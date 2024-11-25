import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/module/list_movie/presentation/bloc/favorite_bloc/favorite_bloc.dart';
import 'package:movie_show/module/list_movie/presentation/ui/widgets/movie_card.dart';
import 'package:movie_show/shared/shared.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.dark,
        title: const Text(
          'Favorite Movie',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, state) {
          if (state.movie.isNotEmpty) {
            return ListView.separated(
              padding: EdgeInsets.all(16.sp),
              itemBuilder: (context, index) =>
                  MovieCard(movie: state.movie[index]),
              separatorBuilder: (context, index) => AppSpacing.v16(),
              itemCount: state.movie.length,
            );
          }
          return const Center(
            child: Text('Empty Favorite Movie'),
          );
        },
      ),
    );
  }
}
