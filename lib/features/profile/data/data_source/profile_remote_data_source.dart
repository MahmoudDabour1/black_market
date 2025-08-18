import 'package:black_market/features/profile/data/models/countries_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/about_app_response_model.dart';

part 'profile_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileRemoteDataSource {
  factory ProfileRemoteDataSource(Dio dio, {String baseUrl}) =
      _ProfileRemoteDataSource;

  @GET(ApiConstants.countriesEP)
  Future<List<CountriesResponseModel>> getCountries();

  @GET(ApiConstants.settingsEP)
  Future<AboutAppResponseModel> getAboutApp();
}
