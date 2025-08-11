import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';

class ForgetPasswordNoteContainer extends StatelessWidget {
  const ForgetPasswordNoteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 65.h,
      decoration: BoxDecoration(
        color: AppColors.fillColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Image.asset(
              AppAssets.noteIcon,
              height: 30.h,
              width: 30.w,
            ),
          ),
          Text(
            AppString.send,
            style: AppStyles.font14WhiteMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
