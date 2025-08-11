import 'package:black_market/core/extensions/navigation_extension.dart';
import 'package:black_market/core/routing/routes.dart';
import 'package:black_market/features/auth/data/models/login_request_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/helper_methods.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/helpers/shared_pref_keys.dart';
import '../../../core/networking/dio_factory.dart';
import '../data/models/register_request_model.dart';
import '../data/repos/auth_repos.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepos authRepos;

  AuthCubit(this.authRepos) : super(AuthState.initial());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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

  //register
  Future<void> register() async {
    emit(AuthState.registerLoading());
    final response = await authRepos.register(
      RegisterRequestModel(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        password_confirmation: confirmPasswordController.text,
      ),
    );
    response.when(success: (data) async {
      emit(AuthState.registerSuccess(data));
      await saveUserToken(data.accessToken ?? "");
      showToast(message: "Registration successful", isError: false);
    }, failure: (error) {
      emit(AuthState.registerError(error.toString()));
      showToast(message: error.toString(), isError: true);
    });
  }

  //forget password
  Future<void> forgetPassword(BuildContext context) async {
    emit(AuthState.forgetPasswordLoading());
    final requestBody = {
      "email": emailController.text,
    };
    final response = await authRepos.forgetPassword(requestBody);
    await SharedPrefHelper.setData(
        SharedPrefKeys.userEmailAddress, emailController.text);
    response.when(success: (data) {
      emit(AuthState.forgetPasswordSuccess(data));
      showToast(
          message: "Password reset link sent to your email", isError: false);
      context.pushNamed(
        Routes.otpScreen,
        arguments: emailController.text,
      );
    }, failure: (error) {
      emit(AuthState.forgetPasswordError(error.toString()));
      showToast(message: error.toString(), isError: true);
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
