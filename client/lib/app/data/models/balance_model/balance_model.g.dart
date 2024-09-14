// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceModelImpl _$$BalanceModelImplFromJson(Map<String, dynamic> json) =>
    _$BalanceModelImpl(
      balance: json['balance'] as String?,
      type: json['type'] as String?,
      currency: json['currency'] as String?,
      userCurrency: json['user_currency'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$BalanceModelImplToJson(_$BalanceModelImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'type': instance.type,
      'currency': instance.currency,
      'user_currency': instance.userCurrency,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
