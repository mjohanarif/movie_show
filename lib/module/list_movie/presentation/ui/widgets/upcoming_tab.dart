import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/module/list_movie/presentation/ui/widgets/movie_card.dart';
import 'package:movie_show/shared/shared.dart';

import 'movie_genre_section.dart';

class UpcomingTab extends StatefulWidget {
  const UpcomingTab({
    super.key,
  });

  @override
  State<UpcomingTab> createState() => _UpcomingTabState();
}

class _UpcomingTabState extends State<UpcomingTab> {
  final _scrollController = ScrollController();
  final Debouncer _debouncer = Debouncer();
  int newPage = 1;
  int? totalPage;

  bool isLoading = false;
  bool isFiltered = false;

  @override
  void initState() {
    super.initState();
    context
        .read<GetUpcomingMoviesBloc>()
        .add(const GetUpcomingMoviesEvent.unfilterUpcomingMovies());
    _scrollController.addListener(scrollListener);
  }

  void scrollListener() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= 100 &&
        !(totalPage == newPage) &&
        !isFiltered) {
      _debouncer.run(() {
        context
            .read<GetUpcomingMoviesBloc>()
            .add(GetUpcomingMoviesEvent.getUpcomingMovies(newPage));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUpcomingMoviesBloc, GetUpcomingMoviesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (response) {
            isFiltered = response.isFiltered ?? false;
            if (newPage < response.totalPages && response.results.isNotEmpty) {
              newPage += 1;
              totalPage = response.totalPages;
            }
            return SingleChildScrollView(
              controller: _scrollController,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 26.h,
                    child: BlocBuilder<GetGenreListBloc, GetGenreListState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Skeleton(
                              width: 60.w,
                              borderRadius: BorderRadius.circular(8.sp),
                            ),
                            separatorBuilder: (context, index) =>
                                AppSpacing.h16(),
                            itemCount: 6,
                          ),
                          success: (response) => MovieGenreSection(
                            onTap: (index) {
                              context.read<GetUpcomingMoviesBloc>().add(
                                  GetUpcomingMoviesEvent.filterUpcomingMovies(
                                      index));
                            },
                            response: response,
                          ),
                        );
                      },
                    ),
                  ),
                  if (response.results.isNotEmpty) ...[
                    ListView.separated(
                      padding: EdgeInsets.only(top: 16.h),
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return MovieCard(movie: response.results[index]);
                      },
                      separatorBuilder: (context, index) => AppSpacing.v16(),
                      itemCount: response.results.length,
                    ),
                    if (newPage < response.totalPages &&
                        (response.isLoading ?? false))
                      Padding(
                        padding: EdgeInsets.only(top: 16.h),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                  ] else
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 150.h),
                        child: const Text('No movie data'),
                      ),
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}