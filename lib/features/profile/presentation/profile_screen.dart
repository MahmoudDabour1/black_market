import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/core/helpers/shared_pref_helper.dart';
import 'package:black_market/core/helpers/shared_pref_keys.dart';
import 'package:black_market/core/routing/routes.dart';
import 'package:black_market/core/theming/app_assets.dart';
import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/theming/font_weight_helper.dart';
import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/core/widgets/app_custom_button.dart';
import 'package:black_market/features/profile/data/models/countries_response_model.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_auth_buttons.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_container_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLogin = false;

  Future<void> setToken() async {
    final token =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

    setState(() {
      isLogin = token != null;
    });
  }

  @override
  void initState() {
    super.initState();
    setToken();
  }

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
            if (isLogin) ...[
              CircleAvatar(
                radius: 40.r,
                child: Image.asset(AppAssets.globalIcon),
              ),
              verticalSpace(8),
              Text(
                "Mahmoud Dabour",
                style: AppStyles.font16whiteMedium.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeightHelper.semiBold,
                ),
              ),
            ] else ...[
              ProfileAuthButtons(),
            ],
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
            if (isLogin) ...[
              TextButton.icon(
                onPressed: () async {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column(
                          children: [
                            Align(
                              child: GestureDetector(
                                onTap: () {
                                  context.pop();
                                },
                                child: Image.asset(
                                  AppAssets.redCloseIcon,
                                  width: 30.w,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            AppCustomButton(
                              textButton: AppString.logout,
                              onPressed: () async {
                                await SharedPrefHelper.removeSecuredString(
                                    SharedPrefKeys.userToken);
                                context.pushNamed(Routes.loginScreen);
                              },
                            )
                          ],
                        );
                      });
                },
                label: Text(
                  AppString.logout,
                  style: AppStyles.font18WhiteSemiBold.copyWith(
                    color: Colors.red,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    AppAssets.logoutIcon,
                    width: 30.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
