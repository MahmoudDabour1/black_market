import 'package:black_market/features/auth/logic/auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/validator.dart';
import '../../../../../../core/theming/app_assets.dart';
import '../../../../../../core/theming/app_string.dart';
import '../../../../../../core/theming/app_styles.dart';
import '../../../../../../core/utils/spacing.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';

class NewPasswordInputsWidget extends StatelessWidget {
  const NewPasswordInputsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(64),
            Text(
              AppString.password,
              style: AppStyles.font18WhiteSemiBold,
            ),
            verticalSpace(16),
            AppTextFormField(
              controller: cubit.passwordController,
              labelText: AppString.enterPassword,
              validator: Validator.passwordValidator,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Image.asset(
                AppAssets.lockIcon,
                fit: BoxFit.contain,
                width: 25.h,
              ),
            ),
            verticalSpace(16),
            Text(
              AppString.conPassword,
              style: AppStyles.font18WhiteSemiBold,
            ),
            verticalSpace(16),
            AppTextFormField(
              controller: cubit.confirmPasswordController,
              labelText: AppString.enterPassword,
              validator: Validator.confirmPasswordValidator,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Image.asset(
                AppAssets.lockIcon,
                fit: BoxFit.contain,
                width: 25.h,
              ),
            ),
            verticalSpace(16),
          ],
        ),
      ),
    );
  }
}
