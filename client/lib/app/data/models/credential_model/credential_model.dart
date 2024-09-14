
  import 'package:flutter/foundation.dart';
  import 'package:freezed_annotation/freezed_annotation.dart';
  
  part 'credential_model.freezed.dart';
  part 'credential_model.g.dart';
  
  
  @freezed
  class CredentialModel with _$CredentialModel {
  
    const factory CredentialModel({@JsonKey(name: 'id') int? id, 
@JsonKey(name: 'issuer') String? issuer, 
@JsonKey(name: 'credential') String? credential, 
@JsonKey(name: 'userId') String? userId, 
}) = _CredentialModel;
  
    factory CredentialModel.fromJson(Map<String, Object?> json)
        => _$CredentialModelFromJson(json);
  }
  
  
  