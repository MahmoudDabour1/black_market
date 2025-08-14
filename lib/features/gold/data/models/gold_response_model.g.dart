// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gold_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoldResponseModel _$GoldResponseModelFromJson(Map<String, dynamic> json) =>
    GoldResponseModel(
      id: (json['id'] as num?)?.toInt(),
      icon: json['icon'] as String?,
      name: json['name'] as String?,
      karat: json['karat'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoldResponseModelToJson(GoldResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'karat': instance.karat,
      'sort': instance.sort,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'price': instance.price,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      id: (json['id'] as num?)?.toInt(),
      goldId: (json['gold_id'] as num?)?.toInt(),
      currencyId: (json['currency_id'] as num?)?.toInt(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      hour: (json['hour'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      buyPrice: (json['buy_price'] as num?)?.toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'id': instance.id,
      'gold_id': instance.goldId,
      'currency_id': instance.currencyId,
      'date': instance.date?.toIso8601String(),
      'hour': instance.hour,
      'price': instance.price,
      'buy_price': instance.buyPrice,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
