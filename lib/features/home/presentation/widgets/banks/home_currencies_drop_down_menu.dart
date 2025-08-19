import 'package:black_market/core/networking/api_constants.dart';
import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/theming/font_weight_helper.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/widgets/app_custom_vertical_divider.dart';
import '../../../../profile/data/models/countries_response_model.dart';
import '../../../../profile/logic/profile_cubit.dart';
import '../../../../profile/logic/profile_state.dart';

class HomeCurrenciesDropDownMenu extends StatefulWidget {
  const HomeCurrenciesDropDownMenu({super.key});

  @override
  State<HomeCurrenciesDropDownMenu> createState() =>
      _HomeCurrenciesDropDownMenuState();
}

class _HomeCurrenciesDropDownMenuState
    extends State<HomeCurrenciesDropDownMenu> {
  List<CountriesResponseModel> currencies = [];
  CountriesResponseModel? selectedCurrency;

  Future<void> _loadCountriesData() async {
    try {
      var countriesBox = await Hive.openBox<List>(kCountriesBox);
      var countriesData = countriesBox.get(kCountriesData);
      if (countriesData != null) {
        setState(() {
          currencies = countriesData.cast<CountriesResponseModel>().toList();
        });
      } else {
        context.read<ProfileCubit>().getCountries();
      }
    } catch (e) {
      debugPrint("Error loading countries data: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _loadCountriesData();
    context.read<ProfileCubit>().stream.listen((state) async {
      if (state is CountriesSuccess) {
        setState(() {
          currencies = state.maybeWhen(
              orElse: () => [], countriesSuccess: (countries) => countries);
        });
      }
    });
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
                child: DropdownButtonFormField<String>(
                    value: selectedCurrency?.name,
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
                      return DropdownMenuItem<String>(
                        alignment: Alignment.centerLeft,
                        value: currency.name,
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: Padding(
                            padding: EdgeInsets.all(16.r),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(70.r),
                                  child: currency.icon != null
                                      ? Image.network(
                                          "${ApiConstants.imagesBaseUrl}${currency.icon}",
                                          width: 40.w,
                                          height: 40.h,
                                          fit: BoxFit.fill,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  const Icon(Icons.error,
                                                      color: Colors.red,
                                                      size: 20),
                                        )
                                      : const Icon(Icons.flag,
                                          color: Colors.white),
                                ),
                                horizontalSpace(12),
                                Flexible(
                                  child: Text(
                                    currency.name ?? "غير معروف",
                                    style: AppStyles.font18PrimaryMedium
                                        .copyWith(color: AppColors.whiteColor),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCurrency =
                            currencies.firstWhere((c) => c.name == value);
                      });
                    },
                    selectedItemBuilder: (context) {
                      return currencies.map((currency) {
                        return Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.r),
                                child: currency.icon != null
                                    ? Image.network(
                                        "${ApiConstants.imagesBaseUrl}${currency.icon}",
                                        width: 30.w,
                                        height: 30.h,
                                        fit: BoxFit.fill,
                                      )
                                    : const Icon(Icons.flag,
                                        color: Colors.grey),
                              ),
                              horizontalSpace(12),
                              Text(
                                currency.name ?? "غير معروف",
                                style: AppStyles.font18PrimaryMedium.copyWith(
                                  color: AppColors.blackColor,
                                ),
                              ),
                              horizontalSpace(16),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 30.r,
                                color: AppColors.blackColor,
                              ),
                            ],
                          ),
                        );
                      }).toList();
                    })),
            verticalSpace(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                homPriceColumnWidget(name: AppString.bankPrice, value: "50"),
                AppCustomVerticalDivider(
                  color: AppColors.blackColor,
                ),
                homPriceColumnWidget(name: AppString.lastUpdate, value: "50"),
                AppCustomVerticalDivider(
                  color: AppColors.blackColor,
                ),
                homPriceColumnWidget(name: AppString.souqSouda, value: "50"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column homPriceColumnWidget({
    required String name,
    required String value,
  }) {
    return Column(
      children: [
        Text(
          name,
          style: AppStyles.font14WhiteMedium.copyWith(
            color: AppColors.grayColor,
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        verticalSpace(8),
        Text(
          value,
          style: AppStyles.font14WhiteMedium.copyWith(
            color: AppColors.blackColor,
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
      ],
    );
  }
}
