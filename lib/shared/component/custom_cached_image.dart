import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_show/shared/shared.dart';

class CustomCachedImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String? urlToImage;

  const CustomCachedImage({
    super.key,
    required this.urlToImage,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: urlToImage ?? Constant.imagePlaceholder,
      placeholder: (context, url) => Skeleton(
        width: width ?? 40.w,
        height: height ?? 40.h,
      ),
      height: height,
      width: width,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) =>
          Image.asset(Constant.imagePlaceholder),
    );
  }
}
