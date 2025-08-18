
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class ArrangeNoteContainerWidget extends StatelessWidget {
  final String title;
  const ArrangeNoteContainerWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(32),
        Container(
          height: 80.h,
          decoration: BoxDecoration(
            color: AppColors.fillColor,
            borderRadius: BorderRadius.circular(10.0.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              children: [
                Image.asset(
                  AppAssets.noteIcon,
                  width: 25.w,
                  fit: BoxFit.fill,
                ),
                horizontalSpace(16),
                Expanded(
                  child: Text(
                    AppString.longPress,
                    style: AppStyles.font16grayRegular.copyWith(
                      color: AppColors.lightYellowColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        verticalSpace(32),
        Text(
          title,
          style: AppStyles.font18WhiteSemiBold,
        ),
        verticalSpace(16),
      ],
    );
  }
}
