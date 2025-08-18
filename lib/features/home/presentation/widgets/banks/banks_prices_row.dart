import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_string.dart';
import '../../../../gold/presentation/widgets/gold_widgets/gold_buy_and_sale_column.dart';

class BanksPricesRow extends StatelessWidget {
  const BanksPricesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GoldBuyAndSaleColumn(
          title: AppString.buy,
          price: "50",
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
          price: "50",
        ),
      ],
    );
  }
}
