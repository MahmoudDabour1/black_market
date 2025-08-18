import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class AppCustomContainerWidget extends StatelessWidget {
  final Widget widget;

  const AppCustomContainerWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: AppColors.fillColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: widget,
      ),
    );
  }
}
