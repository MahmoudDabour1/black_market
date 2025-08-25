import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/features/home/data/models/currencies_response_model.dart';
import 'package:black_market/features/home/logic/home_cubit.dart';
import 'package:black_market/features/home/logic/home_state.dart';
import 'package:black_market/features/home/presentation/widgets/banks/banks_bloc_builder_widget.dart';
import 'package:black_market/features/home/presentation/widgets/home_average_container.dart';
import 'package:black_market/features/home/presentation/widgets/home_currencies_drop_down_menu.dart';
import 'package:black_market/features/home/presentation/widgets/home_header_container_widget.dart';
import 'package:black_market/features/home/presentation/widgets/home_price_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CurrenciesResponseModel> currencies = [];
  CurrenciesResponseModel? selectedCurrency;

  Future<void> _loadCountriesData() async {
    try {
      var countriesBox = await Hive.openBox<List>(kCurrenciesBox);
      var countriesData = countriesBox.get(kCurrenciesData);
      if (countriesData != null) {
        setState(() {
          currencies = countriesData.cast<CurrenciesResponseModel>().toList();
          currencies.removeWhere((currency) => currency.id == 21);
          if (currencies.isNotEmpty) {
            selectedCurrency = currencies.first;
          }
        });
      } else {
        context.read<HomeCubit>().getCurrenciesList();
      }
    } catch (e) {
      debugPrint("Error loading countries data: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _loadCountriesData();
    context.read<HomeCubit>().stream.listen((state) async {
      if (state is CurrenciesSuccess) {
        setState(() {
          currencies = state.maybeWhen(
              orElse: () => [], currenciesSuccess: (countries) => countries);
          currencies.removeWhere((currency) => currency.id == 21);
          if (currencies.isNotEmpty) {
            selectedCurrency ??= currencies.first;
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300.h,
                child: Stack(
                  children: [
                    HomeHeaderContainerWidget(),
                    currencies.isEmpty || selectedCurrency == null
                        ? Center(child: CircularProgressIndicator())
                        : HomeCurrenciesDropDownMenu(
                            currencies: currencies,
                            selectedCurrency: selectedCurrency!,
                            onCurrencyChanged: (currency) {
                              setState(() {
                                selectedCurrency = currency;
                              });
                            },
                          ),
                  ],
                ),
              ),
              CustomPriceChart(
                prices: selectedCurrency?.bankPrices ?? [],
              ),
              HomeAverageContainer(selectedCurrency: selectedCurrency),
              verticalSpace(30),
              BanksBlocBuilderWidget(
                currenciesList: selectedCurrency!.bankPrices!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
