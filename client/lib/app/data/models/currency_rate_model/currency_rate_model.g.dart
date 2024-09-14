// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyRateModelImpl _$$CurrencyRateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrencyRateModelImpl(
      symbol: json['symbol'] as String?,
      title: json['title'] as String?,
      rate: (json['rate'] as num?)?.toInt(),
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$CurrencyRateModelImplToJson(
        _$CurrencyRateModelImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'title': instance.title,
      'rate': instance.rate,
      'icon': instance.icon,
    };
