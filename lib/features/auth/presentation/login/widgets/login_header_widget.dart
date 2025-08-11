import 'package:black_market/core/widgets/app_custom_back_button.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppCustomBackButton(),
        verticalSpace(64),
        Center(
          child: Text(
            AppString.loginForAccount,
            textAlign: TextAlign.center,
            style: AppStyles.font24WhiteBold,
          ),
        ),
      ],
    );
  }
}
