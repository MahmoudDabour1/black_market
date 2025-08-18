import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'about_app_response_model.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class AboutAppResponseModel extends HiveObject {
  @HiveField(0)
  @JsonKey(name: "home_global_banner")
  final String? homeGlobalBanner;

  @HiveField(1)
  @JsonKey(name: "home_global_yellow_banner")
  final String? homeGlobalYellowBanner;

  @HiveField(2)
  @JsonKey(name: "banks_global_banner")
  final String? banksGlobalBanner;

  @HiveField(3)
  @JsonKey(name: "banks_global_yellow_banner")
  final String? banksGlobalYellowBanner;

  @HiveField(4)
  @JsonKey(name: "above_banks_card")
  final String? aboveBanksCard;

  @HiveField(5)
  @JsonKey(name: "above_banks_card_yellow")
  final String? aboveBanksCardYellow;

  @HiveField(6)
  @JsonKey(name: "enable_rate_dialog")
  final String? enableRateDialog;

  @HiveField(7)
  @JsonKey(name: "about_text")
  final String? aboutText;

  @HiveField(8)
  @JsonKey(name: "dealing_caution")
  final String? dealingCaution;

  @HiveField(9)
  @JsonKey(name: "display_views_counter")
  final String? displayViewsCounter;

  @HiveField(10)
  @JsonKey(name: "min_android_version")
  final String? minAndroidVersion;

  AboutAppResponseModel({
    this.homeGlobalBanner,
    this.homeGlobalYellowBanner,
    this.banksGlobalBanner,
    this.banksGlobalYellowBanner,
    this.aboveBanksCard,
    this.aboveBanksCardYellow,
    this.enableRateDialog,
    this.aboutText,
    this.dealingCaution,
    this.displayViewsCounter,
    this.minAndroidVersion,
  });

  factory AboutAppResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AboutAppResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AboutAppResponseModelToJson(this);
}
