
  import 'package:flutter/foundation.dart';
  import 'package:freezed_annotation/freezed_annotation.dart';
  
  part 'balance_model.freezed.dart';
  part 'balance_model.g.dart';
  
  
  @freezed
  class BalanceModel with _$BalanceModel {
  
    const factory BalanceModel({@JsonKey(name: 'balance') String? balance, 
@JsonKey(name: 'type') String? type, 
@JsonKey(name: 'currency') String? currency, 
@JsonKey(name: 'user_currency') String? userCurrency, 
@JsonKey(name: 'updated_at') String? updatedAt, 
@JsonKey(name: 'deleted_at') String? deletedAt, 
}) = _BalanceModel;
  
    factory BalanceModel.fromJson(Map<String, Object?> json)
        => _$BalanceModelFromJson(json);
  }
  
  
  