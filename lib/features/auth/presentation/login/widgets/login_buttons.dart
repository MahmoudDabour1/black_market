import 'package:black_market/core/widgets/app_custom_button.dart';
import 'package:black_market/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../logic/auth_state.dart';

class LoginButtons extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const LoginButtons({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        return Column(
          children: [
            AppCustomButton(
              isLoading: state is LoginLoading,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  cubit.login();
                }
              },
              textButton: AppString.login,
            ),
            verticalSpace(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppString.noAccount,
                  style: AppStyles.font14WhiteMedium,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppString.sign,
                    style: AppStyles.font16whiteMedium.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
