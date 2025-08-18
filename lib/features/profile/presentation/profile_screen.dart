import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/core/helpers/shared_pref_helper.dart';
import 'package:black_market/core/helpers/shared_pref_keys.dart';
import 'package:black_market/core/routing/routes.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/features/auth/data/models/login_response_model.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_auth_buttons.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_container_items_list_widget.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_logout_button_widget.dart';
import 'package:black_market/features/profile/presentation/widgets/profile_user_data_widget.dart';
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
      if (token == null || token.isEmpty) {
        isLogin = false;
      } else {
        isLogin = true;
      }
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
            if (isLogin == true) ...[
              ProfileUserDataWidget(
                userData: userData,
              ),
            ] else ...[
              ProfileAuthButtons(),
            ],
            ProfileContainerItemsListWidget(),
            if (isLogin) ...[
              ProfileLogoutButtonWidget(
                onPress: () async {
                  var authBox = Hive.box<LoginResponseModel>(kUserBox);
                  await authBox.clear();
                  await SharedPrefHelper.removeData(SharedPrefKeys.userToken);
                  await SharedPrefHelper.removeSecuredString(
                      SharedPrefKeys.userToken);

                  setState(() {
                    isLogin = false;
                    userData = null;
                  });

                  if (mounted) {
                    context.pushNamed(Routes.loginScreen);
                  }
                },
              ),
            ]
          ],
        ),
      ),
    );
  }
}
