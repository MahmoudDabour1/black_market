// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePasswordResponseModel _$UpdatePasswordResponseModelFromJson(
        Map<String, dynamic> json) =>
    UpdatePasswordResponseModel(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['access_token'] as String?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$UpdatePasswordResponseModelToJson(
        UpdatePasswordResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'access_token': instance.accessToken,
      'expires_at': instance.expiresAt?.toIso8601String(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      roleId: (json['role_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      token: json['token'],
      provider: json['provider'],
      settings: json['settings'] as List<dynamic>?,
      otp: json['otp'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'role_id': instance.roleId,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'email_verified_at': instance.emailVerifiedAt,
      'token': instance.token,
      'provider': instance.provider,
      'settings': instance.settings,
      'otp': instance.otp,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
