import 'package:black_market/core/theming/app_assets.dart';
import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/features/gold/logic/gold_cubit.dart';
import 'package:black_market/features/gold/presentation/widgets/gold_widgets/gold_tap_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/dependency_injection.dart';
import 'gold_tap.dart';

class GoldScreen extends StatefulWidget {
  const GoldScreen({super.key});

  @override
  State<GoldScreen> createState() => _GoldScreenState();
}

class _GoldScreenState extends State<GoldScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<GoldCubit>().fetchCompaniesData();
  // }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(sl())..fetchGoldPrices()..fetchCompaniesData(),
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
              Center(child: Text("Ingots content")),
              Center(child: Text("Third tab content")),
            ],
          ),
        ),
      ),
    );
  }
}
