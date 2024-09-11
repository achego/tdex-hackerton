import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'sell_price') int? sellPrice,
    @JsonKey(name: 'direction') String? direction,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'sub_title') String? subTitle,
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'provider') String? provider,
    @JsonKey(name: 'privider_logo') String? prividerLogo,
    @JsonKey(name: 'fail_description') String? failDescription,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'balance_before') int? balanceBefore,
    @JsonKey(name: 'balance_after') int? balanceAfter,
    @JsonKey(name: 'fee') int? fee,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'completed_at') String? completedAt,
    @JsonKey(name: 'reversed_at') String? reversedAt,
    @JsonKey(name: 'ref_id') String? refId,
    @JsonKey(name: 'customer_ref') String? customerRef,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, Object?> json) =>
      _$TransactionModelFromJson(json);
}

enum TransactionType {
  airtime(name: 'airtime'),
  data(name: 'data');

  const TransactionType({required this.name});

  final String name;
}
