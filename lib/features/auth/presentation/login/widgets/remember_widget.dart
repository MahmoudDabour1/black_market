import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';

class RememberWidget extends StatefulWidget {
  const RememberWidget({super.key});

  @override
  State<RememberWidget> createState() => _RememberWidgetState();
}

class _RememberWidgetState extends State<RememberWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox.adaptive(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16.r,
            ),
          ),
          value: isChecked,
          activeColor: AppColors.primaryColor,
          checkColor: AppColors.blackColor,
          onChanged: (value) {
            isChecked = !isChecked;
            value = isChecked;
            setState(() {});
          },
        ),
        Text(
          AppString.remember,
          style: AppStyles.font16whiteMedium,
        ),
      ],
    );
  }
}
