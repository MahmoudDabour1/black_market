import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_back_button.dart';
import 'package:black_market/core/widgets/app_custom_button.dart';
import 'package:black_market/features/auth/logic/auth_cubit.dart';
import 'package:black_market/features/auth/presentation/register/widgets/register_inputs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/auth_state.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.newAccount),
        centerTitle: true,
        backgroundColor: AppColors.blackColor,
        leading: Padding(
          padding: EdgeInsetsDirectional.only(start: 4.w),
          child: AppCustomBackButton(),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 8.w),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: RegisterInputsWidget(
                    registerFormKey: registerFormKey,
                  ),
                ),
              ),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  final cubit = context.read<AuthCubit>();
                  return AppCustomButton(
                    textButton: AppString.con,
                    isLoading: state is RegisterLoading,
                    onPressed: () {
                      if (registerFormKey.currentState!.validate()) {
                        cubit.register();
                      }
                    },
                  );
                },
              ),
              verticalSpace(20.h)
            ],
          ),
        ),
      ),
    );
  }
}
