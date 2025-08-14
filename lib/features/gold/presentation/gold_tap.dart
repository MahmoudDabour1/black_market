import 'package:black_market/core/theming/app_colors.dart';
import 'package:black_market/features/gold/logic/gold_cubit.dart';
import 'package:black_market/features/gold/presentation/widgets/gold_widgets/gold_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/gold_state.dart';

class GoldTap extends StatelessWidget {
  const GoldTap({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldCubit, GoldState>(
      buildWhen: (previous, current) {
        return current is GoldLoading ||
            current is GoldSuccess ||
            current is GoldFailure;
      },
      builder: (context, state) {
        return state.maybeWhen(
          goldSuccess: (data) => setupSuccess(data),
          goldLoading: () => setupLoading(),
          goldFailure: (error) => setupError(error),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }

  Center setupLoading() {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.primaryColor,
      ),
    );
  }

  SizedBox setupError(String error) {
    return SizedBox(
      height: 100,
      child: Center(
        child: Text(
          'Error: $error',
          style: TextStyle(color: Colors.red, fontSize: 16),
        ),
      ),
    );
  }

  GoldGridView setupSuccess(data) {
    return GoldGridView(
      data: data,
    );
  }
}
