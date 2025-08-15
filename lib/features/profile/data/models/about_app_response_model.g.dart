// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_app_response_model.dart';

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
