import 'package:black_market/core/theming/app_assets.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/validator.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class LoginInputsWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const LoginInputsWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(32),
          Text(
            AppString.email,
            style: AppStyles.font18WhiteSemiBold,
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: cubit.emailController,
            labelText: AppString.enterEmail,
            validator: Validator.emailValidator,
            keyboardType: TextInputType.emailAddress,
            suffixIcon: Image.asset(
              AppAssets.messageIcon,
              fit: BoxFit.contain,
              width: 25.h,
            ),
          ),
          verticalSpace(16),
          Text(
            AppString.password,
            style: AppStyles.font18WhiteSemiBold,
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: cubit.passwordController,
            labelText: AppString.password,
            validator: Validator.passwordValidator,
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
    );
  }
}
