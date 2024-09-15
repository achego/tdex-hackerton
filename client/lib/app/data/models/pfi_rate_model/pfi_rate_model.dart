
  import 'package:flutter/foundation.dart';
  import 'package:freezed_annotation/freezed_annotation.dart';
  
  part 'pfi_rate_model.freezed.dart';
  part 'pfi_rate_model.g.dart';
  
  
  @freezed
  class PfiRateModel with _$PfiRateModel {
  
    const factory PfiRateModel({@JsonKey(name: 'id') int? id, 
@JsonKey(name: 'rater_id') String? raterId, 
@JsonKey(name: 'rater_name') String? raterName, 
@JsonKey(name: 'pfi_did') String? pfiDid, 
@JsonKey(name: 'rate') double? rate, 
@JsonKey(name: 'quote_id') String? quoteId, 
@JsonKey(name: 'comment') String? comment, 
@JsonKey(name: 'created_at') String? createdAt, 
@JsonKey(name: 'updated_at') String? updatedAt, 
}) = _PfiRateModel;
  
    factory PfiRateModel.fromJson(Map<String, Object?> json)
        => _$PfiRateModelFromJson(json);
  }
  
  
  