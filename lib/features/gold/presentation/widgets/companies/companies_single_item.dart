import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/theming/font_weight_helper.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/features/gold/data/models/companies_response_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/networking/api_constants.dart';

class CompaniesSingleItem extends StatelessWidget {
  final CompaniesResponseModel companiesResponseModel;
  final bool isSelected;

  const CompaniesSingleItem(
      {super.key,
      required this.companiesResponseModel,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl:
              "${ApiConstants.imagesBaseUrl}${companiesResponseModel.image}",
          placeholder: (_, __) => Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
            ),
          ),
          errorWidget: (_, __, ___) => const Icon(Icons.error),
          imageBuilder: (context, imageProvider) => Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        verticalSpace(8),
        Text(
          companiesResponseModel.name ?? "",
          style: AppStyles.font16whiteMedium.copyWith(
            fontWeight: FontWeightHelper.semiBold,
            color: isSelected ? AppColors.primaryColor : AppColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
