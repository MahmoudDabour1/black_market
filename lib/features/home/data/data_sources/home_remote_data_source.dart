import 'package:black_market/features/home/data/models/banks_response_model.dart';
import 'package:black_market/features/home/data/models/currencies_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
part 'home_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeRemoteDataSource {
  factory HomeRemoteDataSource(Dio dio) = _HomeRemoteDataSource;

  @GET(ApiConstants.banksEP)
  Future<List<BanksResponseModel>> getBanksList();

  @GET(ApiConstants.currenciesEP)
  Future<List<CurrenciesResponseModel>> getCurrenciesList();
}
