// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pfi_offering_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PfiOfferingModel _$PfiOfferingModelFromJson(Map<String, dynamic> json) {
  return _PfiOfferingModel.fromJson(json);
}

/// @nodoc
mixin _$PfiOfferingModel {
  @JsonKey(name: 'metadata')
  MetadataModel? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataModel? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature')
  String? get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PfiOfferingModelCopyWith<PfiOfferingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PfiOfferingModelCopyWith<$Res> {
  factory $PfiOfferingModelCopyWith(
          PfiOfferingModel value, $Res Function(PfiOfferingModel) then) =
      _$PfiOfferingModelCopyWithImpl<$Res, PfiOfferingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'metadata') MetadataModel? metadata,
      @JsonKey(name: 'data') DataModel? data,
      @JsonKey(name: 'signature') String? signature});

  $MetadataModelCopyWith<$Res>? get metadata;
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PfiOfferingModelCopyWithImpl<$Res, $Val extends PfiOfferingModel>
    implements $PfiOfferingModelCopyWith<$Res> {
  _$PfiOfferingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? data = freezed,
    Object? signature = freezed,
  }) {
    return _then(_value.copyWith(
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataModelCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataModelCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PfiOfferingModelImplCopyWith<$Res>
    implements $PfiOfferingModelCopyWith<$Res> {
  factory _$$PfiOfferingModelImplCopyWith(_$PfiOfferingModelImpl value,
          $Res Function(_$PfiOfferingModelImpl) then) =
      __$$PfiOfferingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'metadata') MetadataModel? metadata,
      @JsonKey(name: 'data') DataModel? data,
      @JsonKey(name: 'signature') String? signature});

  @override
  $MetadataModelCopyWith<$Res>? get metadata;
  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PfiOfferingModelImplCopyWithImpl<$Res>
    extends _$PfiOfferingModelCopyWithImpl<$Res, _$PfiOfferingModelImpl>
    implements _$$PfiOfferingModelImplCopyWith<$Res> {
  __$$PfiOfferingModelImplCopyWithImpl(_$PfiOfferingModelImpl _value,
      $Res Function(_$PfiOfferingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? data = freezed,
    Object? signature = freezed,
  }) {
    return _then(_$PfiOfferingModelImpl(
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PfiOfferingModelImpl implements _PfiOfferingModel {
  const _$PfiOfferingModelImpl(
      {@JsonKey(name: 'metadata') this.metadata,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'signature') this.signature});

  factory _$PfiOfferingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PfiOfferingModelImplFromJson(json);

  @override
  @JsonKey(name: 'metadata')
  final MetadataModel? metadata;
  @override
  @JsonKey(name: 'data')
  final DataModel? data;
  @override
  @JsonKey(name: 'signature')
  final String? signature;

  @override
  String toString() {
    return 'PfiOfferingModel(metadata: $metadata, data: $data, signature: $signature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PfiOfferingModelImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, metadata, data, signature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PfiOfferingModelImplCopyWith<_$PfiOfferingModelImpl> get copyWith =>
      __$$PfiOfferingModelImplCopyWithImpl<_$PfiOfferingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PfiOfferingModelImplToJson(
      this,
    );
  }
}

abstract class _PfiOfferingModel implements PfiOfferingModel {
  const factory _PfiOfferingModel(
          {@JsonKey(name: 'metadata') final MetadataModel? metadata,
          @JsonKey(name: 'data') final DataModel? data,
          @JsonKey(name: 'signature') final String? signature}) =
      _$PfiOfferingModelImpl;

  factory _PfiOfferingModel.fromJson(Map<String, dynamic> json) =
      _$PfiOfferingModelImpl.fromJson;

  @override
  @JsonKey(name: 'metadata')
  MetadataModel? get metadata;
  @override
  @JsonKey(name: 'data')
  DataModel? get data;
  @override
  @JsonKey(name: 'signature')
  String? get signature;
  @override
  @JsonKey(ignore: true)
  _$$PfiOfferingModelImplCopyWith<_$PfiOfferingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetadataModel _$MetadataModelFromJson(Map<String, dynamic> json) {
  return _MetadataModel.fromJson(json);
}

/// @nodoc
mixin _$MetadataModel {
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'protocol')
  String? get protocol => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetadataModelCopyWith<MetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataModelCopyWith<$Res> {
  factory $MetadataModelCopyWith(
          MetadataModel value, $Res Function(MetadataModel) then) =
      _$MetadataModelCopyWithImpl<$Res, MetadataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String? from,
      @JsonKey(name: 'protocol') String? protocol,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'createdAt') String? createdAt});
}

/// @nodoc
class _$MetadataModelCopyWithImpl<$Res, $Val extends MetadataModel>
    implements $MetadataModelCopyWith<$Res> {
  _$MetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? protocol = freezed,
    Object? kind = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      protocol: freezed == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataModelImplCopyWith<$Res>
    implements $MetadataModelCopyWith<$Res> {
  factory _$$MetadataModelImplCopyWith(
          _$MetadataModelImpl value, $Res Function(_$MetadataModelImpl) then) =
      __$$MetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'from') String? from,
      @JsonKey(name: 'protocol') String? protocol,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'createdAt') String? createdAt});
}

