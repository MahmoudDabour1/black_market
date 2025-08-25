import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';

class IngotsDetailsRow extends StatelessWidget {
  final String title;
  final String price;
  final Color? color;
  final double? fontSize;

  const IngotsDetailsRow({
    super.key,
    required this.title,
    required this.price,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: AppStyles.font18WhiteSemiBold.copyWith(
                color: color,
                fontSize: fontSize,
              ),
            ),
          ),
          Text(
            "$price ${AppString.pound}",
            style: AppStyles.font18WhiteSemiBold.copyWith(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
