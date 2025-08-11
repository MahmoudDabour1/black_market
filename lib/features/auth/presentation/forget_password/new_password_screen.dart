import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/core/widgets/app_custom_button.dart';
import 'package:black_market/features/auth/logic/auth_cubit.dart';
import 'package:black_market/features/auth/presentation/forget_password/widgets/new_password_widget/new_password_inputs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/auth_state.dart';

class NewPasswordScreen extends StatelessWidget {
  final String email;
  final String code;

  const NewPasswordScreen({super.key, required this.email, required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: AppString.makeNewPassword),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewPasswordInputsWidget(),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return AppCustomButton(
                    textButton: AppString.con,
                    isLoading: state is UpdatePasswordLoading,
                    onPressed: () {
                      context.read<AuthCubit>().updatePassword(code);
                    },
                  );
                },
              ),
              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}
