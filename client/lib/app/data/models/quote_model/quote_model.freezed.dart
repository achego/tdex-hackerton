// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuoteModel _$QuoteModelFromJson(Map<String, dynamic> json) {
  return _QuoteModel.fromJson(json);
}

/// @nodoc
mixin _$QuoteModel {
  @JsonKey(name: 'metadata')
  MetadataModel? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataModel? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature')
  String? get signature => throw _privateConstructorUsedError;
  @JsonKey(name: 'privateData')
  PrivateDataModel? get privateData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteModelCopyWith<QuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteModelCopyWith<$Res> {
  factory $QuoteModelCopyWith(
          QuoteModel value, $Res Function(QuoteModel) then) =
      _$QuoteModelCopyWithImpl<$Res, QuoteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'metadata') MetadataModel? metadata,
      @JsonKey(name: 'data') DataModel? data,
      @JsonKey(name: 'signature') String? signature,
      @JsonKey(name: 'privateData') PrivateDataModel? privateData});

  $MetadataModelCopyWith<$Res>? get metadata;
  $DataModelCopyWith<$Res>? get data;
  $PrivateDataModelCopyWith<$Res>? get privateData;
}

/// @nodoc
class _$QuoteModelCopyWithImpl<$Res, $Val extends QuoteModel>
    implements $QuoteModelCopyWith<$Res> {
  _$QuoteModelCopyWithImpl(this._value, this._then);

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
    Object? privateData = freezed,
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
      privateData: freezed == privateData
          ? _value.privateData
          : privateData // ignore: cast_nullable_to_non_nullable
              as PrivateDataModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $PrivateDataModelCopyWith<$Res>? get privateData {
    if (_value.privateData == null) {
      return null;
    }

    return $PrivateDataModelCopyWith<$Res>(_value.privateData!, (value) {
      return _then(_value.copyWith(privateData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuoteModelImplCopyWith<$Res>
    implements $QuoteModelCopyWith<$Res> {
  factory _$$QuoteModelImplCopyWith(
          _$QuoteModelImpl value, $Res Function(_$QuoteModelImpl) then) =
      __$$QuoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'metadata') MetadataModel? metadata,
      @JsonKey(name: 'data') DataModel? data,
      @JsonKey(name: 'signature') String? signature,
      @JsonKey(name: 'privateData') PrivateDataModel? privateData});

  @override
  $MetadataModelCopyWith<$Res>? get metadata;
  @override
  $DataModelCopyWith<$Res>? get data;
  @override
  $PrivateDataModelCopyWith<$Res>? get privateData;
}

/// @nodoc
class __$$QuoteModelImplCopyWithImpl<$Res>
    extends _$QuoteModelCopyWithImpl<$Res, _$QuoteModelImpl>
    implements _$$QuoteModelImplCopyWith<$Res> {
  __$$QuoteModelImplCopyWithImpl(
      _$QuoteModelImpl _value, $Res Function(_$QuoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = freezed,
    Object? data = freezed,
    Object? signature = freezed,
    Object? privateData = freezed,
  }) {
    return _then(_$QuoteModelImpl(
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
      privateData: freezed == privateData
          ? _value.privateData
          : privateData // ignore: cast_nullable_to_non_nullable
              as PrivateDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteModelImpl with DiagnosticableTreeMixin implements _QuoteModel {
  const _$QuoteModelImpl(
      {@JsonKey(name: 'metadata') this.metadata,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'signature') this.signature,
      @JsonKey(name: 'privateData') this.privateData});

  factory _$QuoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteModelImplFromJson(json);

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
  @JsonKey(name: 'privateData')
  final PrivateDataModel? privateData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuoteModel(metadata: $metadata, data: $data, signature: $signature, privateData: $privateData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuoteModel'))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('signature', signature))
      ..add(DiagnosticsProperty('privateData', privateData));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteModelImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.privateData, privateData) ||
                other.privateData == privateData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, metadata, data, signature, privateData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteModelImplCopyWith<_$QuoteModelImpl> get copyWith =>
      __$$QuoteModelImplCopyWithImpl<_$QuoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteModelImplToJson(
      this,
    );
  }
}

abstract class _QuoteModel implements QuoteModel {
  const factory _QuoteModel(
          {@JsonKey(name: 'metadata') final MetadataModel? metadata,
          @JsonKey(name: 'data') final DataModel? data,
          @JsonKey(name: 'signature') final String? signature,
          @JsonKey(name: 'privateData') final PrivateDataModel? privateData}) =
      _$QuoteModelImpl;

  factory _QuoteModel.fromJson(Map<String, dynamic> json) =
      _$QuoteModelImpl.fromJson;

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
  @JsonKey(name: 'privateData')
  PrivateDataModel? get privateData;
  @override
  @JsonKey(ignore: true)
  _$$QuoteModelImplCopyWith<_$QuoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetadataModel _$MetadataModelFromJson(Map<String, dynamic> json) {
  return _MetadataModel.fromJson(json);
}

/// @nodoc
mixin _$MetadataModel {
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'protocol')
  String? get protocol => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'exchangeId')
  String? get exchangeId => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'protocol') String? protocol,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'exchangeId') String? exchangeId,
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
    Object? to = freezed,
    Object? protocol = freezed,
    Object? kind = freezed,
    Object? id = freezed,
    Object? exchangeId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
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
      exchangeId: freezed == exchangeId
          ? _value.exchangeId
          : exchangeId // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'protocol') String? protocol,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'exchangeId') String? exchangeId,
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
    Object? to = freezed,
    Object? protocol = freezed,
    Object? kind = freezed,
    Object? id = freezed,
    Object? exchangeId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MetadataModelImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
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
      exchangeId: freezed == exchangeId
          ? _value.exchangeId
          : exchangeId // ignore: cast_nullable_to_non_nullable
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
class _$MetadataModelImpl
    with DiagnosticableTreeMixin
    implements _MetadataModel {
  const _$MetadataModelImpl(
      {@JsonKey(name: 'from') this.from,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'protocol') this.protocol,
      @JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'exchangeId') this.exchangeId,
      @JsonKey(name: 'createdAt') this.createdAt});

  factory _$MetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataModelImplFromJson(json);

  @override
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'to')
  final String? to;
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
  @JsonKey(name: 'exchangeId')
  final String? exchangeId;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MetadataModel(from: $from, to: $to, protocol: $protocol, kind: $kind, id: $id, exchangeId: $exchangeId, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MetadataModel'))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('protocol', protocol))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('exchangeId', exchangeId))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataModelImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.exchangeId, exchangeId) ||
                other.exchangeId == exchangeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, from, to, protocol, kind, id, exchangeId, createdAt);

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
          @JsonKey(name: 'to') final String? to,
          @JsonKey(name: 'protocol') final String? protocol,
          @JsonKey(name: 'kind') final String? kind,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'exchangeId') final String? exchangeId,
          @JsonKey(name: 'createdAt') final String? createdAt}) =
      _$MetadataModelImpl;

  factory _MetadataModel.fromJson(Map<String, dynamic> json) =
      _$MetadataModelImpl.fromJson;

  @override
  @JsonKey(name: 'from')
  String? get from;
  @override
  @JsonKey(name: 'to')
  String? get to;
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
  @JsonKey(name: 'exchangeId')
  String? get exchangeId;
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
  @JsonKey(name: 'offeringId')
  String? get offeringId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payin')
  PayinModel? get payin => throw _privateConstructorUsedError;
  @JsonKey(name: 'payout')
  PayoutModel? get payout => throw _privateConstructorUsedError;
  @JsonKey(name: 'claimsHash')
  String? get claimsHash => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'offeringId') String? offeringId,
      @JsonKey(name: 'payin') PayinModel? payin,
      @JsonKey(name: 'payout') PayoutModel? payout,
      @JsonKey(name: 'claimsHash') String? claimsHash});

  $PayinModelCopyWith<$Res>? get payin;
  $PayoutModelCopyWith<$Res>? get payout;
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
    Object? offeringId = freezed,
    Object? payin = freezed,
    Object? payout = freezed,
    Object? claimsHash = freezed,
  }) {
    return _then(_value.copyWith(
      offeringId: freezed == offeringId
          ? _value.offeringId
          : offeringId // ignore: cast_nullable_to_non_nullable
              as String?,
      payin: freezed == payin
          ? _value.payin
          : payin // ignore: cast_nullable_to_non_nullable
              as PayinModel?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutModel?,
      claimsHash: freezed == claimsHash
          ? _value.claimsHash
          : claimsHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
  $PayoutModelCopyWith<$Res>? get payout {
    if (_value.payout == null) {
      return null;
    }

    return $PayoutModelCopyWith<$Res>(_value.payout!, (value) {
      return _then(_value.copyWith(payout: value) as $Val);
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
      {@JsonKey(name: 'offeringId') String? offeringId,
      @JsonKey(name: 'payin') PayinModel? payin,
      @JsonKey(name: 'payout') PayoutModel? payout,
      @JsonKey(name: 'claimsHash') String? claimsHash});

  @override
  $PayinModelCopyWith<$Res>? get payin;
  @override
  $PayoutModelCopyWith<$Res>? get payout;
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
    Object? offeringId = freezed,
    Object? payin = freezed,
    Object? payout = freezed,
    Object? claimsHash = freezed,
  }) {
    return _then(_$DataModelImpl(
      offeringId: freezed == offeringId
          ? _value.offeringId
          : offeringId // ignore: cast_nullable_to_non_nullable
              as String?,
      payin: freezed == payin
          ? _value.payin
          : payin // ignore: cast_nullable_to_non_nullable
              as PayinModel?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PayoutModel?,
      claimsHash: freezed == claimsHash
          ? _value.claimsHash
          : claimsHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl with DiagnosticableTreeMixin implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: 'offeringId') this.offeringId,
      @JsonKey(name: 'payin') this.payin,
      @JsonKey(name: 'payout') this.payout,
      @JsonKey(name: 'claimsHash') this.claimsHash});

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: 'offeringId')
  final String? offeringId;
  @override
  @JsonKey(name: 'payin')
  final PayinModel? payin;
  @override
  @JsonKey(name: 'payout')
  final PayoutModel? payout;
  @override
  @JsonKey(name: 'claimsHash')
  final String? claimsHash;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataModel(offeringId: $offeringId, payin: $payin, payout: $payout, claimsHash: $claimsHash)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataModel'))
      ..add(DiagnosticsProperty('offeringId', offeringId))
      ..add(DiagnosticsProperty('payin', payin))
      ..add(DiagnosticsProperty('payout', payout))
      ..add(DiagnosticsProperty('claimsHash', claimsHash));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.offeringId, offeringId) ||
                other.offeringId == offeringId) &&
            (identical(other.payin, payin) || other.payin == payin) &&
            (identical(other.payout, payout) || other.payout == payout) &&
            (identical(other.claimsHash, claimsHash) ||
                other.claimsHash == claimsHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, offeringId, payin, payout, claimsHash);

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
      {@JsonKey(name: 'offeringId') final String? offeringId,
      @JsonKey(name: 'payin') final PayinModel? payin,
      @JsonKey(name: 'payout') final PayoutModel? payout,
      @JsonKey(name: 'claimsHash') final String? claimsHash}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: 'offeringId')
  String? get offeringId;
  @override
  @JsonKey(name: 'payin')
  PayinModel? get payin;
  @override
  @JsonKey(name: 'payout')
  PayoutModel? get payout;
  @override
  @JsonKey(name: 'claimsHash')
  String? get claimsHash;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayinModel _$PayinModelFromJson(Map<String, dynamic> json) {
  return _PayinModel.fromJson(json);
}

