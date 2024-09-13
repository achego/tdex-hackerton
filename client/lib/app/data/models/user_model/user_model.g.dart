// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String?,
      bearerDid: json['bearer_did'] as String?,
      fullName: json['full_name'] as String?,
      userName: json['user_name'] as String?,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bearer_did': instance.bearerDid,
      'full_name': instance.fullName,
      'user_name': instance.userName,
      'phone': instance.phone,
      'country': instance.country,
      'email': instance.email,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