/// @nodoc
class __$$MetadataModelImplCopyWithImpl<$Res>
    extends _$MetadataModelCopyWithImpl<$Res, _$MetadataModelImpl>
    implements _$$MetadataModelImplCopyWith<$Res> {
  __$$MetadataModelImplCopyWithImpl(
      _$MetadataModelImpl _value, $Res Function(_$MetadataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? protocol = freezed,
    Object? kind = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MetadataModelImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      protocol: freezed == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataModelImpl implements _MetadataModel {
  const _$MetadataModelImpl(
      {@JsonKey(name: 'from') this.from,
      @JsonKey(name: 'protocol') this.protocol,
      @JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'createdAt') this.createdAt});

  factory _$MetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataModelImplFromJson(json);

  @override
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'protocol')
  final String? protocol;
  @override
  @JsonKey(name: 'kind')
  final String? kind;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;

  @override
  String toString() {
    return 'MetadataModel(from: $from, protocol: $protocol, kind: $kind, id: $id, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataModelImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, from, protocol, kind, id, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataModelImplCopyWith<_$MetadataModelImpl> get copyWith =>
      __$$MetadataModelImplCopyWithImpl<_$MetadataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataModelImplToJson(
      this,
    );
  }
}

abstract class _MetadataModel implements MetadataModel {
  const factory _MetadataModel(
          {@JsonKey(name: 'from') final String? from,
          @JsonKey(name: 'protocol') final String? protocol,
          @JsonKey(name: 'kind') final String? kind,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'createdAt') final String? createdAt}) =
      _$MetadataModelImpl;

  factory _MetadataModel.fromJson(Map<String, dynamic> json) =
      _$MetadataModelImpl.fromJson;

  @override
  @JsonKey(name: 'from')
  String? get from;
  @override
  @JsonKey(name: 'protocol')
  String? get protocol;
  @override
  @JsonKey(name: 'kind')
  String? get kind;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$MetadataModelImplCopyWith<_$MetadataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'payoutUnitsPerPayinUnit')
  String? get payoutUnitsPerPayinUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'payout')
  PayoutModel? get payout => throw _privateConstructorUsedError;
  @JsonKey(name: 'payin')
  PayinModel? get payin => throw _privateConstructorUsedError;
  @JsonKey(name: 'requiredClaims')
  RequiredClaimsModel? get requiredClaims => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
      @JsonKey(name: 'payoutUnitsPerPayinUnit') String? payoutUnitsPerPayinUnit,
      @JsonKey(name: 'payout') PayoutModel? payout,
      @JsonKey(name: 'payin') PayinModel? payin,
      @JsonKey(name: 'requiredClaims') RequiredClaimsModel? requiredClaims});

  $PayoutModelCopyWith<$Res>? get payout;
  $PayinModelCopyWith<$Res>? get payin;
  $RequiredClaimsModelCopyWith<$Res>? get requiredClaims;
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? payoutUnitsPerPayinUnit = freezed,
    Object? payout = freezed,
    Object? payin = freezed,
    Object? requiredClaims = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutUnitsPerPayinUnit: freezed == payoutUnitsPerPayinUnit
          ? _value.payoutUnitsPerPayinUnit
          : payoutUnitsPerPayinUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutModel?,
      payin: freezed == payin
          ? _value.payin
          : payin // ignore: cast_nullable_to_non_nullable
              as PayinModel?,
      requiredClaims: freezed == requiredClaims
          ? _value.requiredClaims
          : requiredClaims // ignore: cast_nullable_to_non_nullable
              as RequiredClaimsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayoutModelCopyWith<$Res>? get payout {
    if (_value.payout == null) {
      return null;
    }

    return $PayoutModelCopyWith<$Res>(_value.payout!, (value) {
      return _then(_value.copyWith(payout: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PayinModelCopyWith<$Res>? get payin {
    if (_value.payin == null) {
      return null;
    }

    return $PayinModelCopyWith<$Res>(_value.payin!, (value) {
      return _then(_value.copyWith(payin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequiredClaimsModelCopyWith<$Res>? get requiredClaims {
    if (_value.requiredClaims == null) {
      return null;
    }

    return $RequiredClaimsModelCopyWith<$Res>(_value.requiredClaims!, (value) {
      return _then(_value.copyWith(requiredClaims: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
      @JsonKey(name: 'payoutUnitsPerPayinUnit') String? payoutUnitsPerPayinUnit,
      @JsonKey(name: 'payout') PayoutModel? payout,
      @JsonKey(name: 'payin') PayinModel? payin,
      @JsonKey(name: 'requiredClaims') RequiredClaimsModel? requiredClaims});

  @override
  $PayoutModelCopyWith<$Res>? get payout;
  @override
  $PayinModelCopyWith<$Res>? get payin;
  @override
  $RequiredClaimsModelCopyWith<$Res>? get requiredClaims;
}

/// @nodoc
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? payoutUnitsPerPayinUnit = freezed,
    Object? payout = freezed,
    Object? payin = freezed,
    Object? requiredClaims = freezed,
  }) {
    return _then(_$DataModelImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutUnitsPerPayinUnit: freezed == payoutUnitsPerPayinUnit
          ? _value.payoutUnitsPerPayinUnit
          : payoutUnitsPerPayinUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutModel?,
      payin: freezed == payin
          ? _value.payin
          : payin // ignore: cast_nullable_to_non_nullable
              as PayinModel?,
      requiredClaims: freezed == requiredClaims
          ? _value.requiredClaims
          : requiredClaims // ignore: cast_nullable_to_non_nullable
              as RequiredClaimsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: 'description') this.description,
      @JsonKey(name: 'payoutUnitsPerPayinUnit') this.payoutUnitsPerPayinUnit,
      @JsonKey(name: 'payout') this.payout,
      @JsonKey(name: 'payin') this.payin,
      @JsonKey(name: 'requiredClaims') this.requiredClaims});

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'payoutUnitsPerPayinUnit')
  final String? payoutUnitsPerPayinUnit;
  @override
  @JsonKey(name: 'payout')
  final PayoutModel? payout;
  @override
  @JsonKey(name: 'payin')
  final PayinModel? payin;
  @override
  @JsonKey(name: 'requiredClaims')
  final RequiredClaimsModel? requiredClaims;

  @override
  String toString() {
    return 'DataModel(description: $description, payoutUnitsPerPayinUnit: $payoutUnitsPerPayinUnit, payout: $payout, payin: $payin, requiredClaims: $requiredClaims)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(
                    other.payoutUnitsPerPayinUnit, payoutUnitsPerPayinUnit) ||
                other.payoutUnitsPerPayinUnit == payoutUnitsPerPayinUnit) &&
            (identical(other.payout, payout) || other.payout == payout) &&
            (identical(other.payin, payin) || other.payin == payin) &&
            (identical(other.requiredClaims, requiredClaims) ||
                other.requiredClaims == requiredClaims));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      payoutUnitsPerPayinUnit, payout, payin, requiredClaims);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      __$$DataModelImplCopyWithImpl<_$DataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataModelImplToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
      {@JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'payoutUnitsPerPayinUnit')
      final String? payoutUnitsPerPayinUnit,
      @JsonKey(name: 'payout') final PayoutModel? payout,
      @JsonKey(name: 'payin') final PayinModel? payin,
      @JsonKey(name: 'requiredClaims')
      final RequiredClaimsModel? requiredClaims}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'payoutUnitsPerPayinUnit')
  String? get payoutUnitsPerPayinUnit;
  @override
  @JsonKey(name: 'payout')
  PayoutModel? get payout;
  @override
  @JsonKey(name: 'payin')
  PayinModel? get payin;
  @override
  @JsonKey(name: 'requiredClaims')
  RequiredClaimsModel? get requiredClaims;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayoutModel _$PayoutModelFromJson(Map<String, dynamic> json) {
  return _PayoutModel.fromJson(json);
}

/// @nodoc
mixin _$PayoutModel {
  @JsonKey(name: 'currencyCode')
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'methods')
  List<MethodsModel>? get methods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayoutModelCopyWith<PayoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutModelCopyWith<$Res> {
  factory $PayoutModelCopyWith(
          PayoutModel value, $Res Function(PayoutModel) then) =
      _$PayoutModelCopyWithImpl<$Res, PayoutModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currencyCode') String? currencyCode,
      @JsonKey(name: 'methods') List<MethodsModel>? methods});
}

/// @nodoc
class _$PayoutModelCopyWithImpl<$Res, $Val extends PayoutModel>
    implements $PayoutModelCopyWith<$Res> {
  _$PayoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = freezed,
    Object? methods = freezed,
  }) {
    return _then(_value.copyWith(
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      methods: freezed == methods
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<MethodsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayoutModelImplCopyWith<$Res>
    implements $PayoutModelCopyWith<$Res> {
  factory _$$PayoutModelImplCopyWith(
          _$PayoutModelImpl value, $Res Function(_$PayoutModelImpl) then) =
      __$$PayoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currencyCode') String? currencyCode,
      @JsonKey(name: 'methods') List<MethodsModel>? methods});
}

/// @nodoc
class __$$PayoutModelImplCopyWithImpl<$Res>
    extends _$PayoutModelCopyWithImpl<$Res, _$PayoutModelImpl>
    implements _$$PayoutModelImplCopyWith<$Res> {
  __$$PayoutModelImplCopyWithImpl(
      _$PayoutModelImpl _value, $Res Function(_$PayoutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = freezed,
    Object? methods = freezed,
  }) {
    return _then(_$PayoutModelImpl(
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      methods: freezed == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<MethodsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutModelImpl implements _PayoutModel {
  const _$PayoutModelImpl(
      {@JsonKey(name: 'currencyCode') this.currencyCode,
      @JsonKey(name: 'methods') final List<MethodsModel>? methods})
      : _methods = methods;

  factory _$PayoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutModelImplFromJson(json);

  @override
  @JsonKey(name: 'currencyCode')
  final String? currencyCode;
  final List<MethodsModel>? _methods;
  @override
  @JsonKey(name: 'methods')
  List<MethodsModel>? get methods {
    final value = _methods;
    if (value == null) return null;
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PayoutModel(currencyCode: $currencyCode, methods: $methods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutModelImpl &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            const DeepCollectionEquality().equals(other._methods, _methods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currencyCode, const DeepCollectionEquality().hash(_methods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutModelImplCopyWith<_$PayoutModelImpl> get copyWith =>
      __$$PayoutModelImplCopyWithImpl<_$PayoutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutModelImplToJson(
      this,
    );
  }
}

abstract class _PayoutModel implements PayoutModel {
  const factory _PayoutModel(
          {@JsonKey(name: 'currencyCode') final String? currencyCode,
          @JsonKey(name: 'methods') final List<MethodsModel>? methods}) =
      _$PayoutModelImpl;

  factory _PayoutModel.fromJson(Map<String, dynamic> json) =
      _$PayoutModelImpl.fromJson;

  @override
  @JsonKey(name: 'currencyCode')
  String? get currencyCode;
  @override
  @JsonKey(name: 'methods')
  List<MethodsModel>? get methods;
  @override
  @JsonKey(ignore: true)
  _$$PayoutModelImplCopyWith<_$PayoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MethodsModel _$MethodsModelFromJson(Map<String, dynamic> json) {
  return _MethodsModel.fromJson(json);
}

/// @nodoc
mixin _$MethodsModel {
  @JsonKey(name: 'kind')
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimatedSettlementTime')
  int? get estimatedSettlementTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'requiredPaymentDetails')
  RequiredPaymentDetailsModel? get requiredPaymentDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodsModelCopyWith<MethodsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodsModelCopyWith<$Res> {
  factory $MethodsModelCopyWith(
          MethodsModel value, $Res Function(MethodsModel) then) =
      _$MethodsModelCopyWithImpl<$Res, MethodsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'estimatedSettlementTime') int? estimatedSettlementTime,
      @JsonKey(name: 'requiredPaymentDetails')
      RequiredPaymentDetailsModel? requiredPaymentDetails});

  $RequiredPaymentDetailsModelCopyWith<$Res>? get requiredPaymentDetails;
}

/// @nodoc
class _$MethodsModelCopyWithImpl<$Res, $Val extends MethodsModel>
    implements $MethodsModelCopyWith<$Res> {
  _$MethodsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? estimatedSettlementTime = freezed,
    Object? requiredPaymentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedSettlementTime: freezed == estimatedSettlementTime
          ? _value.estimatedSettlementTime
          : estimatedSettlementTime // ignore: cast_nullable_to_non_nullable
              as int?,
      requiredPaymentDetails: freezed == requiredPaymentDetails
          ? _value.requiredPaymentDetails
          : requiredPaymentDetails // ignore: cast_nullable_to_non_nullable
              as RequiredPaymentDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequiredPaymentDetailsModelCopyWith<$Res>? get requiredPaymentDetails {
    if (_value.requiredPaymentDetails == null) {
      return null;
    }

    return $RequiredPaymentDetailsModelCopyWith<$Res>(
        _value.requiredPaymentDetails!, (value) {
      return _then(_value.copyWith(requiredPaymentDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MethodsModelImplCopyWith<$Res>
    implements $MethodsModelCopyWith<$Res> {
  factory _$$MethodsModelImplCopyWith(
          _$MethodsModelImpl value, $Res Function(_$MethodsModelImpl) then) =
      __$$MethodsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'estimatedSettlementTime') int? estimatedSettlementTime,
      @JsonKey(name: 'requiredPaymentDetails')
      RequiredPaymentDetailsModel? requiredPaymentDetails});

  @override
  $RequiredPaymentDetailsModelCopyWith<$Res>? get requiredPaymentDetails;
}

/// @nodoc
class __$$MethodsModelImplCopyWithImpl<$Res>
    extends _$MethodsModelCopyWithImpl<$Res, _$MethodsModelImpl>
    implements _$$MethodsModelImplCopyWith<$Res> {
  __$$MethodsModelImplCopyWithImpl(
      _$MethodsModelImpl _value, $Res Function(_$MethodsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? estimatedSettlementTime = freezed,
    Object? requiredPaymentDetails = freezed,
  }) {
    return _then(_$MethodsModelImpl(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedSettlementTime: freezed == estimatedSettlementTime
          ? _value.estimatedSettlementTime
          : estimatedSettlementTime // ignore: cast_nullable_to_non_nullable
              as int?,
      requiredPaymentDetails: freezed == requiredPaymentDetails
          ? _value.requiredPaymentDetails
          : requiredPaymentDetails // ignore: cast_nullable_to_non_nullable
              as RequiredPaymentDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MethodsModelImpl implements _MethodsModel {
  const _$MethodsModelImpl(
      {@JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'estimatedSettlementTime') this.estimatedSettlementTime,
      @JsonKey(name: 'requiredPaymentDetails') this.requiredPaymentDetails});

  factory _$MethodsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MethodsModelImplFromJson(json);

  @override
  @JsonKey(name: 'kind')
  final String? kind;
  @override
  @JsonKey(name: 'estimatedSettlementTime')
  final int? estimatedSettlementTime;
  @override
  @JsonKey(name: 'requiredPaymentDetails')
  final RequiredPaymentDetailsModel? requiredPaymentDetails;

  @override
  String toString() {
    return 'MethodsModel(kind: $kind, estimatedSettlementTime: $estimatedSettlementTime, requiredPaymentDetails: $requiredPaymentDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MethodsModelImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(
                    other.estimatedSettlementTime, estimatedSettlementTime) ||
                other.estimatedSettlementTime == estimatedSettlementTime) &&
            (identical(other.requiredPaymentDetails, requiredPaymentDetails) ||
                other.requiredPaymentDetails == requiredPaymentDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kind, estimatedSettlementTime, requiredPaymentDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MethodsModelImplCopyWith<_$MethodsModelImpl> get copyWith =>
      __$$MethodsModelImplCopyWithImpl<_$MethodsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MethodsModelImplToJson(
      this,
    );
  }
}

abstract class _MethodsModel implements MethodsModel {
  const factory _MethodsModel(
          {@JsonKey(name: 'kind') final String? kind,
          @JsonKey(name: 'estimatedSettlementTime')
          final int? estimatedSettlementTime,
          @JsonKey(name: 'requiredPaymentDetails')
          final RequiredPaymentDetailsModel? requiredPaymentDetails}) =
      _$MethodsModelImpl;

  factory _MethodsModel.fromJson(Map<String, dynamic> json) =
      _$MethodsModelImpl.fromJson;

  @override
  @JsonKey(name: 'kind')
  String? get kind;
  @override
  @JsonKey(name: 'estimatedSettlementTime')
  int? get estimatedSettlementTime;
  @override
  @JsonKey(name: 'requiredPaymentDetails')
  RequiredPaymentDetailsModel? get requiredPaymentDetails;
  @override
  @JsonKey(ignore: true)
  _$$MethodsModelImplCopyWith<_$MethodsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequiredPaymentDetailsModel _$RequiredPaymentDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _RequiredPaymentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$RequiredPaymentDetailsModel {
  @JsonKey(name: '\$schema')
  String? get $schema => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'required')
  List<String>? get required => throw _privateConstructorUsedError;
  @JsonKey(name: 'additionalProperties')
  bool? get additionalProperties => throw _privateConstructorUsedError;
  @JsonKey(name: 'properties')
  Map<String, AddressModel>? get properties =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequiredPaymentDetailsModelCopyWith<RequiredPaymentDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequiredPaymentDetailsModelCopyWith<$Res> {
  factory $RequiredPaymentDetailsModelCopyWith(
          RequiredPaymentDetailsModel value,
          $Res Function(RequiredPaymentDetailsModel) then) =
      _$RequiredPaymentDetailsModelCopyWithImpl<$Res,
          RequiredPaymentDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '\$schema') String? $schema,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'required') List<String>? required,
      @JsonKey(name: 'additionalProperties') bool? additionalProperties,
      @JsonKey(name: 'properties') Map<String, AddressModel>? properties});
}

/// @nodoc
class _$RequiredPaymentDetailsModelCopyWithImpl<$Res,
        $Val extends RequiredPaymentDetailsModel>
    implements $RequiredPaymentDetailsModelCopyWith<$Res> {
  _$RequiredPaymentDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? $schema = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? required = freezed,
    Object? additionalProperties = freezed,
    Object? properties = freezed,
  }) {
    return _then(_value.copyWith(
      $schema: freezed == $schema
          ? _value.$schema
          : $schema // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      additionalProperties: freezed == additionalProperties
          ? _value.additionalProperties
          : additionalProperties // ignore: cast_nullable_to_non_nullable
              as bool?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, AddressModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequiredPaymentDetailsModelImplCopyWith<$Res>
    implements $RequiredPaymentDetailsModelCopyWith<$Res> {
  factory _$$RequiredPaymentDetailsModelImplCopyWith(
          _$RequiredPaymentDetailsModelImpl value,
          $Res Function(_$RequiredPaymentDetailsModelImpl) then) =
      __$$RequiredPaymentDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '\$schema') String? $schema,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'required') List<String>? required,
      @JsonKey(name: 'additionalProperties') bool? additionalProperties,
      @JsonKey(name: 'properties') Map<String, AddressModel>? properties});
}

/// @nodoc
class __$$RequiredPaymentDetailsModelImplCopyWithImpl<$Res>
    extends _$RequiredPaymentDetailsModelCopyWithImpl<$Res,
        _$RequiredPaymentDetailsModelImpl>
    implements _$$RequiredPaymentDetailsModelImplCopyWith<$Res> {
  __$$RequiredPaymentDetailsModelImplCopyWithImpl(
      _$RequiredPaymentDetailsModelImpl _value,
      $Res Function(_$RequiredPaymentDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? $schema = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? required = freezed,
    Object? additionalProperties = freezed,
    Object? properties = freezed,
  }) {
    return _then(_$RequiredPaymentDetailsModelImpl(
      $schema: freezed == $schema
          ? _value.$schema
          : $schema // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value._required
          : required // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      additionalProperties: freezed == additionalProperties
          ? _value.additionalProperties
          : additionalProperties // ignore: cast_nullable_to_non_nullable
              as bool?,
      properties: freezed == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, AddressModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequiredPaymentDetailsModelImpl
    implements _RequiredPaymentDetailsModel {
  const _$RequiredPaymentDetailsModelImpl(
      {@JsonKey(name: '\$schema') this.$schema,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'required') final List<String>? required,
      @JsonKey(name: 'additionalProperties') this.additionalProperties,
      @JsonKey(name: 'properties') final Map<String, AddressModel>? properties})
      : _required = required,
        _properties = properties;

  factory _$RequiredPaymentDetailsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequiredPaymentDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: '\$schema')
  final String? $schema;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'type')
  final String? type;
  final List<String>? _required;
  @override
  @JsonKey(name: 'required')
  List<String>? get required {
    final value = _required;
    if (value == null) return null;
    if (_required is EqualUnmodifiableListView) return _required;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'additionalProperties')
  final bool? additionalProperties;
  final Map<String, AddressModel>? _properties;
  @override
  @JsonKey(name: 'properties')
  Map<String, AddressModel>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequiredPaymentDetailsModel(\$schema: ${$schema}, title: $title, type: $type, required: $required, additionalProperties: $additionalProperties, properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredPaymentDetailsModelImpl &&
            (identical(other.$schema, $schema) || other.$schema == $schema) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._required, _required) &&
            (identical(other.additionalProperties, additionalProperties) ||
                other.additionalProperties == additionalProperties) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      $schema,
      title,
      type,
      const DeepCollectionEquality().hash(_required),
      additionalProperties,
      const DeepCollectionEquality().hash(_properties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredPaymentDetailsModelImplCopyWith<_$RequiredPaymentDetailsModelImpl>
      get copyWith => __$$RequiredPaymentDetailsModelImplCopyWithImpl<
          _$RequiredPaymentDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequiredPaymentDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _RequiredPaymentDetailsModel
    implements RequiredPaymentDetailsModel {
  const factory _RequiredPaymentDetailsModel(
      {@JsonKey(name: '\$schema') final String? $schema,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'required') final List<String>? required,
      @JsonKey(name: 'additionalProperties') final bool? additionalProperties,
      @JsonKey(name: 'properties')
      final Map<String, AddressModel>?
          properties}) = _$RequiredPaymentDetailsModelImpl;

  factory _RequiredPaymentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$RequiredPaymentDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: '\$schema')
  String? get $schema;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'required')
  List<String>? get required;
  @override
  @JsonKey(name: 'additionalProperties')
  bool? get additionalProperties;
  @override
  @JsonKey(name: 'properties')
  Map<String, AddressModel>? get properties;
  @override
  @JsonKey(ignore: true)
  _$$RequiredPaymentDetailsModelImplCopyWith<_$RequiredPaymentDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
          _$AddressModelImpl value, $Res Function(_$AddressModelImpl) then) =
      __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
      _$AddressModelImpl _value, $Res Function(_$AddressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
  }) {
    return _then(_$AddressModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  const _$AddressModelImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'type') this.type});

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'type')
  final String? type;

  @override
  String toString() {
    return 'AddressModel(title: $title, description: $description, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'type') final String? type}) = _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayinModel _$PayinModelFromJson(Map<String, dynamic> json) {
  return _PayinModel.fromJson(json);
}

/// @nodoc
mixin _$PayinModel {
  @JsonKey(name: 'currencyCode')
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'methods')
  List<MethodsModel>? get methods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayinModelCopyWith<PayinModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayinModelCopyWith<$Res> {
  factory $PayinModelCopyWith(
          PayinModel value, $Res Function(PayinModel) then) =
      _$PayinModelCopyWithImpl<$Res, PayinModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currencyCode') String? currencyCode,
      @JsonKey(name: 'methods') List<MethodsModel>? methods});
}

/// @nodoc
class _$PayinModelCopyWithImpl<$Res, $Val extends PayinModel>
    implements $PayinModelCopyWith<$Res> {
  _$PayinModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = freezed,
    Object? methods = freezed,
  }) {
    return _then(_value.copyWith(
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      methods: freezed == methods
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<MethodsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayinModelImplCopyWith<$Res>
    implements $PayinModelCopyWith<$Res> {
  factory _$$PayinModelImplCopyWith(
          _$PayinModelImpl value, $Res Function(_$PayinModelImpl) then) =
      __$$PayinModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currencyCode') String? currencyCode,
      @JsonKey(name: 'methods') List<MethodsModel>? methods});
}

/// @nodoc
class __$$PayinModelImplCopyWithImpl<$Res>
    extends _$PayinModelCopyWithImpl<$Res, _$PayinModelImpl>
    implements _$$PayinModelImplCopyWith<$Res> {
  __$$PayinModelImplCopyWithImpl(
      _$PayinModelImpl _value, $Res Function(_$PayinModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = freezed,
    Object? methods = freezed,
  }) {
    return _then(_$PayinModelImpl(
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      methods: freezed == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<MethodsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayinModelImpl implements _PayinModel {
  const _$PayinModelImpl(
      {@JsonKey(name: 'currencyCode') this.currencyCode,
      @JsonKey(name: 'methods') final List<MethodsModel>? methods})
      : _methods = methods;

  factory _$PayinModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayinModelImplFromJson(json);

  @override
  @JsonKey(name: 'currencyCode')
  final String? currencyCode;
  final List<MethodsModel>? _methods;
  @override
  @JsonKey(name: 'methods')
  List<MethodsModel>? get methods {
    final value = _methods;
    if (value == null) return null;
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PayinModel(currencyCode: $currencyCode, methods: $methods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayinModelImpl &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            const DeepCollectionEquality().equals(other._methods, _methods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currencyCode, const DeepCollectionEquality().hash(_methods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayinModelImplCopyWith<_$PayinModelImpl> get copyWith =>
      __$$PayinModelImplCopyWithImpl<_$PayinModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayinModelImplToJson(
      this,
    );
  }
}

abstract class _PayinModel implements PayinModel {
  const factory _PayinModel(
          {@JsonKey(name: 'currencyCode') final String? currencyCode,
          @JsonKey(name: 'methods') final List<MethodsModel>? methods}) =
      _$PayinModelImpl;

  factory _PayinModel.fromJson(Map<String, dynamic> json) =
      _$PayinModelImpl.fromJson;

  @override
  @JsonKey(name: 'currencyCode')
  String? get currencyCode;
  @override
  @JsonKey(name: 'methods')
  List<MethodsModel>? get methods;
  @override
  @JsonKey(ignore: true)
  _$$PayinModelImplCopyWith<_$PayinModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequiredClaimsModel _$RequiredClaimsModelFromJson(Map<String, dynamic> json) {
  return _RequiredClaimsModel.fromJson(json);
}

/// @nodoc
mixin _$RequiredClaimsModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  FormatModel? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'input_descriptors')
  List<InputDescriptorsModel>? get inputDescriptors =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequiredClaimsModelCopyWith<RequiredClaimsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequiredClaimsModelCopyWith<$Res> {
  factory $RequiredClaimsModelCopyWith(
          RequiredClaimsModel value, $Res Function(RequiredClaimsModel) then) =
      _$RequiredClaimsModelCopyWithImpl<$Res, RequiredClaimsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'format') FormatModel? format,
      @JsonKey(name: 'input_descriptors')
      List<InputDescriptorsModel>? inputDescriptors});

  $FormatModelCopyWith<$Res>? get format;
}

/// @nodoc
class _$RequiredClaimsModelCopyWithImpl<$Res, $Val extends RequiredClaimsModel>
    implements $RequiredClaimsModelCopyWith<$Res> {
  _$RequiredClaimsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? format = freezed,
    Object? inputDescriptors = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as FormatModel?,
      inputDescriptors: freezed == inputDescriptors
          ? _value.inputDescriptors
          : inputDescriptors // ignore: cast_nullable_to_non_nullable
              as List<InputDescriptorsModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormatModelCopyWith<$Res>? get format {
    if (_value.format == null) {
      return null;
    }

    return $FormatModelCopyWith<$Res>(_value.format!, (value) {
      return _then(_value.copyWith(format: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequiredClaimsModelImplCopyWith<$Res>
    implements $RequiredClaimsModelCopyWith<$Res> {
  factory _$$RequiredClaimsModelImplCopyWith(_$RequiredClaimsModelImpl value,
          $Res Function(_$RequiredClaimsModelImpl) then) =
      __$$RequiredClaimsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'format') FormatModel? format,
      @JsonKey(name: 'input_descriptors')
      List<InputDescriptorsModel>? inputDescriptors});

  @override
  $FormatModelCopyWith<$Res>? get format;
}

/// @nodoc
class __$$RequiredClaimsModelImplCopyWithImpl<$Res>
    extends _$RequiredClaimsModelCopyWithImpl<$Res, _$RequiredClaimsModelImpl>
    implements _$$RequiredClaimsModelImplCopyWith<$Res> {
  __$$RequiredClaimsModelImplCopyWithImpl(_$RequiredClaimsModelImpl _value,
      $Res Function(_$RequiredClaimsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? format = freezed,
    Object? inputDescriptors = freezed,
  }) {
    return _then(_$RequiredClaimsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as FormatModel?,
      inputDescriptors: freezed == inputDescriptors
          ? _value._inputDescriptors
          : inputDescriptors // ignore: cast_nullable_to_non_nullable
              as List<InputDescriptorsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequiredClaimsModelImpl implements _RequiredClaimsModel {
  const _$RequiredClaimsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'input_descriptors')
      final List<InputDescriptorsModel>? inputDescriptors})
      : _inputDescriptors = inputDescriptors;

  factory _$RequiredClaimsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequiredClaimsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'format')
  final FormatModel? format;
  final List<InputDescriptorsModel>? _inputDescriptors;
  @override
  @JsonKey(name: 'input_descriptors')
  List<InputDescriptorsModel>? get inputDescriptors {
    final value = _inputDescriptors;
    if (value == null) return null;
    if (_inputDescriptors is EqualUnmodifiableListView)
      return _inputDescriptors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequiredClaimsModel(id: $id, format: $format, inputDescriptors: $inputDescriptors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredClaimsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality()
                .equals(other._inputDescriptors, _inputDescriptors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, format,
      const DeepCollectionEquality().hash(_inputDescriptors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredClaimsModelImplCopyWith<_$RequiredClaimsModelImpl> get copyWith =>
      __$$RequiredClaimsModelImplCopyWithImpl<_$RequiredClaimsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequiredClaimsModelImplToJson(
      this,
    );
  }
}

abstract class _RequiredClaimsModel implements RequiredClaimsModel {
  const factory _RequiredClaimsModel(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'format') final FormatModel? format,
          @JsonKey(name: 'input_descriptors')
          final List<InputDescriptorsModel>? inputDescriptors}) =
      _$RequiredClaimsModelImpl;

  factory _RequiredClaimsModel.fromJson(Map<String, dynamic> json) =
      _$RequiredClaimsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'format')
  FormatModel? get format;
  @override
  @JsonKey(name: 'input_descriptors')
  List<InputDescriptorsModel>? get inputDescriptors;
  @override
  @JsonKey(ignore: true)
  _$$RequiredClaimsModelImplCopyWith<_$RequiredClaimsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormatModel _$FormatModelFromJson(Map<String, dynamic> json) {
  return _FormatModel.fromJson(json);
}

/// @nodoc
mixin _$FormatModel {
  @JsonKey(name: 'jwt_vc')
  JwtVcModel? get jwtVc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormatModelCopyWith<FormatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormatModelCopyWith<$Res> {
  factory $FormatModelCopyWith(
          FormatModel value, $Res Function(FormatModel) then) =
      _$FormatModelCopyWithImpl<$Res, FormatModel>;
  @useResult
  $Res call({@JsonKey(name: 'jwt_vc') JwtVcModel? jwtVc});

  $JwtVcModelCopyWith<$Res>? get jwtVc;
}

/// @nodoc
class _$FormatModelCopyWithImpl<$Res, $Val extends FormatModel>
    implements $FormatModelCopyWith<$Res> {
  _$FormatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwtVc = freezed,
  }) {
    return _then(_value.copyWith(
      jwtVc: freezed == jwtVc
          ? _value.jwtVc
          : jwtVc // ignore: cast_nullable_to_non_nullable
              as JwtVcModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JwtVcModelCopyWith<$Res>? get jwtVc {
    if (_value.jwtVc == null) {
      return null;
    }

    return $JwtVcModelCopyWith<$Res>(_value.jwtVc!, (value) {
      return _then(_value.copyWith(jwtVc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormatModelImplCopyWith<$Res>
    implements $FormatModelCopyWith<$Res> {
  factory _$$FormatModelImplCopyWith(
          _$FormatModelImpl value, $Res Function(_$FormatModelImpl) then) =
      __$$FormatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'jwt_vc') JwtVcModel? jwtVc});

  @override
  $JwtVcModelCopyWith<$Res>? get jwtVc;
}

/// @nodoc
class __$$FormatModelImplCopyWithImpl<$Res>
    extends _$FormatModelCopyWithImpl<$Res, _$FormatModelImpl>
    implements _$$FormatModelImplCopyWith<$Res> {
  __$$FormatModelImplCopyWithImpl(
      _$FormatModelImpl _value, $Res Function(_$FormatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwtVc = freezed,
  }) {
    return _then(_$FormatModelImpl(
      jwtVc: freezed == jwtVc
          ? _value.jwtVc
          : jwtVc // ignore: cast_nullable_to_non_nullable
              as JwtVcModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormatModelImpl implements _FormatModel {
  const _$FormatModelImpl({@JsonKey(name: 'jwt_vc') this.jwtVc});

  factory _$FormatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormatModelImplFromJson(json);

  @override
  @JsonKey(name: 'jwt_vc')
  final JwtVcModel? jwtVc;

  @override
  String toString() {
    return 'FormatModel(jwtVc: $jwtVc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormatModelImpl &&
            (identical(other.jwtVc, jwtVc) || other.jwtVc == jwtVc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwtVc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormatModelImplCopyWith<_$FormatModelImpl> get copyWith =>
      __$$FormatModelImplCopyWithImpl<_$FormatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormatModelImplToJson(
      this,
    );
  }
}

abstract class _FormatModel implements FormatModel {
  const factory _FormatModel(
      {@JsonKey(name: 'jwt_vc') final JwtVcModel? jwtVc}) = _$FormatModelImpl;

  factory _FormatModel.fromJson(Map<String, dynamic> json) =
      _$FormatModelImpl.fromJson;

  @override
  @JsonKey(name: 'jwt_vc')
  JwtVcModel? get jwtVc;
  @override
  @JsonKey(ignore: true)
  _$$FormatModelImplCopyWith<_$FormatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JwtVcModel _$JwtVcModelFromJson(Map<String, dynamic> json) {
  return _JwtVcModel.fromJson(json);
}

/// @nodoc
mixin _$JwtVcModel {
  @JsonKey(name: 'alg')
  List<String>? get alg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtVcModelCopyWith<JwtVcModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtVcModelCopyWith<$Res> {
  factory $JwtVcModelCopyWith(
          JwtVcModel value, $Res Function(JwtVcModel) then) =
      _$JwtVcModelCopyWithImpl<$Res, JwtVcModel>;
  @useResult
  $Res call({@JsonKey(name: 'alg') List<String>? alg});
}

/// @nodoc
class _$JwtVcModelCopyWithImpl<$Res, $Val extends JwtVcModel>
    implements $JwtVcModelCopyWith<$Res> {
  _$JwtVcModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alg = freezed,
  }) {
    return _then(_value.copyWith(
      alg: freezed == alg
          ? _value.alg
          : alg // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtVcModelImplCopyWith<$Res>
    implements $JwtVcModelCopyWith<$Res> {
  factory _$$JwtVcModelImplCopyWith(
          _$JwtVcModelImpl value, $Res Function(_$JwtVcModelImpl) then) =
      __$$JwtVcModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'alg') List<String>? alg});
}

/// @nodoc
class __$$JwtVcModelImplCopyWithImpl<$Res>
    extends _$JwtVcModelCopyWithImpl<$Res, _$JwtVcModelImpl>
    implements _$$JwtVcModelImplCopyWith<$Res> {
  __$$JwtVcModelImplCopyWithImpl(
      _$JwtVcModelImpl _value, $Res Function(_$JwtVcModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alg = freezed,
  }) {
    return _then(_$JwtVcModelImpl(
      alg: freezed == alg
          ? _value._alg
          : alg // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JwtVcModelImpl implements _JwtVcModel {
  const _$JwtVcModelImpl({@JsonKey(name: 'alg') final List<String>? alg})
      : _alg = alg;

  factory _$JwtVcModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtVcModelImplFromJson(json);

  final List<String>? _alg;
  @override
  @JsonKey(name: 'alg')
  List<String>? get alg {
    final value = _alg;
    if (value == null) return null;
    if (_alg is EqualUnmodifiableListView) return _alg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JwtVcModel(alg: $alg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtVcModelImpl &&
            const DeepCollectionEquality().equals(other._alg, _alg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_alg));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtVcModelImplCopyWith<_$JwtVcModelImpl> get copyWith =>
      __$$JwtVcModelImplCopyWithImpl<_$JwtVcModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtVcModelImplToJson(
      this,
    );
  }
}

abstract class _JwtVcModel implements JwtVcModel {
  const factory _JwtVcModel({@JsonKey(name: 'alg') final List<String>? alg}) =
      _$JwtVcModelImpl;

  factory _JwtVcModel.fromJson(Map<String, dynamic> json) =
      _$JwtVcModelImpl.fromJson;

  @override
  @JsonKey(name: 'alg')
  List<String>? get alg;
  @override
  @JsonKey(ignore: true)
  _$$JwtVcModelImplCopyWith<_$JwtVcModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InputDescriptorsModel _$InputDescriptorsModelFromJson(
    Map<String, dynamic> json) {
  return _InputDescriptorsModel.fromJson(json);
}

/// @nodoc
mixin _$InputDescriptorsModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'constraints')
  ConstraintsModel? get constraints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputDescriptorsModelCopyWith<InputDescriptorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputDescriptorsModelCopyWith<$Res> {
  factory $InputDescriptorsModelCopyWith(InputDescriptorsModel value,
          $Res Function(InputDescriptorsModel) then) =
      _$InputDescriptorsModelCopyWithImpl<$Res, InputDescriptorsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'constraints') ConstraintsModel? constraints});

  $ConstraintsModelCopyWith<$Res>? get constraints;
}

/// @nodoc
class _$InputDescriptorsModelCopyWithImpl<$Res,
        $Val extends InputDescriptorsModel>
    implements $InputDescriptorsModelCopyWith<$Res> {
  _$InputDescriptorsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? constraints = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      constraints: freezed == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as ConstraintsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstraintsModelCopyWith<$Res>? get constraints {
    if (_value.constraints == null) {
      return null;
    }

    return $ConstraintsModelCopyWith<$Res>(_value.constraints!, (value) {
      return _then(_value.copyWith(constraints: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InputDescriptorsModelImplCopyWith<$Res>
    implements $InputDescriptorsModelCopyWith<$Res> {
  factory _$$InputDescriptorsModelImplCopyWith(
          _$InputDescriptorsModelImpl value,
          $Res Function(_$InputDescriptorsModelImpl) then) =
      __$$InputDescriptorsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'constraints') ConstraintsModel? constraints});

  @override
  $ConstraintsModelCopyWith<$Res>? get constraints;
}

/// @nodoc
class __$$InputDescriptorsModelImplCopyWithImpl<$Res>
    extends _$InputDescriptorsModelCopyWithImpl<$Res,
        _$InputDescriptorsModelImpl>
    implements _$$InputDescriptorsModelImplCopyWith<$Res> {
  __$$InputDescriptorsModelImplCopyWithImpl(_$InputDescriptorsModelImpl _value,
      $Res Function(_$InputDescriptorsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? constraints = freezed,
  }) {
    return _then(_$InputDescriptorsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      constraints: freezed == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as ConstraintsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputDescriptorsModelImpl implements _InputDescriptorsModel {
  const _$InputDescriptorsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'constraints') this.constraints});

  factory _$InputDescriptorsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputDescriptorsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'constraints')
  final ConstraintsModel? constraints;

  @override
  String toString() {
    return 'InputDescriptorsModel(id: $id, constraints: $constraints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputDescriptorsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, constraints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputDescriptorsModelImplCopyWith<_$InputDescriptorsModelImpl>
      get copyWith => __$$InputDescriptorsModelImplCopyWithImpl<
          _$InputDescriptorsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputDescriptorsModelImplToJson(
      this,
    );
  }
}

abstract class _InputDescriptorsModel implements InputDescriptorsModel {
  const factory _InputDescriptorsModel(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'constraints') final ConstraintsModel? constraints}) =
      _$InputDescriptorsModelImpl;

  factory _InputDescriptorsModel.fromJson(Map<String, dynamic> json) =
      _$InputDescriptorsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'constraints')
  ConstraintsModel? get constraints;
  @override
  @JsonKey(ignore: true)
  _$$InputDescriptorsModelImplCopyWith<_$InputDescriptorsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConstraintsModel _$ConstraintsModelFromJson(Map<String, dynamic> json) {
  return _ConstraintsModel.fromJson(json);
}

/// @nodoc
mixin _$ConstraintsModel {
  @JsonKey(name: 'fields')
  List<FieldsModel>? get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstraintsModelCopyWith<ConstraintsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstraintsModelCopyWith<$Res> {
  factory $ConstraintsModelCopyWith(
          ConstraintsModel value, $Res Function(ConstraintsModel) then) =
      _$ConstraintsModelCopyWithImpl<$Res, ConstraintsModel>;
  @useResult
  $Res call({@JsonKey(name: 'fields') List<FieldsModel>? fields});
}

/// @nodoc
class _$ConstraintsModelCopyWithImpl<$Res, $Val extends ConstraintsModel>
    implements $ConstraintsModelCopyWith<$Res> {
  _$ConstraintsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConstraintsModelImplCopyWith<$Res>
    implements $ConstraintsModelCopyWith<$Res> {
  factory _$$ConstraintsModelImplCopyWith(_$ConstraintsModelImpl value,
          $Res Function(_$ConstraintsModelImpl) then) =
      __$$ConstraintsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fields') List<FieldsModel>? fields});
}

/// @nodoc
class __$$ConstraintsModelImplCopyWithImpl<$Res>
    extends _$ConstraintsModelCopyWithImpl<$Res, _$ConstraintsModelImpl>
    implements _$$ConstraintsModelImplCopyWith<$Res> {
  __$$ConstraintsModelImplCopyWithImpl(_$ConstraintsModelImpl _value,
      $Res Function(_$ConstraintsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_$ConstraintsModelImpl(
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConstraintsModelImpl implements _ConstraintsModel {
  const _$ConstraintsModelImpl(
      {@JsonKey(name: 'fields') final List<FieldsModel>? fields})
      : _fields = fields;

  factory _$ConstraintsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConstraintsModelImplFromJson(json);

  final List<FieldsModel>? _fields;
  @override
  @JsonKey(name: 'fields')
  List<FieldsModel>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConstraintsModel(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstraintsModelImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstraintsModelImplCopyWith<_$ConstraintsModelImpl> get copyWith =>
      __$$ConstraintsModelImplCopyWithImpl<_$ConstraintsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConstraintsModelImplToJson(
      this,
    );
  }
}

abstract class _ConstraintsModel implements ConstraintsModel {
  const factory _ConstraintsModel(
          {@JsonKey(name: 'fields') final List<FieldsModel>? fields}) =
      _$ConstraintsModelImpl;

  factory _ConstraintsModel.fromJson(Map<String, dynamic> json) =
      _$ConstraintsModelImpl.fromJson;

  @override
  @JsonKey(name: 'fields')
  List<FieldsModel>? get fields;
  @override
  @JsonKey(ignore: true)
  _$$ConstraintsModelImplCopyWith<_$ConstraintsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldsModel _$FieldsModelFromJson(Map<String, dynamic> json) {
  return _FieldsModel.fromJson(json);
}

/// @nodoc
mixin _$FieldsModel {
  @JsonKey(name: 'path')
  List<String>? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter')
  FilterModel? get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldsModelCopyWith<FieldsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsModelCopyWith<$Res> {
  factory $FieldsModelCopyWith(
          FieldsModel value, $Res Function(FieldsModel) then) =
      _$FieldsModelCopyWithImpl<$Res, FieldsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'path') List<String>? path,
      @JsonKey(name: 'filter') FilterModel? filter});

  $FilterModelCopyWith<$Res>? get filter;
}

/// @nodoc
class _$FieldsModelCopyWithImpl<$Res, $Val extends FieldsModel>
    implements $FieldsModelCopyWith<$Res> {
  _$FieldsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res>? get filter {
    if (_value.filter == null) {
      return null;
    }

    return $FilterModelCopyWith<$Res>(_value.filter!, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldsModelImplCopyWith<$Res>
    implements $FieldsModelCopyWith<$Res> {
  factory _$$FieldsModelImplCopyWith(
          _$FieldsModelImpl value, $Res Function(_$FieldsModelImpl) then) =
      __$$FieldsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'path') List<String>? path,
      @JsonKey(name: 'filter') FilterModel? filter});

  @override
  $FilterModelCopyWith<$Res>? get filter;
}

/// @nodoc
class __$$FieldsModelImplCopyWithImpl<$Res>
    extends _$FieldsModelCopyWithImpl<$Res, _$FieldsModelImpl>
    implements _$$FieldsModelImplCopyWith<$Res> {
  __$$FieldsModelImplCopyWithImpl(
      _$FieldsModelImpl _value, $Res Function(_$FieldsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$FieldsModelImpl(
      path: freezed == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsModelImpl implements _FieldsModel {
  const _$FieldsModelImpl(
      {@JsonKey(name: 'path') final List<String>? path,
      @JsonKey(name: 'filter') this.filter})
      : _path = path;

  factory _$FieldsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsModelImplFromJson(json);

  final List<String>? _path;
  @override
  @JsonKey(name: 'path')
  List<String>? get path {
    final value = _path;
    if (value == null) return null;
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'filter')
  final FilterModel? filter;

  @override
  String toString() {
    return 'FieldsModel(path: $path, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsModelImpl &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_path), filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldsModelImplCopyWith<_$FieldsModelImpl> get copyWith =>
      __$$FieldsModelImplCopyWithImpl<_$FieldsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldsModelImplToJson(
      this,
    );
  }
}

abstract class _FieldsModel implements FieldsModel {
  const factory _FieldsModel(
      {@JsonKey(name: 'path') final List<String>? path,
      @JsonKey(name: 'filter') final FilterModel? filter}) = _$FieldsModelImpl;

  factory _FieldsModel.fromJson(Map<String, dynamic> json) =
      _$FieldsModelImpl.fromJson;

  @override
  @JsonKey(name: 'path')
  List<String>? get path;
  @override
  @JsonKey(name: 'filter')
  FilterModel? get filter;
  @override
  @JsonKey(ignore: true)
  _$$FieldsModelImplCopyWith<_$FieldsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'const')
  String? get constI => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'const') String? constI});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? constI = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      constI: freezed == constI
          ? _value.constI
          : constI // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterModelImplCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$FilterModelImplCopyWith(
          _$FilterModelImpl value, $Res Function(_$FilterModelImpl) then) =
      __$$FilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'const') String? constI});
}

/// @nodoc
class __$$FilterModelImplCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$FilterModelImpl>
    implements _$$FilterModelImplCopyWith<$Res> {
  __$$FilterModelImplCopyWithImpl(
      _$FilterModelImpl _value, $Res Function(_$FilterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? constI = freezed,
  }) {
    return _then(_$FilterModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      constI: freezed == constI
          ? _value.constI
          : constI // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterModelImpl implements _FilterModel {
  const _$FilterModelImpl(
      {@JsonKey(name: 'type') this.type, @JsonKey(name: 'const') this.constI});

  factory _$FilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterModelImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'const')
  final String? constI;

  @override
  String toString() {
    return 'FilterModel(type: $type, constI: $constI)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.constI, constI) || other.constI == constI));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, constI);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      __$$FilterModelImplCopyWithImpl<_$FilterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterModelImplToJson(
      this,
    );
  }
}

abstract class _FilterModel implements FilterModel {
  const factory _FilterModel(
      {@JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'const') final String? constI}) = _$FilterModelImpl;

  factory _FilterModel.fromJson(Map<String, dynamic> json) =
      _$FilterModelImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'const')
  String? get constI;
  @override
  @JsonKey(ignore: true)
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
