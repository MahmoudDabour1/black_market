import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';

class BanksButtonContainerWidget extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  final double? height;
  final double? width;

  const BanksButtonContainerWidget(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(
          icon,
          height: height ?? 20.h,
          width: width ?? 20.w,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
