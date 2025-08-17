import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/features/profile/data/models/countries_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../logic/profile_cubit.dart';
import '../../logic/profile_state.dart';
import 'countries_single_item.dart';

class CountriesBlocBuilder extends StatefulWidget {
  const CountriesBlocBuilder({super.key});

  @override
  State<CountriesBlocBuilder> createState() => _CountriesBlocBuilderState();
}

class _CountriesBlocBuilderState extends State<CountriesBlocBuilder> {
  List<CountriesResponseModel>? loadedCountries;

  Future<void> _loadData() async {
    try {
      final countriesBox = await Hive.openBox<List>(kCountriesBox);
      final countriesData = countriesBox.get(kCountriesData);
      if (countriesData != null) {
        setState(() {
          loadedCountries = List<CountriesResponseModel>.from(
              countriesData.map((e) => e as CountriesResponseModel));
        });
      }
    } catch (e) {
      print("Error loading cached countries: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
            countriesLoading: () => setupLoading(),
            countriesSuccess: (countries) => setupSuccess(countries),
            countriesFailure: (error) => setupError(error),
            orElse: () {
              if (loadedCountries != null) {
                return setupSuccess(loadedCountries!);
              }
              return SizedBox.shrink();
            });
      },
    );
  }

  Widget setupError(String error) {
    return Expanded(
      child: Center(
        child: Text(
          error,
          style: AppStyles.font18WhiteSemiBold,
        ),
      ),
    );
  }

  Widget setupLoading() {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  Widget setupSuccess(List<CountriesResponseModel> countries) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: countries.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CountriesSingleItem(
            data: countries[index],
          );
        },
      ),
    );
  }
}