/// @nodoc
mixin _$PayinModel {
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentDetailsHash')
  String? get paymentDetailsHash => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'paymentDetailsHash') String? paymentDetailsHash});
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
    Object? amount = freezed,
    Object? kind = freezed,
    Object? paymentDetailsHash = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetailsHash: freezed == paymentDetailsHash
          ? _value.paymentDetailsHash
          : paymentDetailsHash // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'paymentDetailsHash') String? paymentDetailsHash});
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
    Object? amount = freezed,
    Object? kind = freezed,
    Object? paymentDetailsHash = freezed,
  }) {
    return _then(_$PayinModelImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetailsHash: freezed == paymentDetailsHash
          ? _value.paymentDetailsHash
          : paymentDetailsHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayinModelImpl with DiagnosticableTreeMixin implements _PayinModel {
  const _$PayinModelImpl(
      {@JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'paymentDetailsHash') this.paymentDetailsHash});

  factory _$PayinModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayinModelImplFromJson(json);

  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'kind')
  final String? kind;
  @override
  @JsonKey(name: 'paymentDetailsHash')
  final String? paymentDetailsHash;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PayinModel(amount: $amount, kind: $kind, paymentDetailsHash: $paymentDetailsHash)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PayinModel'))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('paymentDetailsHash', paymentDetailsHash));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayinModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.paymentDetailsHash, paymentDetailsHash) ||
                other.paymentDetailsHash == paymentDetailsHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, kind, paymentDetailsHash);

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
      {@JsonKey(name: 'amount') final String? amount,
      @JsonKey(name: 'kind') final String? kind,
      @JsonKey(name: 'paymentDetailsHash')
      final String? paymentDetailsHash}) = _$PayinModelImpl;

  factory _PayinModel.fromJson(Map<String, dynamic> json) =
      _$PayinModelImpl.fromJson;

  @override
  @JsonKey(name: 'amount')
  String? get amount;
  @override
  @JsonKey(name: 'kind')
  String? get kind;
  @override
  @JsonKey(name: 'paymentDetailsHash')
  String? get paymentDetailsHash;
  @override
  @JsonKey(ignore: true)
  _$$PayinModelImplCopyWith<_$PayinModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayoutModel _$PayoutModelFromJson(Map<String, dynamic> json) {
  return _PayoutModel.fromJson(json);
}

