import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/helpers/shared_pref_keys.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/spacing.dart';
import '../../../auth/data/models/login_response_model.dart';

class HomeHeaderContainerWidget extends StatefulWidget {
  const HomeHeaderContainerWidget({super.key});

  @override
  State<HomeHeaderContainerWidget> createState() =>
      _HomeHeaderContainerWidgetState();
}

class _HomeHeaderContainerWidgetState extends State<HomeHeaderContainerWidget> {
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
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.281.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: AppColors.fillColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            20.0.r,
          ),
          bottomRight: Radius.circular(
            20.0.r,
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (isLogin == true) ...[
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        child: Image.network(
                          (ApiConstants.imagesBaseUrl) +
                              (userData?.user?.avatar ?? ""),
                          fit: BoxFit.fill,
                          width: 50.w,
                          height: 50.h,
                        ),
                      ),
                      horizontalSpace(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.hello,
                            style: AppStyles.font16whiteSemiBold,
                          ),
                          Text(
                            userData?.user?.name ?? "",
                            style: AppStyles.font16whiteSemiBold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ] else ...[
                  Text(
                    AppString.hello,
                    style: AppStyles.font16whiteSemiBold,
                  ),
                ],
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColors.blackColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: AppColors.whiteColor,
                    size: 25.r,
                  ),
                )
              ],
            ),
          ),
          Text(
            AppString.blackMarket,
            style: AppStyles.font24WhiteBold.copyWith(
              color: AppColors.primaryColor,
              fontSize: 30.sp,
            ),
          ),
          Text(
            AppString.howMuch,
            style: AppStyles.font18PrimaryMedium.copyWith(
              color: AppColors.lightYellowColor,
            ),
          )
        ],
      ),
    );
  }
}
