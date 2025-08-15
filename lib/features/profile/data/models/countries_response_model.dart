import 'package:json_annotation/json_annotation.dart';
part 'countries_response_model.g.dart';
@JsonSerializable()
class CountriesResponseModel {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "banner")
  final dynamic banner;
  @JsonKey(name: "icon")
  final String? icon;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "code")
  final String? code;
  @JsonKey(name: "can_be_main")
  final int? canBeMain;
  @JsonKey(name: "scrape_from_binance")
  final int? scrapeFromBinance;
  @JsonKey(name: "sort")
  final int? sort;
  @JsonKey(name: "show_network_image")
  final int? showNetworkImage;
  @JsonKey(name: "last_update")
  final DateTime? lastUpdate;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "live_prices")
  final List<Price>? livePrices;
  @JsonKey(name: "black_market_prices")
  final List<Price>? blackMarketPrices;
  @JsonKey(name: "bank_prices")
  final List<Price>? bankPrices;

  CountriesResponseModel({
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

  factory CountriesResponseModel.fromJson(Map<String, dynamic> json) => _$CountriesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CountriesResponseModelToJson(this);
}

@JsonSerializable()
class Price {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "bank_id")
  final int? bankId;
  @JsonKey(name: "currency_id")
  final int? currencyId;
  @JsonKey(name: "buy_price")
  final double? buyPrice;
  @JsonKey(name: "sell_price")
  final double? sellPrice;
  @JsonKey(name: "date")
  final DateTime? date;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "hour")
  final int? hour;
  @JsonKey(name: "price")
  final double? price;

  Price({
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

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
