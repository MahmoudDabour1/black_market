import 'package:black_market/features/layout/logic/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';
import '../logic/bottom_nav_state.dart';

class BottomNavBarLayout extends StatelessWidget {
  const BottomNavBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        final bottomNavCubit = BlocProvider.of<BottomNavCubit>(context);
        return Scaffold(
          body: bottomNavCubit.bottomNavScreens[bottomNavCubit.currentIndex],
          bottomNavigationBar: BottomAppBar(
            padding: EdgeInsets.zero,
            notchMargin: 10,
            clipBehavior: Clip.antiAlias,
            height: 90.h,
            color: Colors.transparent,
            elevation: 0,
            shadowColor: AppColors.whiteColor,
            shape: const CircularNotchedRectangle(),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.fillColor,
              currentIndex: bottomNavCubit.currentIndex,
              iconSize: 40.r,
              selectedFontSize: 16.sp,
              unselectedFontSize: 16.sp,
              unselectedIconTheme: IconThemeData(
                size: 24.r,
              ),
              enableFeedback: true,
              onTap: (index) {
                bottomNavCubit.changeBottomNavIndex(index);
              },
              items: List.generate(
                bottomNavCubit.unSelectedIcons.length,
                (index) => BottomNavigationBarItem(
                  icon: Image.asset(bottomNavCubit.unSelectedIcons[index]),
                  activeIcon: Image.asset(bottomNavCubit.selectedIcons[index]),
                  label: bottomNavCubit.labels[index],
                ),
              ),
            ),
          ),
        ),
        );
      },
    );
  }
}
