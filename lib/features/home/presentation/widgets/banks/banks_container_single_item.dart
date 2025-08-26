import 'package:black_market/features/home/data/models/banks_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/theming/font_weight_helper.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../data/models/currencies_response_model.dart';
import 'banks_buttons_and_icons_row.dart';
import 'banks_prices_row.dart';

class BanksContainerSingleItem extends StatelessWidget {
  final BanksResponseModel bank;
  final CurrenciesPrice prices;
  final VoidCallback? onFavoriteChanged;

  const BanksContainerSingleItem({
    super.key,
    required this.bank,
    required this.prices,
    this.onFavoriteChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.fillColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Colors.white10,
          width: 1.3,
        ),
      ),
      child: Column(
        children: [
          verticalSpace(16),
          BanksButtonsAndIconsRow(
            bank: bank,
            price: prices,
            onFavoriteChanged: onFavoriteChanged,
          ),
          verticalSpace(8),
          bankNameText(),
          verticalSpace(8),
          BanksPricesRow(
            price: prices,
          ),
        ],
      ),
    );
  }

  Center bankNameText() {
    return Center(
      child: Text(
        bank.name ?? "غير معروف",
        style: AppStyles.font18PrimaryMedium.copyWith(
          color: AppColors.whiteColor,
          fontWeight: FontWeightHelper.semiBold,
          fontSize: 15.sp,
        ),
        maxLines: 1,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
