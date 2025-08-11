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
}
