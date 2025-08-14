import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';

class GoldTapBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const GoldTapBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      decoration: BoxDecoration(
        color: AppColors.fillColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: TabBar(
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelPadding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 6.h),
        tabAlignment: TabAlignment.center,
        indicator: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16.r),
          shape: BoxShape.rectangle,
        ),
        labelColor: AppColors.blackColor,
        unselectedLabelColor: AppColors.whiteColor,
        labelStyle: AppStyles.font18WhiteSemiBold.copyWith(
          color: AppColors.blackColor,
          fontSize: 20.sp,
        ),
        unselectedLabelStyle: AppStyles.font18WhiteSemiBold,
        tabs: [
          Tab(text: AppString.gold),
          Tab(text: AppString.ingots),
          Tab(text: AppString.coins),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
