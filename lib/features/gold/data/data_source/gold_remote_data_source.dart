import 'package:black_market/features/gold/data/models/companies_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/gold_response_model.dart';
import '../models/ingots_and_coins_response_model.dart';

part 'gold_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class GoldRemoteDataSource {
  factory GoldRemoteDataSource(Dio dio, {String baseUrl}) =
      _GoldRemoteDataSource;

  @GET(ApiConstants.goldEP)
  Future<List<GoldResponseModel>> getGoldPrices();

  @GET(ApiConstants.companiesEP)
  Future<List<CompaniesResponseModel>> getCompanies();

  @GET(ApiConstants.ingotsAndCoinsEP)
  Future<IngotsAndCoinsResponseModel> getIngotsAndCoins();
}
