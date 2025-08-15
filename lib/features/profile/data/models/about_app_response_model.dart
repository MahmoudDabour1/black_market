
import 'package:json_annotation/json_annotation.dart';
part 'about_app_response_model.g.dart';


@JsonSerializable()
class AboutAppResponseModel {
  @JsonKey(name: "home_global_banner")
  final String? homeGlobalBanner;
  @JsonKey(name: "home_global_yellow_banner")
  final String? homeGlobalYellowBanner;
  @JsonKey(name: "banks_global_banner")
  final String? banksGlobalBanner;
  @JsonKey(name: "banks_global_yellow_banner")
  final String? banksGlobalYellowBanner;
  @JsonKey(name: "above_banks_card")
  final String? aboveBanksCard;
  @JsonKey(name: "above_banks_card_yellow")
  final String? aboveBanksCardYellow;
  @JsonKey(name: "enable_rate_dialog")
  final String? enableRateDialog;
  @JsonKey(name: "about_text")
  final String? aboutText;
  @JsonKey(name: "dealing_caution")
  final String? dealingCaution;
  @JsonKey(name: "display_views_counter")
  final String? displayViewsCounter;
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

  factory AboutAppResponseModel.fromJson(Map<String, dynamic> json) => _$AboutAppResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AboutAppResponseModelToJson(this);
}
