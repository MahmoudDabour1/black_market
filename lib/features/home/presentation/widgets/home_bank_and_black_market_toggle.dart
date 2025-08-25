import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/utils/spacing.dart';

class HomeBankAndBlackMarketToggle extends StatelessWidget {
  final bool isBankSelected;
  final ValueChanged<bool> onToggle;
  const HomeBankAndBlackMarketToggle(
      {super.key, required this.isBankSelected, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40.h,
        width: MediaQuery.sizeOf(context).width - 80,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: EdgeInsets.all(4.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => onToggle(false),
                child: Container(
                  decoration: BoxDecoration(
                    color: !isBankSelected
                        ? AppColors.blackColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: Expanded(
                      child: Text(
                        AppString.souqSouda,
                        style: TextStyle(
                          color: !isBankSelected
                              ? AppColors.primaryColor
                              : AppColors.blackColor,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            horizontalSpace(8),
            Expanded(
              child: GestureDetector(
                onTap: () => onToggle(true),
                child: Container(
                  decoration: BoxDecoration(
                    color: isBankSelected
                        ? AppColors.blackColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: Expanded(
                      child: Text(
                        AppString.bankPrice,
                        style: TextStyle(
                          color: isBankSelected
                              ? AppColors.primaryColor
                              : AppColors.blackColor,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
