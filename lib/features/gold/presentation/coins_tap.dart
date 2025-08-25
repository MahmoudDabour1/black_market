import 'package:black_market/features/gold/presentation/widgets/coins_widgets/coins_details_list.dart';
import 'package:black_market/features/gold/presentation/widgets/companies/companies_list.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/spacing.dart';

class CoinsTap extends StatefulWidget {
  const CoinsTap({super.key});

  @override
  State<CoinsTap> createState() => _CoinsTapState();
}

class _CoinsTapState extends State<CoinsTap>
    with AutomaticKeepAliveClientMixin<CoinsTap> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(16),
          Directionality(
              textDirection: TextDirection.ltr, child: CompaniesList()),
          verticalSpace(16),
          CoinsDetailsList(),
        ],
      ),
    );
  }
}
