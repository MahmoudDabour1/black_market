// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrenciesResponseModelAdapter
    extends TypeAdapter<CurrenciesResponseModel> {
  @override
  final int typeId = 8;

  @override
  CurrenciesResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrenciesResponseModel(
      id: fields[0] as int?,
      banner: fields[1] as dynamic,
      icon: fields[2] as String?,
      name: fields[3] as String?,
      code: fields[4] as String?,
      canBeMain: fields[5] as int?,
      scrapeFromBinance: fields[6] as int?,
      sort: fields[7] as int?,
      showNetworkImage: fields[8] as int?,
      lastUpdate: fields[9] as DateTime?,
      createdAt: fields[10] as DateTime?,
      updatedAt: fields[11] as DateTime?,
      livePrices: (fields[12] as List?)?.cast<CurrenciesPrice>(),
      blackMarketPrices: (fields[13] as List?)?.cast<CurrenciesPrice>(),
      bankPrices: (fields[14] as List?)?.cast<CurrenciesPrice>(),
    );
  }

  @override
  void write(BinaryWriter writer, CurrenciesResponseModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.banner)
      ..writeByte(2)
      ..write(obj.icon)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.code)
      ..writeByte(5)
      ..write(obj.canBeMain)
      ..writeByte(6)
      ..write(obj.scrapeFromBinance)
      ..writeByte(7)
      ..write(obj.sort)
      ..writeByte(8)
      ..write(obj.showNetworkImage)
      ..writeByte(9)
      ..write(obj.lastUpdate)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.updatedAt)
      ..writeByte(12)
      ..write(obj.livePrices)
      ..writeByte(13)
      ..write(obj.blackMarketPrices)
      ..writeByte(14)
      ..write(obj.bankPrices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrenciesResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CurrenciesPriceAdapter extends TypeAdapter<CurrenciesPrice> {
  @override
  final int typeId = 9;

  @override
  CurrenciesPrice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrenciesPrice(
      id: fields[0] as int?,
      bankId: fields[1] as int?,
      currencyId: fields[2] as int?,
      buyPrice: fields[3] as double?,
      sellPrice: fields[4] as double?,
      date: fields[5] as DateTime?,
      createdAt: fields[6] as DateTime?,
      updatedAt: fields[7] as DateTime?,
      hour: fields[8] as int?,
      price: fields[9] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, CurrenciesPrice obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.bankId)
      ..writeByte(2)
      ..write(obj.currencyId)
      ..writeByte(3)
      ..write(obj.buyPrice)
      ..writeByte(4)
      ..write(obj.sellPrice)
      ..writeByte(5)
      ..write(obj.date)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.updatedAt)
      ..writeByte(8)
      ..write(obj.hour)
      ..writeByte(9)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrenciesPriceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrenciesResponseModel _$CurrenciesResponseModelFromJson(
        Map<String, dynamic> json) =>
    CurrenciesResponseModel(
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
          ?.map((e) => CurrenciesPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      blackMarketPrices: (json['black_market_prices'] as List<dynamic>?)
          ?.map((e) => CurrenciesPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      bankPrices: (json['bank_prices'] as List<dynamic>?)
          ?.map((e) => CurrenciesPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrenciesResponseModelToJson(
        CurrenciesResponseModel instance) =>
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

CurrenciesPrice _$CurrenciesPriceFromJson(Map<String, dynamic> json) =>
    CurrenciesPrice(
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

Map<String, dynamic> _$CurrenciesPriceToJson(CurrenciesPrice instance) =>
    <String, dynamic>{
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
