import 'package:black_market/core/routing/routes.dart';
import 'package:black_market/features/auth/presentation/forget_password/new_password_screen.dart';
import 'package:black_market/features/gold/presentation/gold_screen.dart';
import 'package:black_market/features/layout/logic/bottom_nav_cubit.dart';
import 'package:black_market/features/layout/presentation/bottom_nav_bar_layout.dart';
import 'package:black_market/features/profile/presentation/about_app_screen.dart';
import 'package:black_market/features/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/presentation/forget_password/forget_password_screen.dart';
import '../../features/auth/presentation/forget_password/otp_screen.dart';
import '../../features/auth/presentation/login/login_screen.dart';
import '../../features/auth/presentation/register/register_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/profile/presentation/main_currencies_screen.dart';
import '../../features/profile/presentation/profile_screen.dart';
import '../../features/settings/presentation/arrange_coins_screen.dart';
import '../../features/settings/presentation/language_screen.dart';
import '../../features/settings/presentation/notifications_screen.dart';
import '../../features/settings/presentation/settings_screen.dart';

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
        final email = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => OtpScreen(
            email: email,
          ),
          settings: settings,
        );

      case Routes.newPasswordScreen:
        final args = settings.arguments as Map<String, dynamic>;
        final email = args['email'] as String;
        final otp = args['otp'] as String;
        return MaterialPageRoute(
          builder: (_) => NewPasswordScreen(
            email: email,
            code: otp,
          ),
          settings: settings,
        );
      case Routes.goldScreen:
        return MaterialPageRoute(
          builder: (_) => GoldScreen(),
          settings: settings,
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(),
          settings: settings,
        );
      case Routes.mainCurrenciesScreen:
        return MaterialPageRoute(
          builder: (_) => MainCurrenciesScreen(),
          settings: settings,
        );
      case Routes.aboutAppScreen:
        return MaterialPageRoute(
          builder: (_) => AboutAppScreen(),
          settings: settings,
        );
      case Routes.settingsScreen:
        return MaterialPageRoute(
          builder: (_) => SettingsScreen(),
          settings: settings,
        );
      case Routes.languageScreen:
        return MaterialPageRoute(
          builder: (_) => LanguageScreen(),
          settings: settings,
        );
      case Routes.notificationsScreen:
        return MaterialPageRoute(
          builder: (_) => NotificationsScreen(),
          settings: settings,
        );
      case Routes.arrangeCoinsScreen:
        return MaterialPageRoute(
          builder: (_) => ArrangeCoinsScreen(),
          settings: settings,
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case Routes.bottomNavBarLayout:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => BottomNavCubit(),
            child: BottomNavBarLayout(),
          ),
          settings: settings,
        );
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
          settings: settings,
        );
    }
    return null;
  }
}
