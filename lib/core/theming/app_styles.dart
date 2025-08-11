import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'font_weight_helper.dart';

class AppStyles {
  static TextStyle font16grayRegular = TextStyle(
    fontSize: 16.sp,
    color: AppColors.grayColor,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16whiteMedium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font16GrayLight = TextStyle(
    fontSize: 16.sp,
    color: AppColors.grayColor,
    fontWeight: FontWeightHelper.light,
  );static TextStyle font14WhiteMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.medium,
  );static TextStyle font14WhiteLight = TextStyle(
    fontSize: 14.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.light,
  );
  static TextStyle font24WhiteBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font18WhiteSemiBold = TextStyle(
    fontSize: 18.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.semiBold,
  );static TextStyle font18PrimaryMedium = TextStyle(
    fontSize: 18.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.medium,
  );static TextStyle font18PrimaryExtraBold = TextStyle(
    fontSize: 22.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.extraBold,
  );
}
