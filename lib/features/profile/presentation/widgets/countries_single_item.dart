import 'package:black_market/features/profile/data/models/countries_response_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class CountriesSingleItem extends StatelessWidget {
  final CountriesResponseModel data;

  const CountriesSingleItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 16.h),
      child: Container(
        height: 65.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.fillColor,
        ),
        child: Row(
          children: [
            horizontalSpace(16),
            CachedNetworkImage(
                imageUrl: "${ApiConstants.imagesBaseUrl}${data.icon}",width: 50.h,fit: BoxFit.fill),
            horizontalSpace(16.w),
            Expanded(
              child: Text(
                data.name ?? "",
                style: AppStyles.font18WhiteSemiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
