import 'package:flutter/material.dart';

import '../../../../../core/theming/app_string.dart';
import '../../../../../core/widgets/app_custom_vertical_divider.dart';
import '../../../../gold/presentation/widgets/gold_widgets/gold_buy_and_sale_column.dart';
import '../../../data/models/currencies_response_model.dart';

class BanksPricesRow extends StatelessWidget {
  final CurrenciesPrice price;
  const BanksPricesRow({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GoldBuyAndSaleColumn(
          title: AppString.buy,
          price: price.buyPrice.toString(),
        ),
        AppCustomVerticalDivider(),
        GoldBuyAndSaleColumn(
          title: AppString.sell,
          price: price.sellPrice.toString(),
        ),
      ],
    );
  }
}
