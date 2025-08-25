import 'package:black_market/features/home/data/models/currencies_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class HomeBuildDropDownItem extends StatelessWidget {
  final CurrenciesResponseModel currency;

  const HomeBuildDropDownItem({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(70.r),
              child: currency.icon != null
                  ? Image.network(
                      "${ApiConstants.imagesBaseUrl}${currency.icon}",
                      width: 40.w,
                      height: 40.h,
                      fit: BoxFit.fill,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error, color: Colors.red, size: 20),
                    )
                  : const Icon(Icons.flag, color: Colors.white),
            ),
            horizontalSpace(12),
            Flexible(
              child: Text(
                currency.name ?? "غير معروف",
                style: AppStyles.font18PrimaryMedium
                    .copyWith(color: AppColors.whiteColor),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
