import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/core/theming/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class AppCustomBackButton extends StatelessWidget {
  const AppCustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Container(
        height: 45.h,
        width: 45.w,
        decoration: BoxDecoration(
          color: AppColors.fillColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Image.asset(
          AppAssets.arrowBackIcon,
          width: 30.w,
          height: 30.h,
        ),
      ),
    );
  }
}
