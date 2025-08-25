import 'package:black_market/core/theming/app_string.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';

class HomePriceColumnWidget extends StatelessWidget {
  final String name;
  final String value;
  final Color? textColor;
  final TextStyle? fontStyle;
  final bool? isValueOnly;

  const HomePriceColumnWidget({
    super.key,
    this.textColor,
    required this.name,
    required this.value,
    this.fontStyle,
    this.isValueOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: fontStyle ??
              AppStyles.font14WhiteMedium.copyWith(
                color: AppColors.grayColor,
                fontWeight: FontWeightHelper.semiBold,
              ),
        ),
        Text(
          isValueOnly == true ? value : "${AppString.egp} $value",
          style: fontStyle ??
              AppStyles.font14WhiteMedium.copyWith(
                color: textColor ?? AppColors.blackColor,
                fontWeight: FontWeightHelper.semiBold,
              ),
        ),
      ],
    );
  }
}
