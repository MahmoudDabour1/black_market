import 'package:black_market/features/home/data/models/banks_response_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/networking/api_constants.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import 'banks_button_container_widget.dart';

class BanksButtonsAndIconsRow extends StatelessWidget {
  final BanksResponseModel bank;
  const BanksButtonsAndIconsRow({super.key, required this.bank});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BanksButtonContainerWidget(
          icon: AppAssets.shareIcon,
          onPressed: () {},
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightGreyColor,
            shape: BoxShape.circle,
          ),
          child: CachedNetworkImage(
            height: 60.h,
            width: 60.w,
            imageUrl: "${ApiConstants.imagesBaseUrl}${bank.icon}",
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        BanksButtonContainerWidget(
          icon: AppAssets.heartIcon,
          onPressed: () {},
        ),
      ],
    );
  }
}
