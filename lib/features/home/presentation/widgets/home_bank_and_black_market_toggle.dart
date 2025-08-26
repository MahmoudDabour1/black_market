import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/utils/spacing.dart';

class HomeBankAndBlackMarketToggle extends StatelessWidget {
  final bool isBankSelected;
  final ValueChanged<bool> onToggle;

  const HomeBankAndBlackMarketToggle({
    super.key,
    required this.isBankSelected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40.h,
        width: MediaQuery.sizeOf(context).width - 80.w,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: EdgeInsets.all(4.w),
        child: Row(
          children: [
            _buildToggleButton(
              title: AppString.souqSouda,
              isSelected: !isBankSelected,
              onTap: () => onToggle(false),
            ),
            horizontalSpace(8),
            _buildToggleButton(
              title: AppString.bankPrice,
              isSelected: isBankSelected,
              onTap: () => onToggle(true),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleButton({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? AppColors.blackColor : Colors.transparent,
            borderRadius: BorderRadius.circular(12.r),
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? AppColors.primaryColor : AppColors.blackColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