/// @nodoc
mixin _$PayoutModel {
  @JsonKey(name: 'kind')
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentDetailsHash')
  String? get paymentDetailsHash => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'paymentDetailsHash') String? paymentDetailsHash});
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
    Object? kind = freezed,
    Object? paymentDetailsHash = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetailsHash: freezed == paymentDetailsHash
          ? _value.paymentDetailsHash
          : paymentDetailsHash // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: 'kind') String? kind,
      @JsonKey(name: 'paymentDetailsHash') String? paymentDetailsHash});
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
    Object? kind = freezed,
    Object? paymentDetailsHash = freezed,
  }) {
    return _then(_$PayoutModelImpl(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetailsHash: freezed == paymentDetailsHash
          ? _value.paymentDetailsHash
          : paymentDetailsHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutModelImpl with DiagnosticableTreeMixin implements _PayoutModel {
  const _$PayoutModelImpl(
      {@JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'paymentDetailsHash') this.paymentDetailsHash});

  factory _$PayoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutModelImplFromJson(json);

  @override
  @JsonKey(name: 'kind')
  final String? kind;
  @override
  @JsonKey(name: 'paymentDetailsHash')
  final String? paymentDetailsHash;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PayoutModel(kind: $kind, paymentDetailsHash: $paymentDetailsHash)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PayoutModel'))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('paymentDetailsHash', paymentDetailsHash));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutModelImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.paymentDetailsHash, paymentDetailsHash) ||
                other.paymentDetailsHash == paymentDetailsHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, paymentDetailsHash);

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
      {@JsonKey(name: 'kind') final String? kind,
      @JsonKey(name: 'paymentDetailsHash')
      final String? paymentDetailsHash}) = _$PayoutModelImpl;

  factory _PayoutModel.fromJson(Map<String, dynamic> json) =
      _$PayoutModelImpl.fromJson;

  @override
  @JsonKey(name: 'kind')
  String? get kind;
  @override
  @JsonKey(name: 'paymentDetailsHash')
  String? get paymentDetailsHash;
  @override
  @JsonKey(ignore: true)
  _$$PayoutModelImplCopyWith<_$PayoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrivateDataModel _$PrivateDataModelFromJson(Map<String, dynamic> json) {
  return _PrivateDataModel.fromJson(json);
}

/// @nodoc
mixin _$PrivateDataModel {
  @JsonKey(name: 'salt')
  String? get salt => throw _privateConstructorUsedError;
  @JsonKey(name: 'payin')
  PrivatePayinModel? get payin => throw _privateConstructorUsedError;
  @JsonKey(name: 'payout')
  PrivatePayoutModel? get payout => throw _privateConstructorUsedError;
  @JsonKey(name: 'claims')
  List<String>? get claims => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivateDataModelCopyWith<PrivateDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateDataModelCopyWith<$Res> {
  factory $PrivateDataModelCopyWith(
          PrivateDataModel value, $Res Function(PrivateDataModel) then) =
      _$PrivateDataModelCopyWithImpl<$Res, PrivateDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'salt') String? salt,
      @JsonKey(name: 'payin') PrivatePayinModel? payin,
      @JsonKey(name: 'payout') PrivatePayoutModel? payout,
      @JsonKey(name: 'claims') List<String>? claims});

  $PrivatePayinModelCopyWith<$Res>? get payin;
  $PrivatePayoutModelCopyWith<$Res>? get payout;
}

