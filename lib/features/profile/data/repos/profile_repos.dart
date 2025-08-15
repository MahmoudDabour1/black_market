import 'package:black_market/core/networking/api_result.dart';
import 'package:black_market/core/routing/router_observer.dart';
import 'package:black_market/features/profile/data/models/about_app_response_model.dart';
import 'package:black_market/features/profile/data/models/countries_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../data_source/profile_remote_data_source.dart';

abstract class ProfileRepos {
  Future<ApiResult<List<CountriesResponseModel>>> getCountries();
  Future<ApiResult<AboutAppResponseModel>> getAboutApp();
}

class ProfileReposImpl implements ProfileRepos {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileReposImpl(this.profileRemoteDataSource);

  @override
  Future<ApiResult<List<CountriesResponseModel>>> getCountries() async {
    try {
      final response = await profileRemoteDataSource.getCountries();
      return ApiResult.success(response);
    } catch (e) {
      logger.e(e);
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<AboutAppResponseModel>> getAboutApp() async{
    try {
      final response = await profileRemoteDataSource.getAboutApp();
      return ApiResult.success(response);
    } catch (e) {
      logger.e(e);
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
