import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/features/home/data/models/banks_response_model.dart';
import 'package:black_market/features/home/data/models/currencies_response_model.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  Future<void> cachedBanksData(List<BanksResponseModel> banks);

  List<BanksResponseModel>? getCachedBanksData();

  Future<void> cachedCurrenciesData(List<CurrenciesResponseModel> banks);

  List<CurrenciesResponseModel>? getCachedCurrenciesData();


}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final Box<List> banksBox;
  final Box<List> currenciesBox;


  HomeLocalDataSourceImpl(this.banksBox, this.currenciesBox);

  @override
  Future<void> cachedBanksData(List<BanksResponseModel> banks) async {
   await banksBox.put(kBanksBox, banks);
  }

  @override
  List<BanksResponseModel>? getCachedBanksData() {
    final data = banksBox.get(kBanksBox);
    if (data == null) return null;
    return data.cast<BanksResponseModel>();
  }

  @override
  Future<void> cachedCurrenciesData(List<CurrenciesResponseModel> banks)async {
   await currenciesBox.put(kCurrenciesBox, banks);
  }

  @override
  List<CurrenciesResponseModel>? getCachedCurrenciesData() {
    final data = currenciesBox.get(kCurrenciesBox);
    if (data == null) return null;
    return data.cast<CurrenciesResponseModel>();
  }
}
