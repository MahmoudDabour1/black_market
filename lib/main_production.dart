import 'package:black_market/black_market.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/utils/hive_set_up.dart';
import 'core/utils/my_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    setupGetIt(),
    ScreenUtil.ensureScreenSize(),
    Hive.initFlutter(),
    initHive(),
  ]);
  Bloc.observer = MyBlocObserver();

  runApp(
    BlackMarket(
      appRouter: AppRouter(),
    ),
  );
}
