import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/features/home/data/models/banks_response_model.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  Future<void> cachedBanksData(List<BanksResponseModel> banks);

  List<BanksResponseModel>? getCachedBanksData();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final Box<List> banksBox;


  HomeLocalDataSourceImpl(this.banksBox);

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
}
