
  import 'package:flutter/foundation.dart';
  import 'package:freezed_annotation/freezed_annotation.dart';
  
  part 'user_model.freezed.dart';
  part 'user_model.g.dart';
  
  
  @freezed
  class UserModel with _$UserModel {
  
    const factory UserModel({@JsonKey(name: 'id') String? id, 
@JsonKey(name: 'bearer_did') String? bearerDid, 
@JsonKey(name: 'full_name') String? fullName, 
@JsonKey(name: 'user_name') String? userName, 
@JsonKey(name: 'phone') String? phone, 
@JsonKey(name: 'country') String? country, 
@JsonKey(name: 'email') String? email, 
@JsonKey(name: 'created_at') String? createdAt, 
@JsonKey(name: 'updated_at') String? updatedAt, 
}) = _UserModel;
  
    factory UserModel.fromJson(Map<String, Object?> json)
        => _$UserModelFromJson(json);
  }
  
  
  