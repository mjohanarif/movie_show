import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/module/list_movie/presentation/bloc/favorite_bloc/favorite_bloc.dart';
import 'package:movie_show/module/movie_detail/movie_detail.dart';
import 'package:movie_show/shared/shared.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        context.read<GetMovieDetailBloc>().add(
              GetMovieDetailEvent.getMovieDetail(movie.id),
            );

        Navigator.pushNamed(context, AppRoutes.movieDetail);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCachedImage(
            urlToImage: '${Constant.baseImageUrl("185")}${movie.posterPath}',
            height: 110.h,
            width: 90.w,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(16.sp),
            ),
          ),
          AppSpacing.h16(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        movie.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    BlocBuilder<FavoriteBloc, FavoriteState>(
                      builder: (context, stateFavorite) {
                        return GestureDetector(
                          onTap: () {
                            context
                                .read<FavoriteBloc>()
                                .add(SetFavorite(movie));
                          },
                          child: Icon(
                            Icons.favorite,
                            color: stateFavorite.favoriteLists(movie.id)
                                ? AppColors.primary
                                : null,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const AppSpacing(v: 6),
                Text(
                  movie.overview ?? '',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
