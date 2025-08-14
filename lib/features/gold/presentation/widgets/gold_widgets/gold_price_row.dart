import 'package:black_market/features/gold/data/models/gold_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_string.dart';
import 'gold_buy_and_sale_column.dart';

class GoldPriceRow extends StatelessWidget {
  final GoldResponseModel data;
  const GoldPriceRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GoldBuyAndSaleColumn(
          title: AppString.buy,
          price: data.price!.buyPrice.toString(),
        ),
        SizedBox(
          height: 30.h,
          child: VerticalDivider(
            color: AppColors.whiteColor,
            thickness: 1.3,
            width: 1.3,
          ),
        ),
        GoldBuyAndSaleColumn(
          title: AppString.sell,
          price: data.price!.price.toString(),
        ),
      ],
    );
  }
}
