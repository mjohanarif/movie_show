import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/module/list_movie/presentation/bloc/search_movie/search_movie_bloc.dart';
import 'package:movie_show/module/list_movie/presentation/ui/widgets/movie_card.dart';
import 'package:movie_show/module/list_movie/presentation/ui/widgets/search_input.dart';
import 'package:movie_show/shared/shared.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                BackButton(
                  onPressed: () {
                    context.read<SearchMovieBloc>().add(
                          const SearchMovieEvent.initialSearch(),
                        );
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: SearchInput(
                    onChanged: (value) {
                      context.read<SearchMovieBloc>().add(
                            SearchMovieEvent.searchMovie(value),
                          );
                    },
                    controller: TextEditingController(),
                  ),
                ),
                AppSpacing.h16(),
              ],
            ),
            Expanded(
              child: BlocBuilder<SearchMovieBloc, SearchMovieState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: Text('No Movie found'),
                    ),
                    error: (message) => Center(
                      child: Text(message),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    success: (response) {
                      if (response.results.isNotEmpty) {
                        return ListView.separated(
                          padding: EdgeInsets.all(16.sp),
                          itemBuilder: (context, index) =>
                              MovieCard(movie: response.results[index]),
                          separatorBuilder: (context, index) =>
                              AppSpacing.v16(),
                          itemCount: response.results.length,
                        );
                      }
                      return const Center(
                        child: Text('No Movie found'),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
