import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';

class ProfileLogoutButtonWidget extends StatefulWidget {
  final VoidCallback onPress;

  const ProfileLogoutButtonWidget({
    super.key,
    required this.onPress,
  });

  @override
  State<ProfileLogoutButtonWidget> createState() =>
      _ProfileLogoutButtonWidgetState();
}

class _ProfileLogoutButtonWidgetState extends State<ProfileLogoutButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        showModalBottomSheet(
          context: context,
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
                  onPressed: widget.onPress,
                )
              ],
            );
          },
        );
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
    );
  }
}
