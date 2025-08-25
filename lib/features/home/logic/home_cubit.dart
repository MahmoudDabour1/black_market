import 'package:black_market/features/home/data/repos/home_repos.dart';
import 'package:bloc/bloc.dart';

import '../../../core/routing/router_observer.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepos homeRepos;

  HomeCubit(this.homeRepos) : super(HomeState.initial());

  Future<void> getBanksList() async {
    final response = await homeRepos.getBanksList();
    response.when(
      success: (banks) {
        emit(HomeState.banksSuccess(banks));
      },
      failure: (e) {
        emit(HomeState.banksFailure(errorMessage: e.toString()));
      },
    );
  }

  Future<void> getCurrenciesList() async {
    final response = await homeRepos.getCurrenciesList();
    response.when(
      success: (currencies) {
        emit(HomeState.currenciesSuccess(currencies));
      },
      failure: (e) {
        logger.w(e.toString());

        emit(HomeState.currenciesFailure(errorMessage: e.toString()));
      },
    );
  }
}
