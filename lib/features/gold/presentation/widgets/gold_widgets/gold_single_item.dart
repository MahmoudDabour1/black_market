import 'package:black_market/core/networking/api_constants.dart';
import 'package:black_market/core/theming/app_assets.dart';
import 'package:black_market/features/gold/data/models/gold_response_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import 'gold_price_row.dart';

class GoldSingleItem extends StatelessWidget {
  final GoldResponseModel data;

  const GoldSingleItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.fillColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: Colors.white10,
            width: 1.3,
          ),
        ),
        child: Column(
          children: [
            verticalSpace(16),
            Row(
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
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
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
            ),
            verticalSpace(8.h),
            Text(
              data.name ?? "غير معروف",
              style: AppStyles.font18PrimaryMedium.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            verticalSpace(8.h),
            GoldPriceRow(
              data: data,
            ),
          ],
        ));
  }
}
