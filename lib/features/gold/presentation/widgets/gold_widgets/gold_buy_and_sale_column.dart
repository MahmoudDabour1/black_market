import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';

class GoldBuyAndSaleColumn extends StatelessWidget {
  final String title;
  final String price;

  const GoldBuyAndSaleColumn({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
        ),
        verticalSpace(6.h),
        Text(
          price,
          style: AppStyles.font14WhiteMedium,
        ),
      ],
    );
  }
}
