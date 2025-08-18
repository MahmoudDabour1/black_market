import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_response_model.g.dart';

@HiveType(typeId: 4) // بدأنا من 4
@JsonSerializable()
class RegisterResponseModel {
  @HiveField(0)
  @JsonKey(name: "user")
  final User? user;

  @HiveField(1)
  @JsonKey(name: "access_token")
  final String? accessToken;

  @HiveField(2)
  @JsonKey(name: "expires_at")
  final DateTime? expiresAt;

  RegisterResponseModel({
    this.user,
    this.accessToken,
    this.expiresAt,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseModelToJson(this);
}

@HiveType(typeId: 5) // التالي
@JsonSerializable()
class User {
  @HiveField(0)
  @JsonKey(name: "name")
  final String? name;

  @HiveField(1)
  @JsonKey(name: "email")
  final String? email;

  @HiveField(2)
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @HiveField(3)
  @JsonKey(name: "created_at")
  final DateTime? createdAt;

  @HiveField(4)
  @JsonKey(name: "id")
  final int? id;

  User({
    this.name,
    this.email,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
