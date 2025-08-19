import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/features/home/presentation/widgets/banks/banks_bloc_builder_widget.dart';
import 'package:black_market/features/home/presentation/widgets/banks/home_currencies_drop_down_menu.dart';
import 'package:black_market/features/home/presentation/widgets/home_header_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300.h,
                child: Stack(
                    children: [
                    HomeHeaderContainerWidget(),
                Positioned(
                  top: 165.h,
                  left: 10.w,
                  right: 10.w,
                  child: Container(
                    width: MediaQuery
                        .sizeOf(context)
                        .width,
                    height: 100.h,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      children: [
                      HomeCurrenciesDropDownMenu(),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        verticalSpace(100),
        BanksBlocBuilderWidget(),
        ],
      ),
    ),)
    ,
    );
  }
}
