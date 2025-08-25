import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_string.dart';
import '../../../../core/widgets/app_custom_vertical_divider.dart';
import '../../data/models/currencies_response_model.dart';
import 'home_price_column_widget.dart';

class HomeDropDownContainerPrices extends StatelessWidget {
  final CurrenciesResponseModel selectedCurrency;

  const HomeDropDownContainerPrices({
    super.key,
    required this.selectedCurrency,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HomePriceColumnWidget(
          name: AppString.bankPrice,
          value: _getLastPrice(selectedCurrency.bankPrices),
        ),
        AppCustomVerticalDivider(
          color: AppColors.blackColor,
        ),
        HomePriceColumnWidget(
          name: AppString.lastUpdate,
          value: _formatLastUpdate(selectedCurrency.updatedAt),
          isValueOnly: true,
        ),
        AppCustomVerticalDivider(
          color: AppColors.blackColor,
        ),
        HomePriceColumnWidget(
          name: AppString.souqSouda,
          value: _getLastPrice(selectedCurrency.blackMarketPrices),
          textColor: AppColors.goldColor,
        ),
      ],
    );
  }

  String _formatLastUpdate(DateTime? updatedAt) {
    if (updatedAt == null) return "N/A";

    Duration diff = DateTime.now().difference(updatedAt);

    int totalMinutes = diff.inMinutes;

    if (totalMinutes < 1) {
      return "Just now";
    } else {
      return "$totalMinutes ${AppString.min}";
    }
  }

  String _getLastPrice(List<CurrenciesPrice>? prices) {
    if (prices != null && prices.isNotEmpty) {
      return prices.last.buyPrice.toString();
    }
    return "";
  }
}
