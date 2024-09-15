// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pfi_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PfiRateModelImpl _$$PfiRateModelImplFromJson(Map<String, dynamic> json) =>
    _$PfiRateModelImpl(
      id: (json['id'] as num?)?.toInt(),
      raterId: json['rater_id'] as String?,
      raterName: json['rater_name'] as String?,
      pfiDid: json['pfi_did'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      quoteId: json['quote_id'] as String?,
      comment: json['comment'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$PfiRateModelImplToJson(_$PfiRateModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rater_id': instance.raterId,
      'rater_name': instance.raterName,
      'pfi_did': instance.pfiDid,
      'rate': instance.rate,
      'quote_id': instance.quoteId,
      'comment': instance.comment,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
