import 'package:json_annotation/json_annotation.dart';
part 'ingots_and_coins_response_model.g.dart';

@JsonSerializable()
class IngotsAndCoinsResponseModel {
  @JsonKey(name: "ingots")
  final List<Coin>? ingots;
  @JsonKey(name: "coins")
  final List<Coin>? coins;

  IngotsAndCoinsResponseModel({
    this.ingots,
    this.coins,
  });

  factory IngotsAndCoinsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$IngotsAndCoinsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$IngotsAndCoinsResponseModelToJson(this);
}

@JsonSerializable()
class Coin {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "base_gold_item")
  final int? baseGoldItem;
  @JsonKey(name: "icon")
  final String? icon;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "karat")
  final String? karat;
  @JsonKey(name: "weight")
  final dynamic weight;
  @JsonKey(name: "sort")
  final int? sort;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "companies_data")
  final List<CompaniesDatum>? companiesData;
  @JsonKey(name: "price")
  final Price? price;

  Coin({
    this.id,
    this.baseGoldItem,
    this.icon,
    this.name,
    this.karat,
    this.weight,
    this.sort,
    this.createdAt,
    this.updatedAt,
    this.companiesData,
    this.price,
  });

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);

  Map<String, dynamic> toJson() => _$CoinToJson(this);
}

@JsonSerializable()
class CompaniesDatum {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "company_id")
  final int? companyId;
  @JsonKey(name: "coin_id")
  final int? coinId;
  @JsonKey(name: "workmanship")
  final double? workmanship;
  @JsonKey(name: "tax")
  final double? tax;
  @JsonKey(name: "return_fees")
  final double? returnFees;
  @JsonKey(name: "price")
  final dynamic price;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "ingot_id")
  final int? ingotId;

  CompaniesDatum({
    this.id,
    this.companyId,
    this.coinId,
    this.workmanship,
    this.tax,
    this.returnFees,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.ingotId,
  });

  factory CompaniesDatum.fromJson(Map<String, dynamic> json) =>
      _$CompaniesDatumFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesDatumToJson(this);
}

@JsonSerializable()
class Price {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "gold_coin_id")
  final int? goldCoinId;
  @JsonKey(name: "buy_price")
  final double? buyPrice;
  @JsonKey(name: "sell_price")
  final double? sellPrice;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "gold_ingot_id")
  final int? goldIngotId;

  Price({
    this.id,
    this.goldCoinId,
    this.buyPrice,
    this.sellPrice,
    this.createdAt,
    this.updatedAt,
    this.goldIngotId,
  });

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
