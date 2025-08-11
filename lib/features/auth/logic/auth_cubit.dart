import 'package:black_market/features/auth/data/models/login_request_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/helper_methods.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/helpers/shared_pref_keys.dart';
import '../../../core/networking/dio_factory.dart';
import '../data/repos/auth_repos.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepos authRepos;

  AuthCubit(this.authRepos) : super(AuthState.initial());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //login
  Future<void> login() async {
    emit(AuthState.loginLoading());
    final response = await authRepos.login(
      LoginRequestModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (data) async {
      emit(AuthState.loginSuccess(data));
      await saveUserToken(data.accessToken ?? "");
      emailController.clear();
      passwordController.clear();
      showToast(message: "Login successful", isError: false);
    }, failure: (error) {
      emit(AuthState.loginError(error.toString()));
      showToast(message: error.toString(), isError: true);
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
