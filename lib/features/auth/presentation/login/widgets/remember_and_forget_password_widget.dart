import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/features/auth/presentation/login/widgets/remember_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';

class RememberAndForgetPasswordWidget extends StatelessWidget {
  const RememberAndForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RememberWidget(),
            TextButton(
              onPressed: () {
                context.pushNamed(Routes.forgetPasswordScreen);
              },
              child: Text(
                AppString.forgetPassword,
                style: AppStyles.font18PrimaryMedium,
              ),
            ),
          ],
        ),
        verticalSpace(32),
      ],
    );
  }
}
