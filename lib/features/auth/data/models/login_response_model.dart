import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';
@JsonSerializable()
class LoginResponseModel {
  @JsonKey(name: "user")
  final User? user;
  @JsonKey(name: "access_token")
  final String? accessToken;
  @JsonKey(name: "expires_at")
  final DateTime? expiresAt;

  LoginResponseModel({
    this.user,
    this.accessToken,
    this.expiresAt,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "role_id")
  final int? roleId;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "avatar")
  final String? avatar;
  @JsonKey(name: "email_verified_at")
  final dynamic emailVerifiedAt;
  @JsonKey(name: "token")
  final dynamic token;
  @JsonKey(name: "provider")
  final dynamic provider;
  @JsonKey(name: "settings")
  final List<dynamic>? settings;
  @JsonKey(name: "otp")
  final dynamic otp;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
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
