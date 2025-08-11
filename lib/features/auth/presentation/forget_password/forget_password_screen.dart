import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/core/widgets/app_custom_button.dart';
import 'package:black_market/features/auth/logic/auth_cubit.dart';
import 'package:black_market/features/auth/logic/auth_state.dart';
import 'package:black_market/features/auth/presentation/forget_password/widgets/forget_password_input_widget.dart';
import 'package:black_market/features/auth/presentation/forget_password/widgets/forget_password_note_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: AppString.forPassword),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(64),
              ForgetPasswordNoteContainer(),
              Expanded(
                  child: SingleChildScrollView(
                      child: ForgetPasswordInputWidget())),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  final cubit = context.read<AuthCubit>();
                  return AppCustomButton(
                    textButton: AppString.con,
                     isLoading: state is ForgetPasswordLoading,
                    onPressed: () {
                      cubit.forgetPassword(context);
                    },
                  );
                },
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
