import 'package:black_market/features/profile/data/models/countries_response_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/utils/app_constants.dart';

abstract class ProfileLocalDataSource {
  Future<void> cachedCountriesData(
      List<CountriesResponseModel> countriesResponseModel);

  List<CountriesResponseModel>? getCountriesData();
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final Box<List> countriesBox;

  ProfileLocalDataSourceImpl(this.countriesBox);

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
}
