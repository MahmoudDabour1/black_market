import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_container_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/utils/spacing.dart';

class ProfileContainerItemsListWidget extends StatelessWidget {
  const ProfileContainerItemsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          onTap: () {
            context.pushNamed(Routes.settingsScreen);
          },
          icon: AppAssets.settingIcon,
        ),
      ],
    );
  }
}
