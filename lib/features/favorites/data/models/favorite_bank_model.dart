import 'package:hive/hive.dart';

import '../../../home/data/models/banks_response_model.dart';
import '../../../home/data/models/currencies_response_model.dart';

part 'favorite_bank_model.g.dart';

@HiveType(typeId: 10)
class FavoriteBankModel {
  @HiveField(0)
  final BanksResponseModel bank;

  @HiveField(1)
  final CurrenciesPrice price;

  FavoriteBankModel({required this.bank, required this.price});
}
