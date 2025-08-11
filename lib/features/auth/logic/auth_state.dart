import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.initial() = AuthInitial;

  const factory AuthState.loginLoading() = LoginLoading;

  const factory AuthState.loginSuccess(T data) = LoginSuccess;

  const factory AuthState.loginError(String message) = LoginError;

  const factory AuthState.registerLoading() = RegisterLoading;

  const factory AuthState.registerSuccess(T data) = RegisterSuccess;

  const factory AuthState.registerError(String message) = RegisterError;

  const factory AuthState.forgetPasswordLoading() = ForgetPasswordLoading;

  const factory AuthState.forgetPasswordSuccess(T data) = ForgetPasswordSuccess;

  const factory AuthState.forgetPasswordError(String message) = ForgetPasswordError;

  const factory AuthState.updatePasswordLoading() = UpdatePasswordLoading;

  const factory AuthState.updatePasswordSuccess(T data) = UpdatePasswordSuccess;

  const factory AuthState.updatePasswordError(String message) = UpdatePasswordError;
}
