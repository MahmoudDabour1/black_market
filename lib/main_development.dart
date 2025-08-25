import 'package:black_market/black_market.dart';
import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/utils/hive_set_up.dart';
import 'core/utils/my_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Future.wait([
    setupGetIt(),
    Hive.initFlutter(),
    initHive(),
  ]);
  Bloc.observer = MyBlocObserver();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => BlackMarket(
        appRouter: AppRouter(),
      ),
    ),
  );
}
