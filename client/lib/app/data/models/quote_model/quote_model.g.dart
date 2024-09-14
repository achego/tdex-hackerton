// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteModelImpl _$$QuoteModelImplFromJson(Map<String, dynamic> json) =>
    _$QuoteModelImpl(
      metadata: json['metadata'] == null
          ? null
          : MetadataModel.fromJson(json['metadata'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      signature: json['signature'] as String?,
      privateData: json['privateData'] == null
          ? null
          : PrivateDataModel.fromJson(
              json['privateData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuoteModelImplToJson(_$QuoteModelImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'data': instance.data,
      'signature': instance.signature,
      'privateData': instance.privateData,
    };

_$MetadataModelImpl _$$MetadataModelImplFromJson(Map<String, dynamic> json) =>
    _$MetadataModelImpl(
      from: json['from'] as String?,
      to: json['to'] as String?,
      protocol: json['protocol'] as String?,
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      exchangeId: json['exchangeId'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$MetadataModelImplToJson(_$MetadataModelImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'protocol': instance.protocol,
      'kind': instance.kind,
      'id': instance.id,
      'exchangeId': instance.exchangeId,
      'createdAt': instance.createdAt,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      offeringId: json['offeringId'] as String?,
      payin: json['payin'] == null
          ? null
          : PayinModel.fromJson(json['payin'] as Map<String, dynamic>),
      payout: json['payout'] == null
          ? null
          : PayoutModel.fromJson(json['payout'] as Map<String, dynamic>),
      claimsHash: json['claimsHash'] as String?,
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'offeringId': instance.offeringId,
      'payin': instance.payin,
      'payout': instance.payout,
      'claimsHash': instance.claimsHash,
    };

_$PayinModelImpl _$$PayinModelImplFromJson(Map<String, dynamic> json) =>
    _$PayinModelImpl(
      amount: json['amount'] as String?,
      kind: json['kind'] as String?,
      paymentDetailsHash: json['paymentDetailsHash'] as String?,
    );

Map<String, dynamic> _$$PayinModelImplToJson(_$PayinModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'kind': instance.kind,
      'paymentDetailsHash': instance.paymentDetailsHash,
    };

_$PayoutModelImpl _$$PayoutModelImplFromJson(Map<String, dynamic> json) =>
    _$PayoutModelImpl(
      kind: json['kind'] as String?,
      paymentDetailsHash: json['paymentDetailsHash'] as String?,
    );

Map<String, dynamic> _$$PayoutModelImplToJson(_$PayoutModelImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'paymentDetailsHash': instance.paymentDetailsHash,
    };

_$PrivateDataModelImpl _$$PrivateDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivateDataModelImpl(
      salt: json['salt'] as String?,
      payin: json['payin'] == null
          ? null
          : PrivatePayinModel.fromJson(json['payin'] as Map<String, dynamic>),
      payout: json['payout'] == null
          ? null
          : PrivatePayoutModel.fromJson(json['payout'] as Map<String, dynamic>),
      claims:
          (json['claims'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PrivateDataModelImplToJson(
        _$PrivateDataModelImpl instance) =>
    <String, dynamic>{
      'salt': instance.salt,
      'payin': instance.payin,
      'payout': instance.payout,
      'claims': instance.claims,
    };

_$PrivatePayinModelImpl _$$PrivatePayinModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivatePayinModelImpl(
      paymentDetails: json['paymentDetails'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PrivatePayinModelImplToJson(
        _$PrivatePayinModelImpl instance) =>
    <String, dynamic>{
      'paymentDetails': instance.paymentDetails,
    };

_$PrivatePayoutModelImpl _$$PrivatePayoutModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivatePayoutModelImpl(
      paymentDetails: json['paymentDetails'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PrivatePayoutModelImplToJson(
        _$PrivatePayoutModelImpl instance) =>
    <String, dynamic>{
      'paymentDetails': instance.paymentDetails,
    };
