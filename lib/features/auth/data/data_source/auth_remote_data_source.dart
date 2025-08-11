import 'package:black_market/features/auth/data/models/login_response_model.dart';
import 'package:black_market/features/auth/data/models/register_request_model.dart';
import 'package:black_market/features/auth/data/models/register_response_model.dart';
import 'package:black_market/features/auth/data/models/update_password_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/login_request_model.dart';
import '../models/update_password_request_model.dart';

part 'auth_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio, {String baseUrl}) =
      _AuthRemoteDataSource;

  @POST(ApiConstants.loginEp)
  Future<LoginResponseModel> login(
    @Body() LoginRequestModel loginRequestModel,
  );

  @POST(ApiConstants.registerEp)
  Future<RegisterResponseModel> register(
    @Body() RegisterRequestModel registerRequestModel,
  );

  @POST(ApiConstants.forgetPasswordEp)
  Future<String> forgetPassword(
    @Body() Map<String, dynamic> body,
  );

  @POST(ApiConstants.updateForgetPasswordEP)
  Future<UpdatePasswordResponseModel> updateForgetPassword(
    @Body() UpdatePasswordRequestModel updatePasswordRequestModel,
  );
}
