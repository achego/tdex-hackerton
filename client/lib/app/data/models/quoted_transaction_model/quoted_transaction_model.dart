import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quoted_transaction_model.freezed.dart';
part 'quoted_transaction_model.g.dart';

@freezed
class QuotedTransactionModel with _$QuotedTransactionModel {
  const factory QuotedTransactionModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'payinAmount') String? payinAmount,
    @JsonKey(name: 'payinCurrency') String? payinCurrency,
    @JsonKey(name: 'payoutAmount') String? payoutAmount,
    @JsonKey(name: 'payoutCurrency') String? payoutCurrency,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'createdTime') String? createdTime,
    @JsonKey(name: 'expirationTime') String? expirationTime,
    @JsonKey(name: 'from') Map<String, dynamic>? from,
    @JsonKey(name: 'to') Map<String, dynamic>? to,
    @JsonKey(name: 'pfiDid') String? pfiDid,
    @JsonKey(name: 'fee') String? fee,
  }) = _QuotedTransactionModel;

  factory QuotedTransactionModel.fromJson(Map<String, Object?> json) =>
      _$QuotedTransactionModelFromJson(json);
}
