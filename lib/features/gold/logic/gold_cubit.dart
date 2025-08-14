import 'package:black_market/core/routing/router_observer.dart';
import 'package:black_market/features/gold/data/repos/gold_repos.dart';
import 'package:bloc/bloc.dart';

import 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepos goldRepos;

  GoldCubit(this.goldRepos) : super(GoldState.initial());

  Future<void> fetchGoldPrices() async {
    emit(GoldState.goldLoading());
    final response = await goldRepos.getGoldPrice();
    response.when(
      success: (data) {
        emit(GoldState.goldSuccess(data));
      },
      failure: (error) {
        logger.w(error.toString());
        emit(GoldState.goldFailure(error.toString()));
      },
    );
  }
}
