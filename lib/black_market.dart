import 'package:black_market/features/home/logic/home_cubit.dart';
import 'package:black_market/features/profile/logic/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/app_theme.dart';
import 'features/auth/logic/auth_cubit.dart';

class BlackMarket extends StatelessWidget {
  final AppRouter appRouter;

  const BlackMarket({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthCubit(sl())),
        BlocProvider(create: (_) => ProfileCubit(sl())),
        BlocProvider(create: (_) => HomeCubit(sl())),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          locale: const Locale("ar"),
          supportedLocales: const [
            Locale("ar"),
            // Locale("en"),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          title: 'Flutter Demo',
          theme: appTheme,
          builder: (context, child) {
            return Directionality(
              textDirection: TextDirection.rtl, // force RTL for all text
              child: FToastBuilder()(context, child),
            );
          },
          onGenerateRoute: appRouter.generateRoute,
          debugShowCheckedModeBanner: false,
          navigatorObservers: [NavigatorObserver(), routeObserver],
          initialRoute: Routes.splashScreen,
        ),
      ),
    );
  }
}
