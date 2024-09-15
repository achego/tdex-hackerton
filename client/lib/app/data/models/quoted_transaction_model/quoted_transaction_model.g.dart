// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quoted_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotedTransactionModelImpl _$$QuotedTransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuotedTransactionModelImpl(
      id: json['id'] as String?,
      payinAmount: json['payinAmount'] as String?,
      payinCurrency: json['payinCurrency'] as String?,
      payoutAmount: json['payoutAmount'] as String?,
      payoutCurrency: json['payoutCurrency'] as String?,
      status: json['status'] as String?,
      createdTime: json['createdTime'] as String?,
      expirationTime: json['expirationTime'] as String?,
      from: json['from'] as Map<String, dynamic>?,
      to: json['to'] as Map<String, dynamic>?,
      pfiDid: json['pfiDid'] as String?,
      fee: json['fee'] as String?,
    );

Map<String, dynamic> _$$QuotedTransactionModelImplToJson(
        _$QuotedTransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payinAmount': instance.payinAmount,
      'payinCurrency': instance.payinCurrency,
      'payoutAmount': instance.payoutAmount,
      'payoutCurrency': instance.payoutCurrency,
      'status': instance.status,
      'createdTime': instance.createdTime,
      'expirationTime': instance.expirationTime,
      'from': instance.from,
      'to': instance.to,
      'pfiDid': instance.pfiDid,
      'fee': instance.fee,
    };
