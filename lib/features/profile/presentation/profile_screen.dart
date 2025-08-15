import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/core/routing/routes.dart';
import 'package:black_market/core/theming/app_assets.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_auth_buttons.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_container_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        title: AppString.profile,
        showBackButton: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            verticalSpace(32),
            ProfileAuthButtons(),
            verticalSpace(64),
            ProfileContainerItem(
              title: AppString.shareApp,
              onTap: () {},
              icon: AppAssets.globalIcon,
            ),
            ProfileContainerItem(
              title: AppString.aboutApp,
              onTap: () {
                context.pushNamed(Routes.aboutAppScreen);
              },
              icon: AppAssets.infoIcon,
            ),
            ProfileContainerItem(
              title: AppString.mainCoin,
              onTap: () {
                context.pushNamed(Routes.mainCurrenciesScreen);
              },
              icon: AppAssets.dollarIcon,
            ),
            ProfileContainerItem(
              title: AppString.settings,
              onTap: () {},
              icon: AppAssets.settingIcon,
            ),
          ],
        ),
      ),
    );
  }
}
