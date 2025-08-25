import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/features/auth/presentation/forget_password/widgets/otp_widgets/otp_felids_widget.dart';
import 'package:black_market/features/auth/presentation/forget_password/widgets/otp_widgets/otp_texts_widget.dart';
import 'package:black_market/features/auth/presentation/forget_password/widgets/otp_widgets/otp_timer_and_button_widget.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  final String email;

  const OtpScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: AppString.returnPassword),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OtpTextsWidget(email: email),
          OtpFelidsWidget(
            email: email,
          ),
          verticalSpace(32),
          OtpTimerAndButtonWidget(),
        ],
      ),
    );
  }
}
