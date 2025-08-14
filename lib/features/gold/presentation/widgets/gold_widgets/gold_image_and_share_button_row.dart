import 'package:black_market/features/gold/data/models/gold_response_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/networking/api_constants.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/utils/spacing.dart';
import 'package:shimmer/shimmer.dart';


class GoldImageAndShareButtonRow extends StatelessWidget {
  final GoldResponseModel data;

  const GoldImageAndShareButtonRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 46.w,
          height: 30.h,
        ),
        CachedNetworkImage(
          height: 50.h,
          width: 50.w,
          imageUrl: "${ApiConstants.imagesBaseUrl}${data.icon}",
          fit: BoxFit.fill,
          imageBuilder: (context, imageProvider) => Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.fill,
              ),
            ),
          ),
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.grey.shade800,
            highlightColor: Colors.grey.shade700,
            child: Container(
              width: 50.w,
              height: 50.h,
              color: Colors.grey.shade800,
            ),
          ),
          progressIndicatorBuilder: (_, __, ___) => const SizedBox.shrink(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        horizontalSpace(16),
        Container(
          width: 30.w,
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            border: Border.all(
              width: 1.w,
              color: Colors.white30,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.shareIcon,
              color: Colors.white,
              height: 30.h,
              fit: BoxFit.fill,
              width: 30.w,
            ),
          ),
        ),
      ],
    );
  }
}
