import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/theming/app_string.dart';
import '../../../../../../core/theming/app_styles.dart';
import '../../../../logic/auth_cubit.dart';

class OtpTimerAndButtonWidget extends StatefulWidget {
  const OtpTimerAndButtonWidget({super.key});

  @override
  State<OtpTimerAndButtonWidget> createState() => _OtpTimerAndButtonWidgetState();
}

class _OtpTimerAndButtonWidgetState extends State<OtpTimerAndButtonWidget> {

  int _secondsRemaining = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _secondsRemaining = 30;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          AppString.didHaveCode,
          style: AppStyles.font16whiteMedium,
        ),
        _secondsRemaining > 0
            ? Text(
          "$_secondsRemaining ثانية",
          style: AppStyles.font18PrimaryMedium,
        )
            : TextButton(
          child: Text(
            AppString.sendAgain,
            style: AppStyles.font18PrimaryMedium,
          ),
          onPressed: () {
            context.read<AuthCubit>().forgetPassword(context);
            _startTimer();
          },
        ),
      ],
    );
  }
}
