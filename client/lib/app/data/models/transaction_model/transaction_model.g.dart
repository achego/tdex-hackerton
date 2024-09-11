// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionModelImpl _$$TransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      sellPrice: (json['sell_price'] as num?)?.toInt(),
      direction: json['direction'] as String?,
      title: json['title'] as String?,
      subTitle: json['sub_title'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      provider: json['provider'] as String?,
      prividerLogo: json['privider_logo'] as String?,
      failDescription: json['fail_description'] as String?,
      description: json['description'] as String?,
      balanceBefore: (json['balance_before'] as num?)?.toInt(),
      balanceAfter: (json['balance_after'] as num?)?.toInt(),
      fee: (json['fee'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      completedAt: json['completed_at'] as String?,
      reversedAt: json['reversed_at'] as String?,
      refId: json['ref_id'] as String?,
      customerRef: json['customer_ref'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$TransactionModelImplToJson(
        _$TransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'amount': instance.amount,
      'sell_price': instance.sellPrice,
      'direction': instance.direction,
      'title': instance.title,
      'sub_title': instance.subTitle,
      'from': instance.from,
      'to': instance.to,
      'provider': instance.provider,
      'privider_logo': instance.prividerLogo,
      'fail_description': instance.failDescription,
      'description': instance.description,
      'balance_before': instance.balanceBefore,
      'balance_after': instance.balanceAfter,
      'fee': instance.fee,
      'currency': instance.currency,
      'completed_at': instance.completedAt,
      'reversed_at': instance.reversedAt,
      'ref_id': instance.refId,
      'customer_ref': instance.customerRef,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
