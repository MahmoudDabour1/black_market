import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class ProfileContainerItem extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;

  const ProfileContainerItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 65.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.fillColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              children: [
                Image.asset(
                  icon,
                  fit: BoxFit.contain,
                  width: 25.h,
                ),
                horizontalSpace(32),
                Text(
                  title,
                  style: AppStyles.font18WhiteSemiBold,
                ),
                Spacer(),
                Image.asset(
                  AppAssets.arrowRightIcon,
                  fit: BoxFit.contain,
                  width: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
