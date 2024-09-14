// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CredentialModelImpl _$$CredentialModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CredentialModelImpl(
      id: (json['id'] as num?)?.toInt(),
      issuer: json['issuer'] as String?,
      credential: json['credential'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$CredentialModelImplToJson(
        _$CredentialModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'issuer': instance.issuer,
      'credential': instance.credential,
      'userId': instance.userId,
    };
