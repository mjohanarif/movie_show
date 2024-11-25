import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/module/list_movie/list_movie.dart';
import 'package:movie_show/shared/shared.dart';

class MovieGenreSection extends StatefulWidget {
  final List<Genre> response;
  final Function(int) onTap;

  const MovieGenreSection({
    super.key,
    required this.response,
    required this.onTap,
  });

  @override
  State<MovieGenreSection> createState() => _MovieGenreSectionState();
}

class _MovieGenreSectionState extends State<MovieGenreSection> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          widget.onTap(widget.response[index].id);
          selectedIndex = index;
          setState(() {});
        },
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
          ),
          height: 26.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selectedIndex == index ? AppColors.primary : null,
            border: Border.all(
                color:
                    selectedIndex == index ? AppColors.secondary : Colors.grey),
            borderRadius: BorderRadius.circular(8.sp),
          ),
          child: Text(widget.response[index].name),
        ),
      ),
      separatorBuilder: (context, index) => AppSpacing.h16(),
      itemCount: widget.response.length,
    );
  }
}
