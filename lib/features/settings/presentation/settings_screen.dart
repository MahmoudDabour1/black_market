import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/core/routing/routes.dart';
import 'package:black_market/core/theming/app_assets.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_container_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: AppString.settings),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            verticalSpace(64),
            ProfileContainerItem(
              title: AppString.arrangeBanks,
              icon: AppAssets.bankIcon,
              onTap: () {},
            ),
            ProfileContainerItem(
              title: AppString.arrangeCoins,
              icon: AppAssets.dollarIcon,
              onTap: () {
                context.pushNamed(Routes.arrangeCoinsScreen);
              },
            ),
            ProfileContainerItem(
              title: AppString.language,
              icon: AppAssets.globalIcon,
              onTap: () {
                context.pushNamed(Routes.languageScreen);
              },
            ),
            ProfileContainerItem(
              title: AppString.notificationSettings,
              icon: AppAssets.infoIcon,
              onTap: () {
                context.pushNamed(Routes.notificationsScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
