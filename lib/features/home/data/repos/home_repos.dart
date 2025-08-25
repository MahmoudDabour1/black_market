import 'package:black_market/core/networking/api_error_handler.dart';
import 'package:black_market/core/networking/api_result.dart';
import 'package:black_market/core/routing/router_observer.dart';
import 'package:black_market/features/home/data/data_sources/home_local_data_source.dart';
import 'package:black_market/features/home/data/models/banks_response_model.dart';
import 'package:black_market/features/home/data/models/currencies_response_model.dart';

import '../data_sources/home_remote_data_source.dart';

abstract class HomeRepos {
  Future<ApiResult<List<BanksResponseModel>>> getBanksList();
  Future<ApiResult<List<CurrenciesResponseModel>>> getCurrenciesList();
}

class HomeRepoImpl implements HomeRepos {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });

  @override
  Future<ApiResult<List<BanksResponseModel>>> getBanksList() async {
    try {
      final response = await homeRemoteDataSource.getBanksList();
      await homeLocalDataSource.cachedBanksData(response);
      return ApiResult.success(response);
    } catch (e) {
      final cachedData = homeLocalDataSource.getCachedBanksData();
      if (cachedData != null) {
        return ApiResult.success(cachedData);
      }
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<List<CurrenciesResponseModel>>> getCurrenciesList() async {
    try {
      final response = await homeRemoteDataSource.getCurrenciesList();
      await homeLocalDataSource.cachedCurrenciesData(response);
      return ApiResult.success(response);
    } catch (e) {
      logger.w(e.toString());
      final cachedData = homeLocalDataSource.getCachedCurrenciesData();
      if (cachedData != null) {
        return ApiResult.success(cachedData);
      }
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
