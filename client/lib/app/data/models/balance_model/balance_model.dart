import 'package:client/app/data/models/available_currency_model/available_currency_model.dart';
import 'package:client/global_exports.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_model.freezed.dart';
part 'balance_model.g.dart';

extension BalanceModelX on BalanceModel {
  AvailableCurrencyModel? get getAvailableCurrency {
    final match = appController.availableCurrencies
        .where((p0) => p0.symbol?.toLowerCase() == currency?.toLowerCase());

    return match.isEmpty ? null : match.first;
  }
}

@freezed
class BalanceModel with _$BalanceModel {
  const factory BalanceModel({
    @JsonKey(name: 'balance') String? balance,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'user_currency') String? userCurrency,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
  }) = _BalanceModel;

  factory BalanceModel.fromJson(Map<String, Object?> json) =>
      _$BalanceModelFromJson(json);
}
