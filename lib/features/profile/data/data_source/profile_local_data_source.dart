import 'package:black_market/features/profile/data/models/about_app_response_model.dart';
import 'package:black_market/features/profile/data/models/countries_response_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/utils/app_constants.dart';

abstract class ProfileLocalDataSource {
  Future<void> cachedCountriesData(
      List<CountriesResponseModel> countriesResponseModel);

  List<CountriesResponseModel>? getCountriesData();

  Future<void> cachedAboutAppData(AboutAppResponseModel aboutAppResponseModel);

  AboutAppResponseModel? getAboutAppData();
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final Box<List> countriesBox;

  ProfileLocalDataSourceImpl(this.countriesBox);

  Box<AboutAppResponseModel> aboutAppBox =
      Hive.box<AboutAppResponseModel>(kAboutAppBox);

  @override
  Future<void> cachedCountriesData(
      List<CountriesResponseModel> countriesResponseModel) async {
    await countriesBox.put(kCountriesData, countriesResponseModel);
  }

  @override
  List<CountriesResponseModel>? getCountriesData() {
    final data = countriesBox.get(kCountriesData);
    if (data == null) return null;
    return data.cast<CountriesResponseModel>();
  }

  @override
  Future<void> cachedAboutAppData(
      AboutAppResponseModel aboutAppResponseModel) async {
    await aboutAppBox.put(kAboutAppData, aboutAppResponseModel);
  }

  @override
  AboutAppResponseModel? getAboutAppData() {
    return aboutAppBox.get(kAboutAppData);
  }
}
