import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/validator.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../logic/auth_cubit.dart';

class ForgetPasswordInputWidget extends StatelessWidget {
  const ForgetPasswordInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}
