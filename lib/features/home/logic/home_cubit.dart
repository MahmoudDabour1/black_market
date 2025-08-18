import 'package:black_market/features/home/data/repos/home_repos.dart';
import 'package:bloc/bloc.dart';

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
}
