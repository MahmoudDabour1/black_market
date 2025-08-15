import 'package:black_market/features/profile/data/repos/profile_repos.dart';
import 'package:black_market/features/profile/logic/profile_state.dart';
import 'package:bloc/bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepos profileRepos;

  ProfileCubit(this.profileRepos) : super(ProfileState.initial());

  Future<void> getCountries() async {
    emit(ProfileState.countriesLoading());
    final response = await profileRepos.getCountries();
    response.when(
      success: (data) {
        emit(ProfileState.countriesSuccess(data));
      },
      failure: (e) {
        emit(ProfileState.countriesFailure(errorMessage: e.toString()));
      },
    );
  }

  Future<void> getAboutApp() async {
    emit(ProfileState.aboutAppLoading());
    final response = await profileRepos.getAboutApp();
    response.when(
      success: (data) {
        emit(ProfileState.aboutAppSuccess(data));
      },
      failure: (e) {
        emit(ProfileState.aboutAppFailure(errorMessage: e.toString()));
      },
    );
  }
}
