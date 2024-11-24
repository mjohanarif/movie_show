import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/shared/shared.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final Color? baseColor;
  final Color? highlightColor;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  const Skeleton({
    super.key,
    this.baseColor,
    this.highlightColor,
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 1500),
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade50,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: borderRadius ?? BorderRadius.circular(4.sp),
        ),
      ),
    );
  }
}
