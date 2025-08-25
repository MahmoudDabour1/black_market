import 'package:black_market/core/theming/app_assets.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/features/gold/presentation/gold_screen.dart';
import 'package:black_market/features/home/presentation/home_screen.dart';
import 'package:black_market/features/profile/presentation/profile_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavState.initial());

  int currentIndex = 0;

  void changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(BottomNavState.changeNav(index));
  }

  List<Widget> bottomNavScreens = [
    HomeScreen(),
    GoldScreen(),
    const Scaffold(),
    ProfileScreen(),
  ];

  List<String> labels = [
    AppString.coins,
    AppString.gold,
    AppString.news,
    AppString.profile,
  ];
  List<String> selectedIcons = [
    AppAssets.yellowDollarIcon,
    AppAssets.yellowGoldIcon,
    AppAssets.yellowHeartIcon,
    AppAssets.yellowProfileIcon,
  ];
  List<String> unSelectedIcons = [
    AppAssets.dollarIcon,
    AppAssets.goldIcon,
    AppAssets.heartIcon,
    AppAssets.profileIcon,
  ];
}
