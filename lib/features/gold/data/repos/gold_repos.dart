import 'package:black_market/features/gold/data/models/gold_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/routing/router_observer.dart';
import '../data_source/gold_remote_data_source.dart';

abstract class GoldRepos {
  Future<ApiResult<List<GoldResponseModel>>> getGoldPrice();
}

class GoldReposImpl implements GoldRepos {
  final GoldRemoteDataSource goldRemoteDataSource;

  GoldReposImpl(this.goldRemoteDataSource);

  @override
  Future<ApiResult<List<GoldResponseModel>>> getGoldPrice() async {
    try {
      final response = await goldRemoteDataSource.getGoldPrices();
      return ApiResult.success(response);
    } catch (e) {
      logger.w(e.toString());
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
