import 'package:black_market/core/networking/api_result.dart';
import 'package:black_market/features/auth/data/data_source/auth_local_data_source.dart';
import 'package:black_market/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:black_market/features/auth/data/models/login_request_model.dart';
import 'package:black_market/features/auth/data/models/login_response_model.dart';
import 'package:black_market/features/auth/data/models/register_request_model.dart';
import 'package:black_market/features/auth/data/models/register_response_model.dart';
import 'package:black_market/features/auth/data/models/update_password_request_model.dart';
import 'package:black_market/features/auth/data/models/update_password_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/routing/router_observer.dart';

abstract class AuthRepos {
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestModel loginRequestModel);

  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestModel registerRequestModel);

  Future<ApiResult<String>> forgetPassword(Map<String, dynamic> body);

  Future<ApiResult<UpdatePasswordResponseModel>> updateForgetPassword(
      UpdatePasswordRequestModel updatePasswordRequestModel);
}

class AuthReposImpl implements AuthRepos {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthReposImpl(
      {required this.authRemoteDataSource, required this.authLocalDataSource});

  @override
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      final response = await authRemoteDataSource.login(loginRequestModel);
      await authLocalDataSource.cachedUserData(response);
      return ApiResult.success(response);
    } catch (e) {
      logger.w(e.toString());
      final cachedData = authLocalDataSource.getCachedUserData();
      if (cachedData != null) {
        return ApiResult.success(cachedData);
      }
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestModel registerRequestModel) async {
    try {
      final response =
          await authRemoteDataSource.register(registerRequestModel);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<String>> forgetPassword(Map<String, dynamic> body) async {
    try {
      final response = await authRemoteDataSource.forgetPassword(body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<UpdatePasswordResponseModel>> updateForgetPassword(
      UpdatePasswordRequestModel updatePasswordRequestModel) async {
    try {
      final response = await authRemoteDataSource
          .updateForgetPassword(updatePasswordRequestModel);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
