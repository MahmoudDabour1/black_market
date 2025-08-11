import 'package:black_market/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/login/login_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          settings: settings,
        );
    }
    return null;
  }
}
