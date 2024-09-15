
  import 'package:flutter/foundation.dart';
  import 'package:freezed_annotation/freezed_annotation.dart';
  
  part 'available_currency_model.freezed.dart';
  part 'available_currency_model.g.dart';
  
  
  @freezed
  class AvailableCurrencyModel with _$AvailableCurrencyModel {
  
    const factory AvailableCurrencyModel({@JsonKey(name: 'symbol') String? symbol, 
@JsonKey(name: 'title') String? title, 
@JsonKey(name: 'icon') String? icon, 
@JsonKey(name: 'imageUrl') String? imageUrl, 
}) = _AvailableCurrencyModel;
  
    factory AvailableCurrencyModel.fromJson(Map<String, Object?> json)
        => _$AvailableCurrencyModelFromJson(json);
  }
  
  
  