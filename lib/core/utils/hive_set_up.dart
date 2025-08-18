import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/features/auth/data/models/login_response_model.dart';
import 'package:black_market/features/home/data/models/banks_response_model.dart';
import 'package:black_market/features/profile/data/models/about_app_response_model.dart';
import 'package:black_market/features/profile/data/models/countries_response_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  _registerHiveAdapters();
  await Hive.openBox<List>(kCountriesBox);
  await Hive.openBox<LoginResponseModel>(kUserBox);
  await Hive.openBox<AboutAppResponseModel>(kAboutAppBox);
  await Hive.openBox<List>(kBanksBox);

}

void _registerHiveAdapters() {
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(CountriesResponseModelAdapter());
  }
  if (!Hive.isAdapterRegistered(1)) {
    Hive.registerAdapter(PriceAdapter());
  }
  if (!Hive.isAdapterRegistered(2)) {
    Hive.registerAdapter(LoginResponseModelAdapter());
  }
  if (!Hive.isAdapterRegistered(3)) {
    Hive.registerAdapter(UserAdapter());
  }
  if (!Hive.isAdapterRegistered(4)) {
    Hive.registerAdapter(AboutAppResponseModelAdapter());
  }
  if (!Hive.isAdapterRegistered(5)) {
    Hive.registerAdapter(BanksResponseModelAdapter());
  }
  if (!Hive.isAdapterRegistered(6)) {
    Hive.registerAdapter(BranchAdapter());
  }
  if (!Hive.isAdapterRegistered(7)) {
    Hive.registerAdapter(NameAdapter());
  }
}
