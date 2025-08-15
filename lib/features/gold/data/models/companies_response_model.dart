import 'package:json_annotation/json_annotation.dart';
part 'companies_response_model.g.dart';
@JsonSerializable()
class CompaniesResponseModel {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "active")
  final int? active;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  CompaniesResponseModel({
    this.id,
    this.image,
    this.name,
    this.key,
    this.active,
    this.createdAt,
    this.updatedAt,
  });

  factory CompaniesResponseModel.fromJson(Map<String, dynamic> json) => _$CompaniesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesResponseModelToJson(this);
}
