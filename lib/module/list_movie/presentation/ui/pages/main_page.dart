import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/module/list_movie/presentation/ui/widgets/search_input.dart';
import 'package:movie_show/module/list_movie/presentation/ui/widgets/upcoming_tab.dart';
import 'package:movie_show/module/list_movie/presentation/ui/widgets/now_playing_tab.dart';
import 'package:movie_show/shared/shared.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            AppRoutes.favorite,
          );
        },
        child: const Icon(
          Icons.favorite,
          color: AppColors.primary,
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Column(
            children: [
              SearchInput(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.search,
                  );
                },
                readOnly: true,
                onChanged: (value) {},
              ),
              AppSpacing.v16(),
              TabBar(
                dividerColor: AppColors.secondary,
                unselectedLabelColor: Colors.grey.shade700,
                labelColor: AppColors.primary,
                indicatorColor: AppColors.primary,
                labelPadding: EdgeInsets.all(6.h),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Text('Now Playing'),
                  Text('Upcoming'),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    NowPlayingTab(),
                    UpcomingTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
