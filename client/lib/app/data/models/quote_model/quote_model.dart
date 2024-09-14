import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_model.freezed.dart';
part 'quote_model.g.dart';

@freezed
class QuoteModel with _$QuoteModel {
  const factory QuoteModel({
    @JsonKey(name: 'metadata') MetadataModel? metadata,
    @JsonKey(name: 'data') DataModel? data,
    @JsonKey(name: 'signature') String? signature,
    @JsonKey(name: 'privateData') PrivateDataModel? privateData,
  }) = _QuoteModel;

  factory QuoteModel.fromJson(Map<String, Object?> json) =>
      _$QuoteModelFromJson(json);
}

@freezed
class MetadataModel with _$MetadataModel {
  const factory MetadataModel({
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'protocol') String? protocol,
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'exchangeId') String? exchangeId,
    @JsonKey(name: 'createdAt') String? createdAt,
  }) = _MetadataModel;

  factory MetadataModel.fromJson(Map<String, Object?> json) =>
      _$MetadataModelFromJson(json);
}

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    @JsonKey(name: 'offeringId') String? offeringId,
    @JsonKey(name: 'payin') PayinModel? payin,
    @JsonKey(name: 'payout') PayoutModel? payout,
    @JsonKey(name: 'claimsHash') String? claimsHash,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, Object?> json) =>
      _$DataModelFromJson(json);
}

@freezed
class PayinModel with _$PayinModel {
  const factory PayinModel({
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'paymentDetailsHash') String? paymentDetailsHash,
  }) = _PayinModel;

  factory PayinModel.fromJson(Map<String, Object?> json) =>
      _$PayinModelFromJson(json);
}

@freezed
class PayoutModel with _$PayoutModel {
  const factory PayoutModel({
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'paymentDetailsHash') String? paymentDetailsHash,
  }) = _PayoutModel;

  factory PayoutModel.fromJson(Map<String, Object?> json) =>
      _$PayoutModelFromJson(json);
}

@freezed
class PrivateDataModel with _$PrivateDataModel {
  const factory PrivateDataModel({
    @JsonKey(name: 'salt') String? salt,
    @JsonKey(name: 'payin') PrivatePayinModel? payin,
    @JsonKey(name: 'payout') PrivatePayoutModel? payout,
    @JsonKey(name: 'claims') List<String>? claims,
  }) = _PrivateDataModel;

  factory PrivateDataModel.fromJson(Map<String, Object?> json) =>
      _$PrivateDataModelFromJson(json);
}

@freezed
class PrivatePayinModel with _$PrivatePayinModel {
  const factory PrivatePayinModel({
    @JsonKey(name: 'paymentDetails') Map<String, dynamic>? paymentDetails,
  }) = _PrivatePayinModel;

  factory PrivatePayinModel.fromJson(Map<String, Object?> json) =>
      _$PrivatePayinModelFromJson(json);
}

@freezed
class PrivatePayoutModel with _$PrivatePayoutModel {
  const factory PrivatePayoutModel({
    @JsonKey(name: 'paymentDetails') Map<String, dynamic>? paymentDetails,
  }) = _PrivatePayoutModel;

  factory PrivatePayoutModel.fromJson(Map<String, Object?> json) =>
      _$PrivatePayoutModelFromJson(json);
}
