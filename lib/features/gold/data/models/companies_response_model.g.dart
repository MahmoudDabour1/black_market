// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompaniesResponseModel _$CompaniesResponseModelFromJson(
        Map<String, dynamic> json) =>
    CompaniesResponseModel(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      key: json['key'] as String?,
      active: (json['active'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CompaniesResponseModelToJson(
        CompaniesResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'key': instance.key,
      'active': instance.active,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
