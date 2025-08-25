import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_container_widget.dart';
import '../../../profile/data/models/countries_response_model.dart';

class ArrangeCoinsContainer extends StatelessWidget {
  final CountriesResponseModel data;

  const ArrangeCoinsContainer({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: AppCustomContainerWidget(
          widget: Row(
        children: [
          horizontalSpace(16),
          CachedNetworkImage(
              imageUrl: "${ApiConstants.imagesBaseUrl}${data.icon}",
              width: 50.h,
              fit: BoxFit.fill),
          horizontalSpace(16.w),
          Expanded(
            child: Text(
              data.name ?? "",
              style: AppStyles.font18WhiteSemiBold,
            ),
          ),
          Image.asset(
            AppAssets.dragIcon,
            width: 25.w,
            fit: BoxFit.fill,
          ),
        ],
      )),
    );
  }
}
