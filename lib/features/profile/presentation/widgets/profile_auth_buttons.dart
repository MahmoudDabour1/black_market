import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';

class ProfileAuthButtons extends StatelessWidget {
  final Color? signInColor;

  const ProfileAuthButtons({super.key, this.signInColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Row(
        children: [
          Expanded(
              child: AppCustomButton(
            textButton: AppString.login,
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
            backgroundColor: AppColors.fillColor,
            textColor: AppColors.primaryColor,
            radius: 16.r,
          )),
          horizontalSpace(16.w),
          Expanded(
            child: AppCustomButton(
              textButton: AppString.sign,
              onPressed: () {
                context.pushNamed(Routes.registerScreen);
              },
              backgroundColor: signInColor ?? AppColors.fillColor,
              radius: 16.r,
              textColor: signInColor == null
                  ? AppColors.primaryColor
                  : AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
