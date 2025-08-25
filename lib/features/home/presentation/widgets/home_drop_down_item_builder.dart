import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../data/models/currencies_response_model.dart';

class HomeDropDownItemBuilder extends StatelessWidget {
  final CurrenciesResponseModel currency;
  const HomeDropDownItemBuilder({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40.r),
            child: currency.icon != null
                ? Image.network(
              "${ApiConstants.imagesBaseUrl}${currency.icon}",
              width: 20.w,
              height: 20.h,
              fit: BoxFit.fill,
            )
                : const Icon(Icons.flag, color: Colors.grey),
          ),
          horizontalSpace(12),
          Flexible(
            child: Text(
              currency.name ?? "غير معروف",
              style: AppStyles.font18PrimaryMedium.copyWith(
                color: AppColors.blackColor,
              ),
            ),
          ),
          horizontalSpace(16),
          Icon(
            Icons.arrow_drop_down,
            size: 30.r,
            color: AppColors.blackColor,
          ),
        ],
      ),
    );
  }
}
