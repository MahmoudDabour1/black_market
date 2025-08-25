import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/theming/app_styles.dart';

class HomeHeaderContainerWidget extends StatelessWidget {
  const HomeHeaderContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: AppColors.fillColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            20.0.r,
          ),
          bottomRight: Radius.circular(
            20.0.r,
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.hello,
                  style: AppStyles.font16whiteSemiBold,
                ),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColors.blackColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: AppColors.whiteColor,
                    size: 25.r,
                  ),
                )
              ],
            ),
          ),
          Text(
            AppString.blackMarket,
            style: AppStyles.font24WhiteBold.copyWith(
              color: AppColors.primaryColor,
              fontSize: 30.sp,
            ),
          ),
          Text(
            AppString.howMuch,
            style: AppStyles.font18PrimaryMedium.copyWith(
              color: AppColors.lightYellowColor,
            ),
          )
        ],
      ),
    );
  }
}
