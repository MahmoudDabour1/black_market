import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/core/utils/spacing.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/features/profile/logic/profile_cubit.dart';
import 'package:black_market/features/profile/presentation/widgets/countries_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCurrenciesScreen extends StatefulWidget {
  const MainCurrenciesScreen({super.key});

  @override
  State<MainCurrenciesScreen> createState() => _MainCurrenciesScreenState();
}

class _MainCurrenciesScreenState extends State<MainCurrenciesScreen>
    with AutomaticKeepAliveClientMixin<MainCurrenciesScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileCubit>().getCountries();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppCustomAppBar(title: AppString.mainCoin),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(16),
          Text(
            AppString.selectMainCoin,
            style: AppStyles.font18WhiteSemiBold,
          ),
          verticalSpace(32),
          CountriesBlocBuilder()
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
