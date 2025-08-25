import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/core/routing/routes.dart';
import 'package:black_market/core/theming/app_assets.dart';
import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../../../core/utils/app_constants.dart';
import '../../profile/logic/profile_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadDataAndNavigate();
  }

  Future<void> _loadDataAndNavigate() async {
    await Future.wait([
      context.read<HomeCubit>().getCurrenciesList(),
      context.read<HomeCubit>().getBanksList(),
    ]);

    var box = await Hive.openBox<List>(kCurrenciesBox);
    var currenciesData = box.get(kCurrenciesData);

    if (mounted) {
      if (currenciesData != null && currenciesData.isNotEmpty) {
        context.pushNamed(Routes.bottomNavBarLayout);
        context.read<ProfileCubit>().getAboutApp();
        context.read<ProfileCubit>().getCountries();
      } else {
        context.pushNamed(Routes.bottomNavBarLayout);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppAssets.onBoardingIcon,
              height: 150.h,
              width: 150.w,
            ),
          ),
          Text(
            AppString.blackMarket,
            style: AppStyles.font24WhiteBold.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          verticalSpace(30),
          CircularProgressIndicator(
            color: AppColors.blackColor,
            strokeWidth: 5.w,
            strokeAlign: 3.w,
          ),
        ],
      ),
    );
  }
}
