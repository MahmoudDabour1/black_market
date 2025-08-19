import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/utils/spacing.dart';

class HomePriceColumnWidget extends StatelessWidget {
  final String name;
  final String value;
  final Color? textColor;
  const HomePriceColumnWidget({super.key, this.textColor, required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: AppStyles.font14WhiteMedium.copyWith(
            color: AppColors.grayColor,
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        verticalSpace(8),
        Text(
          value,
          style: AppStyles.font14WhiteMedium.copyWith(
            color: textColor??AppColors.blackColor,
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
      ],
    );
  }
}
