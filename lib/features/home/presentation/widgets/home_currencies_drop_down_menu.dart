import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/features/home/data/models/currencies_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import 'home_build_drop_down_item.dart';
import 'home_drop_down_container_prices.dart';
import 'home_drop_down_item_builder.dart';

class HomeCurrenciesDropDownMenu extends StatefulWidget {
  final List<CurrenciesResponseModel> currencies;
  final CurrenciesResponseModel selectedCurrency;
  final Function(CurrenciesResponseModel) onCurrencyChanged;

  const HomeCurrenciesDropDownMenu({
    super.key,
    required this.currencies,
    required this.selectedCurrency,
    required this.onCurrencyChanged,
  });

  @override
  State<HomeCurrenciesDropDownMenu> createState() =>
      _HomeCurrenciesDropDownMenuState();
}

class _HomeCurrenciesDropDownMenuState
    extends State<HomeCurrenciesDropDownMenu> {
  CurrenciesResponseModel? selectedCurrency;
  List<CurrenciesResponseModel> currencies = [];

  @override
  void initState() {
    super.initState();
    currencies = widget.currencies;
    selectedCurrency = widget.selectedCurrency;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 165.h,
      left: 10.w,
      right: 10.w,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.85,
        height: 100.h,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            Center(
                child: DropdownButtonFormField<int>(
                    value: selectedCurrency?.id,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    style: AppStyles.font18PrimaryMedium,
                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.75,
                    borderRadius: BorderRadius.circular(25.r),
                    dropdownColor: AppColors.fillColor,
                    isDense: true,
                    isExpanded: true,
                    items: currencies.map((currency) {
                      return DropdownMenuItem<int>(
                        alignment: Alignment.centerLeft,
                        value: currency.id,
                        child: HomeBuildDropDownItem(
                          currency: currency,
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCurrency =
                            currencies.firstWhere((c) => c.id == value);
                      });
                      widget.onCurrencyChanged(selectedCurrency!);
                    },
                    selectedItemBuilder: (context) {
                      return currencies.map((currency) {
                        return HomeDropDownItemBuilder(
                          currency: currency,
                        );
                      }).toList();
                    })),
            verticalSpace(8),
            HomeDropDownContainerPrices(
              selectedCurrency: selectedCurrency!,
            ),
          ],
        ),
      ),
    );
  }
}
