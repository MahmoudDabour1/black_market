import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../logic/profile_cubit.dart';
import '../../logic/profile_state.dart';
import 'countries_single_item.dart';

class CountriesBlocBuilder extends StatelessWidget {
  const CountriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
            countriesLoading: () => setupLoading(),
            countriesSuccess: (countries) => setupSuccess(countries),
            countriesFailure: (error) => setupError(error),
            orElse: () => SizedBox.shrink());
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

  Widget setupSuccess(countries) {
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
