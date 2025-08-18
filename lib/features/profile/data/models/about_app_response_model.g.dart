// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_app_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AboutAppResponseModelAdapter extends TypeAdapter<AboutAppResponseModel> {
  @override
  final int typeId = 4;

  @override
  AboutAppResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AboutAppResponseModel(
      homeGlobalBanner: fields[0] as String?,
      homeGlobalYellowBanner: fields[1] as String?,
      banksGlobalBanner: fields[2] as String?,
      banksGlobalYellowBanner: fields[3] as String?,
      aboveBanksCard: fields[4] as String?,
      aboveBanksCardYellow: fields[5] as String?,
      enableRateDialog: fields[6] as String?,
      aboutText: fields[7] as String?,
      dealingCaution: fields[8] as String?,
      displayViewsCounter: fields[9] as String?,
      minAndroidVersion: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AboutAppResponseModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.homeGlobalBanner)
      ..writeByte(1)
      ..write(obj.homeGlobalYellowBanner)
      ..writeByte(2)
      ..write(obj.banksGlobalBanner)
      ..writeByte(3)
      ..write(obj.banksGlobalYellowBanner)
      ..writeByte(4)
      ..write(obj.aboveBanksCard)
      ..writeByte(5)
      ..write(obj.aboveBanksCardYellow)
      ..writeByte(6)
      ..write(obj.enableRateDialog)
      ..writeByte(7)
      ..write(obj.aboutText)
      ..writeByte(8)
      ..write(obj.dealingCaution)
      ..writeByte(9)
      ..write(obj.displayViewsCounter)
      ..writeByte(10)
      ..write(obj.minAndroidVersion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AboutAppResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutAppResponseModel _$AboutAppResponseModelFromJson(
        Map<String, dynamic> json) =>
    AboutAppResponseModel(
      homeGlobalBanner: json['home_global_banner'] as String?,
      homeGlobalYellowBanner: json['home_global_yellow_banner'] as String?,
      banksGlobalBanner: json['banks_global_banner'] as String?,
      banksGlobalYellowBanner: json['banks_global_yellow_banner'] as String?,
      aboveBanksCard: json['above_banks_card'] as String?,
      aboveBanksCardYellow: json['above_banks_card_yellow'] as String?,
      enableRateDialog: json['enable_rate_dialog'] as String?,
      aboutText: json['about_text'] as String?,
      dealingCaution: json['dealing_caution'] as String?,
      displayViewsCounter: json['display_views_counter'] as String?,
      minAndroidVersion: json['min_android_version'] as String?,
    );

Map<String, dynamic> _$AboutAppResponseModelToJson(
        AboutAppResponseModel instance) =>
    <String, dynamic>{
      'home_global_banner': instance.homeGlobalBanner,
      'home_global_yellow_banner': instance.homeGlobalYellowBanner,
      'banks_global_banner': instance.banksGlobalBanner,
      'banks_global_yellow_banner': instance.banksGlobalYellowBanner,
      'above_banks_card': instance.aboveBanksCard,
      'above_banks_card_yellow': instance.aboveBanksCardYellow,
      'enable_rate_dialog': instance.enableRateDialog,
      'about_text': instance.aboutText,
      'dealing_caution': instance.dealingCaution,
      'display_views_counter': instance.displayViewsCounter,
      'min_android_version': instance.minAndroidVersion,
    };
