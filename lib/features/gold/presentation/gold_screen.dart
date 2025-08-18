import 'package:black_market/core/theming/app_assets.dart';
import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/features/gold/logic/gold_cubit.dart';
import 'package:black_market/features/gold/presentation/widgets/gold_widgets/gold_tap_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/dependency_injection.dart';
import 'coins_tap.dart';
import 'gold_tap.dart';
import 'ingots_tap.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = GoldCubit(sl());

        Future.microtask(() async {
          await cubit.fetchGoldPrices();
          await Future.wait([
            cubit.fetchIngotsAndCoins(),
            cubit.fetchCompaniesData(),
          ]);
        });

        return cubit;
      },
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppString.gold),
            backgroundColor: AppColors.blackColor,
            elevation: 0,
            toolbarHeight: 50.h,
            centerTitle: true,
            actions: [
              IconButton(
                icon: Image.asset(
                  AppAssets.yellowCalculatorIcon,
                  width: 50.w,
                  height: 50.h,
                  fit: BoxFit.contain,
                ),
                onPressed: () {},
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80.h),
              child: GoldTapBarWidget(),
            ),
          ),
          body: TabBarView(
            children: [
              GoldTap(),
              IngotsTap(),
              CoinsTap(),
            ],
          ),
        ),
      ),
    );
  }
}
