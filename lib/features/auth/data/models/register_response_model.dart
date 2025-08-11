import 'package:json_annotation/json_annotation.dart';
part 'register_response_model.g.dart';
@JsonSerializable()
class RegisterResponseModel {
  @JsonKey(name: "user")
  final User? user;
  @JsonKey(name: "access_token")
  final String? accessToken;
  @JsonKey(name: "expires_at")
  final DateTime? expiresAt;

  RegisterResponseModel({
    this.user,
    this.accessToken,
    this.expiresAt,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) => _$RegisterResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseModelToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
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
