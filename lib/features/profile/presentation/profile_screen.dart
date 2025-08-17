import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/core/helpers/shared_pref_helper.dart';
import 'package:black_market/core/helpers/shared_pref_keys.dart';
import 'package:black_market/core/networking/api_constants.dart';
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
import 'package:black_market/features/auth/data/models/login_response_model.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_auth_buttons.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_container_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../../../core/routing/router_observer.dart';

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
      if (token==null||token.isEmpty) {
        isLogin = false;
      }  else{
        isLogin = true;
      }
      // isLogin = token != null || token.isNotEmpty;
    });
    logger.w(token);
  }

  @override
  void initState() {
    super.initState();
    setToken();
    loadData();
  }

  LoginResponseModel? userData;

  Future<void> loadData() async {
    try {
      var authBox = Hive.box<LoginResponseModel>(kUserBox);
      var userDataJson = authBox.get(kUserData);
      if (userDataJson != null) {
        setState(() {
          userData = userDataJson;
        });
      } else {
        debugPrint("No user data found in Hive box.");
      }
    } catch (e) {
      debugPrint("Error loading data: $e");
    }
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
            if (isLogin==true) ...[
              CircleAvatar(
                radius: 40.r,
                child: Image.network(
                  (ApiConstants.imagesBaseUrl) + (userData?.user?.avatar ?? ""),
                  fit: BoxFit.fill,
                  width: 80.w,
                  height: 80.h,
                ),
              ),
              verticalSpace(8),
              Text(
                userData?.user?.name ?? "",
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
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.4,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r),
                        ),
                      ),
                      builder: (context) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.r),
                              child: Align(
                                alignment: Alignment.topLeft,
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
                            ),
                            Text(AppString.doYouWantToLogout,
                                style: AppStyles.font18WhiteSemiBold),
                            verticalSpace(16),
                            Icon(
                              Icons.error_outlined,
                              size: 100.r,
                              color: Colors.red,
                            ),
                            verticalSpace(32),
                            AppCustomButton(
                              btnWidth: 180.w,
                              radius: 16.r,
                              textButton: AppString.logout,
                              textColor: AppColors.whiteColor,
                              backgroundColor: Colors.red,
                              onPressed: () async {
                                var authBox =
                                    Hive.box<LoginResponseModel>(kUserBox);
                                await authBox.clear();

                                // 3. Update UI
                                setState(() {
                                  isLogin = false;
                                  userData = null;
                                });

                                // 4. Close bottom sheet
                                if (mounted) {
                                  context.pushNamed(Routes.loginScreen);
                                }
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
