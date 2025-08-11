import 'package:black_market/features/auth/presentation/login/widgets/login_buttons.dart';
import 'package:black_market/features/auth/presentation/login/widgets/login_header_widget.dart';
import 'package:black_market/features/auth/presentation/login/widgets/login_inputs_widget.dart';
import 'package:black_market/features/auth/presentation/login/widgets/remember_and_forget_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                LoginHeaderWidget(),
                LoginInputsWidget(
                  formKey: loginFormKey,
                ),
                RememberAndForgetPasswordWidget(),
                LoginButtons(
                  formKey: loginFormKey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
