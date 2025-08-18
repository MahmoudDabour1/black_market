import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class LoginResponseModel {
  @HiveField(0)
  @JsonKey(name: "user")
  final User? user;

  @HiveField(1)
  @JsonKey(name: "access_token")
  final String? accessToken;

  @HiveField(2)
  @JsonKey(name: "expires_at")
  final DateTime? expiresAt;

  LoginResponseModel({
    this.user,
    this.accessToken,
    this.expiresAt,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}

@HiveType(typeId: 3)
@JsonSerializable()
class User {
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;

  @HiveField(1)
  @JsonKey(name: "role_id")
  final int? roleId;

  @HiveField(2)
  @JsonKey(name: "name")
  final String? name;

  @HiveField(3)
  @JsonKey(name: "email")
  final String? email;

  @HiveField(4)
  @JsonKey(name: "avatar")
  final String? avatar;

  @HiveField(5)
  @JsonKey(name: "email_verified_at")
  final dynamic emailVerifiedAt;

  @HiveField(6)
  @JsonKey(name: "token")
  final dynamic token;

  @HiveField(7)
  @JsonKey(name: "provider")
  final dynamic provider;

  @HiveField(8)
  @JsonKey(name: "settings")
  final List<dynamic>? settings;

  @HiveField(9)
  @JsonKey(name: "otp")
  final dynamic otp;

  @HiveField(10)
  @JsonKey(name: "created_at")
  final DateTime? createdAt;

  @HiveField(11)
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  User({
    this.id,
    this.roleId,
    this.name,
    this.email,
    this.avatar,
    this.emailVerifiedAt,
    this.token,
    this.provider,
    this.settings,
    this.otp,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
