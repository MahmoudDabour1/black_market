// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banks_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BanksResponseModelAdapter extends TypeAdapter<BanksResponseModel> {
  @override
  final int typeId = 5;

  @override
  BanksResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BanksResponseModel(
      id: fields[0] as int?,
      banner: fields[1] as dynamic,
      icon: fields[2] as String?,
      name: fields[3] as String?,
      hotline: fields[4] as String?,
      calculateBasedOnBank: fields[5] as int?,
      sort: fields[6] as int?,
      showNetworkImage: fields[7] as int?,
      isVirtual: fields[8] as int?,
      shortname: fields[9] as String?,
      active: fields[10] as int?,
      createdAt: fields[11] as DateTime?,
      updatedAt: fields[12] as DateTime?,
      branches: (fields[13] as List?)?.cast<Branch>(),
    );
  }

  @override
  void write(BinaryWriter writer, BanksResponseModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.banner)
      ..writeByte(2)
      ..write(obj.icon)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.hotline)
      ..writeByte(5)
      ..write(obj.calculateBasedOnBank)
      ..writeByte(6)
      ..write(obj.sort)
      ..writeByte(7)
      ..write(obj.showNetworkImage)
      ..writeByte(8)
      ..write(obj.isVirtual)
      ..writeByte(9)
      ..write(obj.shortname)
      ..writeByte(10)
      ..write(obj.active)
      ..writeByte(11)
      ..write(obj.createdAt)
      ..writeByte(12)
      ..write(obj.updatedAt)
      ..writeByte(13)
      ..write(obj.branches);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BanksResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BranchAdapter extends TypeAdapter<Branch> {
  @override
  final int typeId = 6;

  @override
  Branch read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Branch(
      id: fields[0] as int?,
      bankId: fields[1] as int?,
      name: fields[2] as Name?,
      address: fields[3] as String?,
      createdAt: fields[4] as dynamic,
      updatedAt: fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Branch obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.bankId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.address)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BranchAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NameAdapter extends TypeAdapter<Name> {
  @override
  final int typeId = 7;

  @override
  Name read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Name.EL_GIZIRA_ELECTRONIC_BRANCH;
      case 1:
        return Name.EL_JAZEERA_YOUTH_CENTER_BRANCH;
      case 2:
        return Name.TOWER_BRANCH;
      case 3:
        return Name.ZAMALEK_BRANCH;
      default:
        return Name.EL_GIZIRA_ELECTRONIC_BRANCH;
    }
  }

  @override
  void write(BinaryWriter writer, Name obj) {
    switch (obj) {
      case Name.EL_GIZIRA_ELECTRONIC_BRANCH:
        writer.writeByte(0);
        break;
      case Name.EL_JAZEERA_YOUTH_CENTER_BRANCH:
        writer.writeByte(1);
        break;
      case Name.TOWER_BRANCH:
        writer.writeByte(2);
        break;
      case Name.ZAMALEK_BRANCH:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BanksResponseModel _$BanksResponseModelFromJson(Map<String, dynamic> json) =>
    BanksResponseModel(
      id: (json['id'] as num?)?.toInt(),
      banner: json['banner'],
      icon: json['icon'] as String?,
      name: json['name'] as String?,
      hotline: json['hotline'] as String?,
      calculateBasedOnBank: (json['calculate_based_on_bank'] as num?)?.toInt(),
      sort: (json['sort'] as num?)?.toInt(),
      showNetworkImage: (json['show_network_image'] as num?)?.toInt(),
      isVirtual: (json['is_virtual'] as num?)?.toInt(),
      shortname: json['shortname'] as String?,
      active: (json['active'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      branches: (json['branches'] as List<dynamic>?)
          ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BanksResponseModelToJson(BanksResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner': instance.banner,
      'icon': instance.icon,
      'name': instance.name,
      'hotline': instance.hotline,
      'calculate_based_on_bank': instance.calculateBasedOnBank,
      'sort': instance.sort,
      'show_network_image': instance.showNetworkImage,
      'is_virtual': instance.isVirtual,
      'shortname': instance.shortname,
      'active': instance.active,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'branches': instance.branches,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: (json['id'] as num?)?.toInt(),
      bankId: (json['bank_id'] as num?)?.toInt(),
      name: $enumDecodeNullable(_$NameEnumMap, json['name']),
      address: json['address'] as String?,
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'id': instance.id,
      'bank_id': instance.bankId,
      'name': _$NameEnumMap[instance.name],
      'address': instance.address,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

const _$NameEnumMap = {
  Name.EL_GIZIRA_ELECTRONIC_BRANCH: 'El Gizira Electronic Branch',
  Name.EL_JAZEERA_YOUTH_CENTER_BRANCH: 'El Jazeera Youth Center Branch',
  Name.TOWER_BRANCH: 'Tower Branch',
  Name.ZAMALEK_BRANCH: 'Zamalek Branch',
};
