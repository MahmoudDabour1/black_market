import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/features/gold/presentation/widgets/companies/companies_list.dart';
import 'package:black_market/features/gold/presentation/widgets/ingots_widgets/ingots_details_list.dart';
import 'package:flutter/material.dart';

class IngotsTap extends StatefulWidget {
  const IngotsTap({super.key});

  @override
  State<IngotsTap> createState() => _IngotsTapState();
}

class _IngotsTapState extends State<IngotsTap>
    with AutomaticKeepAliveClientMixin<IngotsTap> {
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
          IngotsDetailsList(),
        ],
      ),
    );
  }
}
