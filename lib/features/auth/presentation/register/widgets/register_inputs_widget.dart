import 'package:black_market/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/validator.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class RegisterInputsWidget extends StatelessWidget {
  final GlobalKey<FormState> registerFormKey;
  const RegisterInputsWidget({super.key, required this.registerFormKey});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Form(
      key: registerFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(64),
          Text(
            AppString.fullName,
            style: AppStyles.font18WhiteSemiBold,
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: cubit.nameController,
            labelText: AppString.enterFullName,
            validator: Validator.nameValidator,
            keyboardType: TextInputType.name,
            suffixIcon: Image.asset(
              AppAssets.profileIcon,
              fit: BoxFit.contain,
              width: 25.h,
            ),
          ),
          verticalSpace(16),
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
    );
  }
}
