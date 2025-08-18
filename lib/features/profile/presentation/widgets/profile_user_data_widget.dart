import 'package:black_market/features/auth/data/models/login_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/utils/spacing.dart';

class ProfileUserDataWidget extends StatelessWidget {
  final LoginResponseModel? userData;
  const ProfileUserDataWidget({super.key, this.userData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
