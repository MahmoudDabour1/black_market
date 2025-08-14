import 'package:json_annotation/json_annotation.dart';
part 'gold_response_model.g.dart';
@JsonSerializable()
class GoldResponseModel {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "icon")
  final String? icon;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "karat")
  final String? karat;
  @JsonKey(name: "sort")
  final int? sort;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "price")
  final Price? price;

  GoldResponseModel({
    this.id,
    this.icon,
    this.name,
    this.karat,
    this.sort,
    this.createdAt,
    this.updatedAt,
    this.price,
  });

  factory GoldResponseModel.fromJson(Map<String, dynamic> json) => _$GoldResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GoldResponseModelToJson(this);
}

@JsonSerializable()
class Price {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "gold_id")
  final int? goldId;
  @JsonKey(name: "currency_id")
  final int? currencyId;
  @JsonKey(name: "date")
  final DateTime? date;
  @JsonKey(name: "hour")
  final int? hour;
  @JsonKey(name: "price")
  final double? price;
  @JsonKey(name: "buy_price")
  final double? buyPrice;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  Price({
    this.id,
    this.goldId,
    this.currencyId,
    this.date,
    this.hour,
    this.price,
    this.buyPrice,
    this.createdAt,
    this.updatedAt,
  });

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
