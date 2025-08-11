import 'package:flutter/cupertino.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_string.dart';
import '../../../../../../core/theming/app_styles.dart';
import '../../../../../../core/utils/spacing.dart';

class OtpTextsWidget extends StatelessWidget {
  final String email;

  const OtpTextsWidget({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(64),
        Center(
          child: Text(
            AppString.enterCode,
            style: AppStyles.font18WhiteSemiBold,
          ),
        ),
        verticalSpace(16),
        Text(
          AppString.weSendCodeTo,
          style: AppStyles.font14WhiteLight.copyWith(
            color: AppColors.lightYellowColor,
          ),
        ),
        verticalSpace(16),
        Text(
          email,
          style: AppStyles.font14WhiteLight.copyWith(
            color: AppColors.lightYellowColor,
          ),
        ),
        verticalSpace(32),
      ],
    );
  }
}
