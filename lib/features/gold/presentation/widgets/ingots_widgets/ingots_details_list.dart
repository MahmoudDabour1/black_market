import 'package:black_market/features/gold/data/models/ingots_and_coins_response_model.dart';
import 'package:black_market/features/gold/logic/gold_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/theming/font_weight_helper.dart';
import '../../../logic/gold_state.dart';
import 'ingots_details_row.dart';

class IngotsDetailsList extends StatelessWidget {
  const IngotsDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldCubit, GoldState>(
      builder: (context, state) {
        return state.maybeWhen(
            ingotsAndCoinsLoading: () => CircularProgressIndicator(),
            ingotsAndCoinsSuccess: (data,coinsData) =>
                setupSuccess(data),
            ingotsAndCoinsFailure: (error) => setupError(error),
            orElse: () => SizedBox.shrink());
      },
    );
  }

  Center setupError(String error) {
    return Center(
      child: Text(
        error,
        style: AppStyles.font18WhiteSemiBold.copyWith(
          fontWeight: FontWeightHelper.bold,
          fontSize: 20.sp,
        ),
      ),
    );
  }

  Widget setupSuccess(List<Coin> data) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 8.h),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final coin = data[index];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
          child: ExpansionTile(
            title: Text(
              coin.name ?? "",
              style: AppStyles.font18WhiteSemiBold.copyWith(
                fontWeight: FontWeightHelper.bold,
                fontSize: 20.sp,
              ),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 30.r,
              color: AppColors.whiteColor,
            ),
            visualDensity: VisualDensity.compact,
            backgroundColor: AppColors.fillColor,
            collapsedBackgroundColor: AppColors.fillColor,
            tilePadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
              side: BorderSide(color: AppColors.primaryColor, width: 2.w),
            ),
            childrenPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            children: coin.companiesData?.map((cd) {
              return Column(
                children: [
                  IngotsDetailsRow(
                    title: AppString.gramPrice,
                    price: coin.price?.sellPrice?.toString() ?? "-",
                  ),
                  IngotsDetailsRow(
                    title: AppString.gramWorkManShop,
                    price: cd.workmanship?.toString() ?? "-",
                  ),
                  IngotsDetailsRow(
                    title: AppString.allTax,
                    price: cd.tax?.toString() ?? "-",
                  ),
                  IngotsDetailsRow(
                    title: AppString.allPrice,
                    price:
                    "${(coin.price?.sellPrice ?? 0) + (cd.workmanship ?? 0) + (cd.tax ?? 0)}",
                    color: AppColors.primaryColor,
                    fontSize: 18,
                  ),
                  IngotsDetailsRow(
                    title: AppString.returnPrice,
                    price: cd.returnFees?.toString() ?? "-",
                  ),
                  IngotsDetailsRow(
                    title: AppString.different,
                    price: "${(cd.workmanship ?? 0) - (cd.returnFees ?? 0)}",
                  ),
                ],
              );
            }).toList() ?? [],
          ),
        );
      },
    );
  }

}
