// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_bank_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteBankModelAdapter extends TypeAdapter<FavoriteBankModel> {
  @override
  final int typeId = 10;

  @override
  FavoriteBankModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteBankModel(
      bank: fields[0] as BanksResponseModel,
      price: fields[1] as CurrenciesPrice,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteBankModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.bank)
      ..writeByte(1)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteBankModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
