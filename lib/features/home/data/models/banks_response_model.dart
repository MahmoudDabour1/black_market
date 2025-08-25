import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banks_response_model.g.dart';

@HiveType(typeId: 5)
@JsonSerializable()
class BanksResponseModel {
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;

  @HiveField(1)
  @JsonKey(name: "banner")
  final dynamic banner;

  @HiveField(2)
  @JsonKey(name: "icon")
  final String? icon;

  @HiveField(3)
  @JsonKey(name: "name")
  final String? name;

  @HiveField(4)
  @JsonKey(name: "hotline")
  final String? hotline;

  @HiveField(5)
  @JsonKey(name: "calculate_based_on_bank")
  final int? calculateBasedOnBank;

  @HiveField(6)
  @JsonKey(name: "sort")
  final int? sort;

  @HiveField(7)
  @JsonKey(name: "show_network_image")
  final int? showNetworkImage;

  @HiveField(8)
  @JsonKey(name: "is_virtual")
  final int? isVirtual;

  @HiveField(9)
  @JsonKey(name: "shortname")
  final String? shortname;

  @HiveField(10)
  @JsonKey(name: "active")
  final int? active;

  @HiveField(11)
  @JsonKey(name: "created_at")
  final DateTime? createdAt;

  @HiveField(12)
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @HiveField(13)
  @JsonKey(name: "branches")
  final List<Branch>? branches;

  BanksResponseModel({
    this.id,
    this.banner,
    this.icon,
    this.name,
    this.hotline,
    this.calculateBasedOnBank,
    this.sort,
    this.showNetworkImage,
    this.isVirtual,
    this.shortname,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.branches,
  });

  factory BanksResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BanksResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$BanksResponseModelToJson(this);
}

@HiveType(typeId: 6)
@JsonSerializable()
class Branch {
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;

  @HiveField(1)
  @JsonKey(name: "bank_id")
  final int? bankId;

  @HiveField(2)
  @JsonKey(name: "name")
  final Name? name;

  @HiveField(3)
  @JsonKey(name: "address")
  final String? address;

  @HiveField(4)
  @JsonKey(name: "created_at")
  final dynamic createdAt;

  @HiveField(5)
  @JsonKey(name: "updated_at")
  final dynamic updatedAt;

  Branch({
    this.id,
    this.bankId,
    this.name,
    this.address,
    this.createdAt,
    this.updatedAt,
  });

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  Map<String, dynamic> toJson() => _$BranchToJson(this);
}

@HiveType(typeId: 7)
enum Name {
  @HiveField(0)
  @JsonValue("El Gizira Electronic Branch")
  EL_GIZIRA_ELECTRONIC_BRANCH,

  @HiveField(1)
  @JsonValue("El Jazeera Youth Center Branch")
  EL_JAZEERA_YOUTH_CENTER_BRANCH,

  @HiveField(2)
  @JsonValue("Tower Branch")
  TOWER_BRANCH,

  @HiveField(3)
  @JsonValue("Zamalek Branch")
  ZAMALEK_BRANCH
}
