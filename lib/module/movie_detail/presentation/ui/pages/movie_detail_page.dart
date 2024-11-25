import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/module/movie_detail/movie_detail.dart';
import 'package:movie_show/shared/shared.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<GetMovieDetailBloc, GetMovieDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              error: (message) => Center(child: Text(message)),
              success: (response) {
                return Stack(
                  children: [
                    CustomCachedImage(
                      height: double.infinity,
                      width: double.infinity,
                      urlToImage:
                          '${Constant.baseImageUrl('500')}/${response.posterPath}',
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.background.withOpacity(0.9),
                            AppColors.background.withOpacity(0.6),
                          ],
                          begin: const Alignment(0, 0.3),
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    ListView(
                      padding: EdgeInsets.all(16.sp),
                      children: [
                        Row(
                          children: [
                            const BackButton(),
                            Expanded(
                              child: Text(
                                response.title,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.v24(),
                        CustomCachedImage(
                          height: 200.h,
                          urlToImage:
                              '${Constant.baseImageUrl('500')}/${response.backDrop}',
                        ),
                        AppSpacing.v8(),
                        Row(
                          children: [
                            SizedBox(
                              width: 70.w,
                              child: const Text(
                                'Duration',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(': ${response.runtime} minutes')
                          ],
                        ),
                        const AppSpacing(v: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 70.w,
                              child: const Text(
                                'Genre',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Text(': '),
                            Expanded(child: Text(response.genres.join(', ')))
                          ],
                        ),
                        const AppSpacing(v: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 70.w,
                              child: const Text(
                                'Rating',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Text(': '),
                            Expanded(
                                child: Text(response.voteAverage.toString()))
                          ],
                        ),
                        AppSpacing.v8(),
                        const Text(
                          "Overview",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AppSpacing.v8(),
                        Text(
                          response.overview,
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
