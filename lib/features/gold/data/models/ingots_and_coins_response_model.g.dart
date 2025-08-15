// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingots_and_coins_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngotsAndCoinsResponseModel _$IngotsAndCoinsResponseModelFromJson(
        Map<String, dynamic> json) =>
    IngotsAndCoinsResponseModel(
      ingots: (json['ingots'] as List<dynamic>?)
          ?.map((e) => Coin.fromJson(e as Map<String, dynamic>))
          .toList(),
      coins: (json['coins'] as List<dynamic>?)
          ?.map((e) => Coin.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IngotsAndCoinsResponseModelToJson(
        IngotsAndCoinsResponseModel instance) =>
    <String, dynamic>{
      'ingots': instance.ingots,
      'coins': instance.coins,
    };

Coin _$CoinFromJson(Map<String, dynamic> json) => Coin(
      id: (json['id'] as num?)?.toInt(),
      baseGoldItem: (json['base_gold_item'] as num?)?.toInt(),
      icon: json['icon'] as String?,
      name: json['name'] as String?,
      karat: json['karat'] as String?,
      weight: json['weight'],
      sort: (json['sort'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      companiesData: (json['companies_data'] as List<dynamic>?)
          ?.map((e) => CompaniesDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
      'id': instance.id,
      'base_gold_item': instance.baseGoldItem,
      'icon': instance.icon,
      'name': instance.name,
      'karat': instance.karat,
      'weight': instance.weight,
      'sort': instance.sort,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'companies_data': instance.companiesData,
      'price': instance.price,
    };

CompaniesDatum _$CompaniesDatumFromJson(Map<String, dynamic> json) =>
    CompaniesDatum(
      id: (json['id'] as num?)?.toInt(),
      companyId: (json['company_id'] as num?)?.toInt(),
      coinId: (json['coin_id'] as num?)?.toInt(),
      workmanship: (json['workmanship'] as num?)?.toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
      returnFees: (json['return_fees'] as num?)?.toDouble(),
      price: json['price'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      ingotId: (json['ingot_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CompaniesDatumToJson(CompaniesDatum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'coin_id': instance.coinId,
      'workmanship': instance.workmanship,
      'tax': instance.tax,
      'return_fees': instance.returnFees,
      'price': instance.price,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'ingot_id': instance.ingotId,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      id: (json['id'] as num?)?.toInt(),
      goldCoinId: (json['gold_coin_id'] as num?)?.toInt(),
      buyPrice: (json['buy_price'] as num?)?.toDouble(),
      sellPrice: (json['sell_price'] as num?)?.toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      goldIngotId: (json['gold_ingot_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'id': instance.id,
      'gold_coin_id': instance.goldCoinId,
      'buy_price': instance.buyPrice,
      'sell_price': instance.sellPrice,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'gold_ingot_id': instance.goldIngotId,
    };
