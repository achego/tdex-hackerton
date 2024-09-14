// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pfi_offering_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PfiOfferingModelImpl _$$PfiOfferingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PfiOfferingModelImpl(
      metadata: json['metadata'] == null
          ? null
          : MetadataModel.fromJson(json['metadata'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      signature: json['signature'] as String?,
    );

Map<String, dynamic> _$$PfiOfferingModelImplToJson(
        _$PfiOfferingModelImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'data': instance.data,
      'signature': instance.signature,
    };

_$MetadataModelImpl _$$MetadataModelImplFromJson(Map<String, dynamic> json) =>
    _$MetadataModelImpl(
      from: json['from'] as String?,
      protocol: json['protocol'] as String?,
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$MetadataModelImplToJson(_$MetadataModelImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'protocol': instance.protocol,
      'kind': instance.kind,
      'id': instance.id,
      'createdAt': instance.createdAt,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      description: json['description'] as String?,
      payoutUnitsPerPayinUnit: json['payoutUnitsPerPayinUnit'] as String?,
      payout: json['payout'] == null
          ? null
          : PayoutModel.fromJson(json['payout'] as Map<String, dynamic>),
      payin: json['payin'] == null
          ? null
          : PayinModel.fromJson(json['payin'] as Map<String, dynamic>),
      requiredClaims: json['requiredClaims'] == null
          ? null
          : RequiredClaimsModel.fromJson(
              json['requiredClaims'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'payoutUnitsPerPayinUnit': instance.payoutUnitsPerPayinUnit,
      'payout': instance.payout,
      'payin': instance.payin,
      'requiredClaims': instance.requiredClaims,
    };

_$PayoutModelImpl _$$PayoutModelImplFromJson(Map<String, dynamic> json) =>
    _$PayoutModelImpl(
      currencyCode: json['currencyCode'] as String?,
      methods: (json['methods'] as List<dynamic>?)
          ?.map((e) => MethodsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PayoutModelImplToJson(_$PayoutModelImpl instance) =>
    <String, dynamic>{
      'currencyCode': instance.currencyCode,
      'methods': instance.methods,
    };

_$MethodsModelImpl _$$MethodsModelImplFromJson(Map<String, dynamic> json) =>
    _$MethodsModelImpl(
      kind: json['kind'] as String?,
      estimatedSettlementTime:
          (json['estimatedSettlementTime'] as num?)?.toInt(),
      requiredPaymentDetails: json['requiredPaymentDetails'] == null
          ? null
          : RequiredPaymentDetailsModel.fromJson(
              json['requiredPaymentDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MethodsModelImplToJson(_$MethodsModelImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'estimatedSettlementTime': instance.estimatedSettlementTime,
      'requiredPaymentDetails': instance.requiredPaymentDetails,
    };

_$RequiredPaymentDetailsModelImpl _$$RequiredPaymentDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequiredPaymentDetailsModelImpl(
      $schema: json[r'$schema'] as String?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      required: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      additionalProperties: json['additionalProperties'] as bool?,
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, AddressModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$RequiredPaymentDetailsModelImplToJson(
        _$RequiredPaymentDetailsModelImpl instance) =>
    <String, dynamic>{
      r'$schema': instance.$schema,
      'title': instance.title,
      'type': instance.type,
      'required': instance.required,
      'additionalProperties': instance.additionalProperties,
      'properties': instance.properties,
    };

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
    };

_$PayinModelImpl _$$PayinModelImplFromJson(Map<String, dynamic> json) =>
    _$PayinModelImpl(
      currencyCode: json['currencyCode'] as String?,
      methods: (json['methods'] as List<dynamic>?)
          ?.map((e) => MethodsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PayinModelImplToJson(_$PayinModelImpl instance) =>
    <String, dynamic>{
      'currencyCode': instance.currencyCode,
      'methods': instance.methods,
    };

_$RequiredClaimsModelImpl _$$RequiredClaimsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequiredClaimsModelImpl(
      id: json['id'] as String?,
      format: json['format'] == null
          ? null
          : FormatModel.fromJson(json['format'] as Map<String, dynamic>),
      inputDescriptors: (json['input_descriptors'] as List<dynamic>?)
          ?.map(
              (e) => InputDescriptorsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequiredClaimsModelImplToJson(
        _$RequiredClaimsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'format': instance.format,
      'input_descriptors': instance.inputDescriptors,
    };

_$FormatModelImpl _$$FormatModelImplFromJson(Map<String, dynamic> json) =>
    _$FormatModelImpl(
      jwtVc: json['jwt_vc'] == null
          ? null
          : JwtVcModel.fromJson(json['jwt_vc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FormatModelImplToJson(_$FormatModelImpl instance) =>
    <String, dynamic>{
      'jwt_vc': instance.jwtVc,
    };

_$JwtVcModelImpl _$$JwtVcModelImplFromJson(Map<String, dynamic> json) =>
    _$JwtVcModelImpl(
      alg: (json['alg'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$JwtVcModelImplToJson(_$JwtVcModelImpl instance) =>
    <String, dynamic>{
      'alg': instance.alg,
    };

_$InputDescriptorsModelImpl _$$InputDescriptorsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputDescriptorsModelImpl(
      id: json['id'] as String?,
      constraints: json['constraints'] == null
          ? null
          : ConstraintsModel.fromJson(
              json['constraints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InputDescriptorsModelImplToJson(
        _$InputDescriptorsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'constraints': instance.constraints,
    };

_$ConstraintsModelImpl _$$ConstraintsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConstraintsModelImpl(
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FieldsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConstraintsModelImplToJson(
        _$ConstraintsModelImpl instance) =>
    <String, dynamic>{
      'fields': instance.fields,
    };

_$FieldsModelImpl _$$FieldsModelImplFromJson(Map<String, dynamic> json) =>
    _$FieldsModelImpl(
      path: (json['path'] as List<dynamic>?)?.map((e) => e as String).toList(),
      filter: json['filter'] == null
          ? null
          : FilterModel.fromJson(json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FieldsModelImplToJson(_$FieldsModelImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'filter': instance.filter,
    };

_$FilterModelImpl _$$FilterModelImplFromJson(Map<String, dynamic> json) =>
    _$FilterModelImpl(
      type: json['type'] as String?,
      constI: json['const'] as String?,
    );

Map<String, dynamic> _$$FilterModelImplToJson(_$FilterModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'const': instance.constI,
    };
