import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_rate_model.freezed.dart';
part 'currency_rate_model.g.dart';

@freezed
class CurrencyRateModel with _$CurrencyRateModel {
  const factory CurrencyRateModel({
    @JsonKey(name: 'symbol') String? symbol,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'rate') double? rate,
    @JsonKey(name: 'icon') String? icon,
  }) = _CurrencyRateModel;

  factory CurrencyRateModel.fromJson(Map<String, Object?> json) =>
      _$CurrencyRateModelFromJson(json);
}
