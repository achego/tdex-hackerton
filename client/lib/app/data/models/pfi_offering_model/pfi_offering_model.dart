import 'package:client/app/data/models/selected_pfis/selected_pfis_model.dart';
import 'package:client/app/modules/send_by_pfi_module/send_by_pfi_controller.dart';
import 'package:client/global_exports.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pfi_offering_model.freezed.dart';
part 'pfi_offering_model.g.dart';

extension PfiOfferingModelX on PfiOfferingModel {
  SelectedPfisModel? get getPfidetails {
    final contoller = Get.find<SendByPfiController>();
    final pfis = contoller.selectedPfis
        .where((e) => e.uri?.toLowerCase() == metadata?.from?.toLowerCase());
    if (pfis.isEmpty) {
      return null;
    }
    return pfis.first;
  }
}

@freezed
class PfiOfferingModel with _$PfiOfferingModel {
  const factory PfiOfferingModel({
    @JsonKey(name: 'metadata') MetadataModel? metadata,
    @JsonKey(name: 'data') DataModel? data,
    @JsonKey(name: 'signature') String? signature,
  }) = _PfiOfferingModel;

  factory PfiOfferingModel.fromJson(Map<String, Object?> json) =>
      _$PfiOfferingModelFromJson(json);
}

@freezed
class MetadataModel with _$MetadataModel {
  const factory MetadataModel({
    @JsonKey(name: 'from') String? from,
    @JsonKey(name: 'protocol') String? protocol,
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'createdAt') String? createdAt,
  }) = _MetadataModel;

  factory MetadataModel.fromJson(Map<String, Object?> json) =>
      _$MetadataModelFromJson(json);
}

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'payoutUnitsPerPayinUnit') String? payoutUnitsPerPayinUnit,
    @JsonKey(name: 'payout') PayoutModel? payout,
    @JsonKey(name: 'payin') PayinModel? payin,
    @JsonKey(name: 'requiredClaims') RequiredClaimsModel? requiredClaims,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, Object?> json) =>
      _$DataModelFromJson(json);
}

@freezed
class PayoutModel with _$PayoutModel {
  const factory PayoutModel({
    @JsonKey(name: 'currencyCode') String? currencyCode,
    @JsonKey(name: 'methods') List<MethodsModel>? methods,
  }) = _PayoutModel;

  factory PayoutModel.fromJson(Map<String, Object?> json) =>
      _$PayoutModelFromJson(json);
}

@freezed
class MethodsModel with _$MethodsModel {
  const factory MethodsModel({
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'estimatedSettlementTime') int? estimatedSettlementTime,
    @JsonKey(name: 'requiredPaymentDetails')
    RequiredPaymentDetailsModel? requiredPaymentDetails,
  }) = _MethodsModel;

  factory MethodsModel.fromJson(Map<String, Object?> json) =>
      _$MethodsModelFromJson(json);
}

@freezed
class RequiredPaymentDetailsModel with _$RequiredPaymentDetailsModel {
  const factory RequiredPaymentDetailsModel({
    @JsonKey(name: '\$schema') String? $schema,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'required') List<String>? required,
    @JsonKey(name: 'additionalProperties') bool? additionalProperties,
    @JsonKey(name: 'properties') Map<String, AddressModel>? properties,
  }) = _RequiredPaymentDetailsModel;

  factory RequiredPaymentDetailsModel.fromJson(Map<String, Object?> json) =>
      _$RequiredPaymentDetailsModelFromJson(json);
}

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'type') String? type,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, Object?> json) =>
      _$AddressModelFromJson(json);
}

@freezed
class PayinModel with _$PayinModel {
  const factory PayinModel({
    @JsonKey(name: 'currencyCode') String? currencyCode,
    @JsonKey(name: 'methods') List<MethodsModel>? methods,
  }) = _PayinModel;

  factory PayinModel.fromJson(Map<String, Object?> json) =>
      _$PayinModelFromJson(json);
}

@freezed
class RequiredClaimsModel with _$RequiredClaimsModel {
  const factory RequiredClaimsModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'format') FormatModel? format,
    @JsonKey(name: 'input_descriptors')
    List<InputDescriptorsModel>? inputDescriptors,
  }) = _RequiredClaimsModel;

  factory RequiredClaimsModel.fromJson(Map<String, Object?> json) =>
      _$RequiredClaimsModelFromJson(json);
}

@freezed
class FormatModel with _$FormatModel {
  const factory FormatModel({
    @JsonKey(name: 'jwt_vc') JwtVcModel? jwtVc,
  }) = _FormatModel;

  factory FormatModel.fromJson(Map<String, Object?> json) =>
      _$FormatModelFromJson(json);
}

@freezed
class JwtVcModel with _$JwtVcModel {
  const factory JwtVcModel({
    @JsonKey(name: 'alg') List<String>? alg,
  }) = _JwtVcModel;

  factory JwtVcModel.fromJson(Map<String, Object?> json) =>
      _$JwtVcModelFromJson(json);
}

@freezed
class InputDescriptorsModel with _$InputDescriptorsModel {
  const factory InputDescriptorsModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'constraints') ConstraintsModel? constraints,
  }) = _InputDescriptorsModel;

  factory InputDescriptorsModel.fromJson(Map<String, Object?> json) =>
      _$InputDescriptorsModelFromJson(json);
}

@freezed
class ConstraintsModel with _$ConstraintsModel {
  const factory ConstraintsModel({
    @JsonKey(name: 'fields') List<FieldsModel>? fields,
  }) = _ConstraintsModel;

  factory ConstraintsModel.fromJson(Map<String, Object?> json) =>
      _$ConstraintsModelFromJson(json);
}

@freezed
class FieldsModel with _$FieldsModel {
  const factory FieldsModel({
    @JsonKey(name: 'path') List<String>? path,
    @JsonKey(name: 'filter') FilterModel? filter,
  }) = _FieldsModel;

  factory FieldsModel.fromJson(Map<String, Object?> json) =>
      _$FieldsModelFromJson(json);
}

@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'const') String? constI,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, Object?> json) =>
      _$FilterModelFromJson(json);
}
