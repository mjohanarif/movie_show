import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

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

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(scrollListener);
  }

  void scrollListener() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= 100 && !(totalPage == newPage)) {
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
            if (response.results.isNotEmpty) {
              if (newPage < response.totalPages) {
                newPage += 1;
                totalPage = response.totalPages;
              }
              return ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                controller: _scrollController,
                children: [
                  ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomCachedImage(
                            urlToImage:
                                '${Constant.baseImageUrl("185")}${response.results[index].posterPath}',
                            height: 100.h,
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
                                Text(
                                  response.results[index].title,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const AppSpacing(v: 6),
                                Text(
                                  response.results[index].overview ?? '',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => AppSpacing.v16(),
                    itemCount: response.results.length,
                  ),
                  if (newPage < response.totalPages)
                    Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                ],
              );
            }
            return const Center(child: Text('No movie data'));
          },
        );
      },
    );
  }
}
