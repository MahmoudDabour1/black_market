import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class AppCustomVerticalDivider extends StatelessWidget {
  final double? height;
  final Color? color;

  const AppCustomVerticalDivider({super.key, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 30.h,
      child: VerticalDivider(
        color: color ?? AppColors.whiteColor,
        thickness: 1.3,
        width: 1.3,
      ),
    );
  }
}