/// @nodoc
class _$PrivateDataModelCopyWithImpl<$Res, $Val extends PrivateDataModel>
    implements $PrivateDataModelCopyWith<$Res> {
  _$PrivateDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salt = freezed,
    Object? payin = freezed,
    Object? payout = freezed,
    Object? claims = freezed,
  }) {
    return _then(_value.copyWith(
      salt: freezed == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
      payin: freezed == payin
          ? _value.payin
          : payin // ignore: cast_nullable_to_non_nullable
              as PrivatePayinModel?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PrivatePayoutModel?,
      claims: freezed == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivatePayinModelCopyWith<$Res>? get payin {
    if (_value.payin == null) {
      return null;
    }

    return $PrivatePayinModelCopyWith<$Res>(_value.payin!, (value) {
      return _then(_value.copyWith(payin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivatePayoutModelCopyWith<$Res>? get payout {
    if (_value.payout == null) {
      return null;
    }

    return $PrivatePayoutModelCopyWith<$Res>(_value.payout!, (value) {
      return _then(_value.copyWith(payout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrivateDataModelImplCopyWith<$Res>
    implements $PrivateDataModelCopyWith<$Res> {
  factory _$$PrivateDataModelImplCopyWith(_$PrivateDataModelImpl value,
          $Res Function(_$PrivateDataModelImpl) then) =
      __$$PrivateDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'salt') String? salt,
      @JsonKey(name: 'payin') PrivatePayinModel? payin,
      @JsonKey(name: 'payout') PrivatePayoutModel? payout,
      @JsonKey(name: 'claims') List<String>? claims});

  @override
  $PrivatePayinModelCopyWith<$Res>? get payin;
  @override
  $PrivatePayoutModelCopyWith<$Res>? get payout;
}

/// @nodoc
class __$$PrivateDataModelImplCopyWithImpl<$Res>
    extends _$PrivateDataModelCopyWithImpl<$Res, _$PrivateDataModelImpl>
    implements _$$PrivateDataModelImplCopyWith<$Res> {
  __$$PrivateDataModelImplCopyWithImpl(_$PrivateDataModelImpl _value,
      $Res Function(_$PrivateDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salt = freezed,
    Object? payin = freezed,
    Object? payout = freezed,
    Object? claims = freezed,
  }) {
    return _then(_$PrivateDataModelImpl(
      salt: freezed == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
      payin: freezed == payin
          ? _value.payin
          : payin // ignore: cast_nullable_to_non_nullable
              as PrivatePayinModel?,
      payout: freezed == payout
          ? _value.payout
          : payout // ignore: cast_nullable_to_non_nullable
              as PrivatePayoutModel?,
      claims: freezed == claims
          ? _value._claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivateDataModelImpl
    with DiagnosticableTreeMixin
    implements _PrivateDataModel {
  const _$PrivateDataModelImpl(
      {@JsonKey(name: 'salt') this.salt,
      @JsonKey(name: 'payin') this.payin,
      @JsonKey(name: 'payout') this.payout,
      @JsonKey(name: 'claims') final List<String>? claims})
      : _claims = claims;

  factory _$PrivateDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivateDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'salt')
  final String? salt;
  @override
  @JsonKey(name: 'payin')
  final PrivatePayinModel? payin;
  @override
  @JsonKey(name: 'payout')
  final PrivatePayoutModel? payout;
  final List<String>? _claims;
  @override
  @JsonKey(name: 'claims')
  List<String>? get claims {
    final value = _claims;
    if (value == null) return null;
    if (_claims is EqualUnmodifiableListView) return _claims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PrivateDataModel(salt: $salt, payin: $payin, payout: $payout, claims: $claims)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PrivateDataModel'))
      ..add(DiagnosticsProperty('salt', salt))
      ..add(DiagnosticsProperty('payin', payin))
      ..add(DiagnosticsProperty('payout', payout))
      ..add(DiagnosticsProperty('claims', claims));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateDataModelImpl &&
            (identical(other.salt, salt) || other.salt == salt) &&
            (identical(other.payin, payin) || other.payin == payin) &&
            (identical(other.payout, payout) || other.payout == payout) &&
            const DeepCollectionEquality().equals(other._claims, _claims));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, salt, payin, payout,
      const DeepCollectionEquality().hash(_claims));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateDataModelImplCopyWith<_$PrivateDataModelImpl> get copyWith =>
      __$$PrivateDataModelImplCopyWithImpl<_$PrivateDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivateDataModelImplToJson(
      this,
    );
  }
}

abstract class _PrivateDataModel implements PrivateDataModel {
  const factory _PrivateDataModel(
          {@JsonKey(name: 'salt') final String? salt,
          @JsonKey(name: 'payin') final PrivatePayinModel? payin,
          @JsonKey(name: 'payout') final PrivatePayoutModel? payout,
          @JsonKey(name: 'claims') final List<String>? claims}) =
      _$PrivateDataModelImpl;

  factory _PrivateDataModel.fromJson(Map<String, dynamic> json) =
      _$PrivateDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'salt')
  String? get salt;
  @override
  @JsonKey(name: 'payin')
  PrivatePayinModel? get payin;
  @override
  @JsonKey(name: 'payout')
  PrivatePayoutModel? get payout;
  @override
  @JsonKey(name: 'claims')
  List<String>? get claims;
  @override
  @JsonKey(ignore: true)
  _$$PrivateDataModelImplCopyWith<_$PrivateDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrivatePayinModel _$PrivatePayinModelFromJson(Map<String, dynamic> json) {
  return _PrivatePayinModel.fromJson(json);
}

/// @nodoc
mixin _$PrivatePayinModel {
  @JsonKey(name: 'paymentDetails')
  Map<String, dynamic>? get paymentDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivatePayinModelCopyWith<PrivatePayinModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivatePayinModelCopyWith<$Res> {
  factory $PrivatePayinModelCopyWith(
          PrivatePayinModel value, $Res Function(PrivatePayinModel) then) =
      _$PrivatePayinModelCopyWithImpl<$Res, PrivatePayinModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentDetails') Map<String, dynamic>? paymentDetails});
}

/// @nodoc
class _$PrivatePayinModelCopyWithImpl<$Res, $Val extends PrivatePayinModel>
    implements $PrivatePayinModelCopyWith<$Res> {
  _$PrivatePayinModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivatePayinModelImplCopyWith<$Res>
    implements $PrivatePayinModelCopyWith<$Res> {
  factory _$$PrivatePayinModelImplCopyWith(_$PrivatePayinModelImpl value,
          $Res Function(_$PrivatePayinModelImpl) then) =
      __$$PrivatePayinModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentDetails') Map<String, dynamic>? paymentDetails});
}

/// @nodoc
class __$$PrivatePayinModelImplCopyWithImpl<$Res>
    extends _$PrivatePayinModelCopyWithImpl<$Res, _$PrivatePayinModelImpl>
    implements _$$PrivatePayinModelImplCopyWith<$Res> {
  __$$PrivatePayinModelImplCopyWithImpl(_$PrivatePayinModelImpl _value,
      $Res Function(_$PrivatePayinModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDetails = freezed,
  }) {
    return _then(_$PrivatePayinModelImpl(
      paymentDetails: freezed == paymentDetails
          ? _value._paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivatePayinModelImpl
    with DiagnosticableTreeMixin
    implements _PrivatePayinModel {
  const _$PrivatePayinModelImpl(
      {@JsonKey(name: 'paymentDetails')
      final Map<String, dynamic>? paymentDetails})
      : _paymentDetails = paymentDetails;

  factory _$PrivatePayinModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivatePayinModelImplFromJson(json);

  final Map<String, dynamic>? _paymentDetails;
  @override
  @JsonKey(name: 'paymentDetails')
  Map<String, dynamic>? get paymentDetails {
    final value = _paymentDetails;
    if (value == null) return null;
    if (_paymentDetails is EqualUnmodifiableMapView) return _paymentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PrivatePayinModel(paymentDetails: $paymentDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PrivatePayinModel'))
      ..add(DiagnosticsProperty('paymentDetails', paymentDetails));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivatePayinModelImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentDetails, _paymentDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivatePayinModelImplCopyWith<_$PrivatePayinModelImpl> get copyWith =>
      __$$PrivatePayinModelImplCopyWithImpl<_$PrivatePayinModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivatePayinModelImplToJson(
      this,
    );
  }
}

abstract class _PrivatePayinModel implements PrivatePayinModel {
  const factory _PrivatePayinModel(
      {@JsonKey(name: 'paymentDetails')
      final Map<String, dynamic>? paymentDetails}) = _$PrivatePayinModelImpl;

  factory _PrivatePayinModel.fromJson(Map<String, dynamic> json) =
      _$PrivatePayinModelImpl.fromJson;

  @override
  @JsonKey(name: 'paymentDetails')
  Map<String, dynamic>? get paymentDetails;
  @override
  @JsonKey(ignore: true)
  _$$PrivatePayinModelImplCopyWith<_$PrivatePayinModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrivatePayoutModel _$PrivatePayoutModelFromJson(Map<String, dynamic> json) {
  return _PrivatePayoutModel.fromJson(json);
}

/// @nodoc
mixin _$PrivatePayoutModel {
  @JsonKey(name: 'paymentDetails')
  Map<String, dynamic>? get paymentDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivatePayoutModelCopyWith<PrivatePayoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivatePayoutModelCopyWith<$Res> {
  factory $PrivatePayoutModelCopyWith(
          PrivatePayoutModel value, $Res Function(PrivatePayoutModel) then) =
      _$PrivatePayoutModelCopyWithImpl<$Res, PrivatePayoutModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentDetails') Map<String, dynamic>? paymentDetails});
}

/// @nodoc
class _$PrivatePayoutModelCopyWithImpl<$Res, $Val extends PrivatePayoutModel>
    implements $PrivatePayoutModelCopyWith<$Res> {
  _$PrivatePayoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivatePayoutModelImplCopyWith<$Res>
    implements $PrivatePayoutModelCopyWith<$Res> {
  factory _$$PrivatePayoutModelImplCopyWith(_$PrivatePayoutModelImpl value,
          $Res Function(_$PrivatePayoutModelImpl) then) =
      __$$PrivatePayoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentDetails') Map<String, dynamic>? paymentDetails});
}

/// @nodoc
class __$$PrivatePayoutModelImplCopyWithImpl<$Res>
    extends _$PrivatePayoutModelCopyWithImpl<$Res, _$PrivatePayoutModelImpl>
    implements _$$PrivatePayoutModelImplCopyWith<$Res> {
  __$$PrivatePayoutModelImplCopyWithImpl(_$PrivatePayoutModelImpl _value,
      $Res Function(_$PrivatePayoutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentDetails = freezed,
  }) {
    return _then(_$PrivatePayoutModelImpl(
      paymentDetails: freezed == paymentDetails
          ? _value._paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivatePayoutModelImpl
    with DiagnosticableTreeMixin
    implements _PrivatePayoutModel {
  const _$PrivatePayoutModelImpl(
      {@JsonKey(name: 'paymentDetails')
      final Map<String, dynamic>? paymentDetails})
      : _paymentDetails = paymentDetails;

  factory _$PrivatePayoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivatePayoutModelImplFromJson(json);

  final Map<String, dynamic>? _paymentDetails;
  @override
  @JsonKey(name: 'paymentDetails')
  Map<String, dynamic>? get paymentDetails {
    final value = _paymentDetails;
    if (value == null) return null;
    if (_paymentDetails is EqualUnmodifiableMapView) return _paymentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PrivatePayoutModel(paymentDetails: $paymentDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PrivatePayoutModel'))
      ..add(DiagnosticsProperty('paymentDetails', paymentDetails));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivatePayoutModelImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentDetails, _paymentDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_paymentDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivatePayoutModelImplCopyWith<_$PrivatePayoutModelImpl> get copyWith =>
      __$$PrivatePayoutModelImplCopyWithImpl<_$PrivatePayoutModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivatePayoutModelImplToJson(
      this,
    );
  }
}

abstract class _PrivatePayoutModel implements PrivatePayoutModel {
  const factory _PrivatePayoutModel(
      {@JsonKey(name: 'paymentDetails')
      final Map<String, dynamic>? paymentDetails}) = _$PrivatePayoutModelImpl;

  factory _PrivatePayoutModel.fromJson(Map<String, dynamic> json) =
      _$PrivatePayoutModelImpl.fromJson;

  @override
  @JsonKey(name: 'paymentDetails')
  Map<String, dynamic>? get paymentDetails;
  @override
  @JsonKey(ignore: true)
  _$$PrivatePayoutModelImplCopyWith<_$PrivatePayoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
