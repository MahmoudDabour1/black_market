import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_custom_vertical_divider.dart';
import '../../data/models/currencies_response_model.dart';
import 'home_price_column_widget.dart';

class HomeAverageContainer extends StatelessWidget {
  final CurrenciesResponseModel? selectedCurrency;
  const HomeAverageContainer({super.key, this.selectedCurrency});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100.h,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(
          16.r,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            AppString.averagePrice,
            style: AppStyles.font16BlackSemiBold,
          ),
          AppCustomVerticalDivider(
            color: AppColors.grayColor,
          ),
          HomePriceColumnWidget(
            name: AppString.buy,
            value: _calculateAverageSellPrice(selectedCurrency),
            fontStyle: AppStyles.font16BlackSemiBold,
          ),
          AppCustomVerticalDivider(
            color: AppColors.grayColor,
          ),
          HomePriceColumnWidget(
            name: AppString.sell,
            value:_calculateAverageBuyPrice(selectedCurrency),
            fontStyle: AppStyles.font16BlackSemiBold,
          ),
          Image.asset(
            AppAssets.calculatorIcon,
            height: 30.h,
            width: 30.w,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
  String _calculateAverageBuyPrice(CurrenciesResponseModel? currency) {
    if (currency == null || currency.bankPrices == null || currency.bankPrices!.isEmpty) {
      return "0.00";
    }

    final prices = currency.bankPrices!;
    final totalBuy = prices.fold<double>(0.0, (sum, item) => sum + (item.buyPrice ?? 0));
    final avgBuy = totalBuy / prices.length;
    return avgBuy.toStringAsFixed(2);
  }

  String _calculateAverageSellPrice(CurrenciesResponseModel? currency) {
    if (currency == null || currency.bankPrices == null || currency.bankPrices!.isEmpty) {
      return "0.00";
    }

    final prices = currency.bankPrices!;
    final totalSell = prices.fold<double>(0.0, (sum, item) => sum + (item.sellPrice ?? 0));
    final avgSell = totalSell / prices.length;
    return avgSell.toStringAsFixed(2);
  }

}
