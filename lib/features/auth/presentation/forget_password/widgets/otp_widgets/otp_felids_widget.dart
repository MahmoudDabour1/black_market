import 'package:flutter/material.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class OtpFelidsWidget extends StatefulWidget {
  const OtpFelidsWidget({super.key});

  @override
  State<OtpFelidsWidget> createState() => _OtpFelidsWidgetState();
}

class _OtpFelidsWidgetState extends State<OtpFelidsWidget> {
  final List<TextEditingController> _controllers =
  List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }
  void _checkIfAllFilled() {
    bool allFilled = _controllers.every((c) => c.text.isNotEmpty);
    if (allFilled) {
      String otp = _controllers.map((c) => c.text).join();
      debugPrint("OTP Entered: $otp");


    }
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return SizedBox(
            width: 60,
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: AppStyles.font18WhiteSemiBold,
              maxLength: 1,
              decoration: InputDecoration(
                counterText: '',
                filled: true,
                fillColor: AppColors.fillColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                if (value.isNotEmpty && index < 4) {
                  _focusNodes[index - 1].requestFocus();
                } else if (value.isEmpty && index > -1) {
                  _focusNodes[index + 1].requestFocus();
                }
                _checkIfAllFilled();
              },
            ));
      }),
    );
  }
}
