import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currencies_response_model.g.dart';

@HiveType(typeId: 8)
@JsonSerializable()
class CurrenciesResponseModel {
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;

  @HiveField(1)
  @JsonKey(name: "banner")
  final dynamic banner;

  @HiveField(2)
  @JsonKey(name: "icon")
  final String? icon;

  @HiveField(3)
  @JsonKey(name: "name")
  final String? name;

  @HiveField(4)
  @JsonKey(name: "code")
  final String? code;

  @HiveField(5)
  @JsonKey(name: "can_be_main")
  final int? canBeMain;

  @HiveField(6)
  @JsonKey(name: "scrape_from_binance")
  final int? scrapeFromBinance;

  @HiveField(7)
  @JsonKey(name: "sort")
  final int? sort;

  @HiveField(8)
  @JsonKey(name: "show_network_image")
  final int? showNetworkImage;

  @HiveField(9)
  @JsonKey(name: "last_update")
  final DateTime? lastUpdate;

  @HiveField(10)
  @JsonKey(name: "created_at")
  final DateTime? createdAt;

  @HiveField(11)
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @HiveField(12)
  @JsonKey(name: "live_prices")
  final List<CurrenciesPrice>? livePrices;

  @HiveField(13)
  @JsonKey(name: "black_market_prices")
  final List<CurrenciesPrice>? blackMarketPrices;

  @HiveField(14)
  @JsonKey(name: "bank_prices")
  final List<CurrenciesPrice>? bankPrices;

  CurrenciesResponseModel({
    this.id,
    this.banner,
    this.icon,
    this.name,
    this.code,
    this.canBeMain,
    this.scrapeFromBinance,
    this.sort,
    this.showNetworkImage,
    this.lastUpdate,
    this.createdAt,
    this.updatedAt,
    this.livePrices,
    this.blackMarketPrices,
    this.bankPrices,
  });

  factory CurrenciesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrenciesResponseModelToJson(this);
}

@HiveType(typeId: 9)
@JsonSerializable()
class CurrenciesPrice {
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;

  @HiveField(1)
  @JsonKey(name: "bank_id")
  final int? bankId;

  @HiveField(2)
  @JsonKey(name: "currency_id")
  final int? currencyId;

  @HiveField(3)
  @JsonKey(name: "buy_price")
  final double? buyPrice;

  @HiveField(4)
  @JsonKey(name: "sell_price")
  final double? sellPrice;

  @HiveField(5)
  @JsonKey(name: "date")
  final DateTime? date;

  @HiveField(6)
  @JsonKey(name: "created_at")
  final DateTime? createdAt;

  @HiveField(7)
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @HiveField(8)
  @JsonKey(name: "hour")
  final int? hour;

  @HiveField(9)
  @JsonKey(name: "price")
  final double? price;

  CurrenciesPrice({
    this.id,
    this.bankId,
    this.currencyId,
    this.buyPrice,
    this.sellPrice,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.hour,
    this.price,
  });
  factory CurrenciesPrice.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesPriceFromJson(json);
  Map<String, dynamic> toJson() => _$CurrenciesPriceToJson(this);
}
