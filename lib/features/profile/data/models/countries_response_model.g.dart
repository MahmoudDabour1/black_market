// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountriesResponseModel _$CountriesResponseModelFromJson(
        Map<String, dynamic> json) =>
    CountriesResponseModel(
      id: (json['id'] as num?)?.toInt(),
      banner: json['banner'],
      icon: json['icon'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      canBeMain: (json['can_be_main'] as num?)?.toInt(),
      scrapeFromBinance: (json['scrape_from_binance'] as num?)?.toInt(),
      sort: (json['sort'] as num?)?.toInt(),
      showNetworkImage: (json['show_network_image'] as num?)?.toInt(),
      lastUpdate: json['last_update'] == null
          ? null
          : DateTime.parse(json['last_update'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      livePrices: (json['live_prices'] as List<dynamic>?)
          ?.map((e) => Price.fromJson(e as Map<String, dynamic>))
          .toList(),
      blackMarketPrices: (json['black_market_prices'] as List<dynamic>?)
          ?.map((e) => Price.fromJson(e as Map<String, dynamic>))
          .toList(),
      bankPrices: (json['bank_prices'] as List<dynamic>?)
          ?.map((e) => Price.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CountriesResponseModelToJson(
        CountriesResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner': instance.banner,
      'icon': instance.icon,
      'name': instance.name,
      'code': instance.code,
      'can_be_main': instance.canBeMain,
      'scrape_from_binance': instance.scrapeFromBinance,
      'sort': instance.sort,
      'show_network_image': instance.showNetworkImage,
      'last_update': instance.lastUpdate?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'live_prices': instance.livePrices,
      'black_market_prices': instance.blackMarketPrices,
      'bank_prices': instance.bankPrices,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      id: (json['id'] as num?)?.toInt(),
      bankId: (json['bank_id'] as num?)?.toInt(),
      currencyId: (json['currency_id'] as num?)?.toInt(),
      buyPrice: (json['buy_price'] as num?)?.toDouble(),
      sellPrice: (json['sell_price'] as num?)?.toDouble(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      hour: (json['hour'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'id': instance.id,
      'bank_id': instance.bankId,
      'currency_id': instance.currencyId,
      'buy_price': instance.buyPrice,
      'sell_price': instance.sellPrice,
      'date': instance.date?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'hour': instance.hour,
      'price': instance.price,
    };
