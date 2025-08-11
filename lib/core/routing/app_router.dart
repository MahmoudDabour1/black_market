import 'package:black_market/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/forget_password/forget_password_screen.dart';
import '../../features/auth/presentation/forget_password/otp_screen.dart';
import '../../features/auth/presentation/login/login_screen.dart';
import '../../features/auth/presentation/register/register_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          settings: settings,
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
          settings: settings,
        );
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
          settings: settings,
        );
      case Routes.otpScreen:
        return MaterialPageRoute(
          builder: (_) => OtpScreen(),
          settings: settings,
        );
    }
    return null;
  }
}
