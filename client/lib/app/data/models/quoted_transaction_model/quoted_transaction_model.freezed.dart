// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quoted_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuotedTransactionModel _$QuotedTransactionModelFromJson(
    Map<String, dynamic> json) {
  return _QuotedTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$QuotedTransactionModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'payinAmount')
  String? get payinAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payinCurrency')
  String? get payinCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'payoutAmount')
  String? get payoutAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payoutCurrency')
  String? get payoutCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdTime')
  String? get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'expirationTime')
  String? get expirationTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  Map<String, dynamic>? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  Map<String, dynamic>? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'pfiDid')
  String? get pfiDid => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee')
  String? get fee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotedTransactionModelCopyWith<QuotedTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotedTransactionModelCopyWith<$Res> {
  factory $QuotedTransactionModelCopyWith(QuotedTransactionModel value,
          $Res Function(QuotedTransactionModel) then) =
      _$QuotedTransactionModelCopyWithImpl<$Res, QuotedTransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'payinAmount') String? payinAmount,
      @JsonKey(name: 'payinCurrency') String? payinCurrency,
      @JsonKey(name: 'payoutAmount') String? payoutAmount,
      @JsonKey(name: 'payoutCurrency') String? payoutCurrency,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'createdTime') String? createdTime,
      @JsonKey(name: 'expirationTime') String? expirationTime,
      @JsonKey(name: 'from') Map<String, dynamic>? from,
      @JsonKey(name: 'to') Map<String, dynamic>? to,
      @JsonKey(name: 'pfiDid') String? pfiDid,
      @JsonKey(name: 'fee') String? fee});
}

/// @nodoc
class _$QuotedTransactionModelCopyWithImpl<$Res,
        $Val extends QuotedTransactionModel>
    implements $QuotedTransactionModelCopyWith<$Res> {
  _$QuotedTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? payinAmount = freezed,
    Object? payinCurrency = freezed,
    Object? payoutAmount = freezed,
    Object? payoutCurrency = freezed,
    Object? status = freezed,
    Object? createdTime = freezed,
    Object? expirationTime = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? pfiDid = freezed,
    Object? fee = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      payinAmount: freezed == payinAmount
          ? _value.payinAmount
          : payinAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      payinCurrency: freezed == payinCurrency
          ? _value.payinCurrency
          : payinCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutAmount: freezed == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutCurrency: freezed == payoutCurrency
          ? _value.payoutCurrency
          : payoutCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationTime: freezed == expirationTime
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pfiDid: freezed == pfiDid
          ? _value.pfiDid
          : pfiDid // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotedTransactionModelImplCopyWith<$Res>
    implements $QuotedTransactionModelCopyWith<$Res> {
  factory _$$QuotedTransactionModelImplCopyWith(
          _$QuotedTransactionModelImpl value,
          $Res Function(_$QuotedTransactionModelImpl) then) =
      __$$QuotedTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'payinAmount') String? payinAmount,
      @JsonKey(name: 'payinCurrency') String? payinCurrency,
      @JsonKey(name: 'payoutAmount') String? payoutAmount,
      @JsonKey(name: 'payoutCurrency') String? payoutCurrency,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'createdTime') String? createdTime,
      @JsonKey(name: 'expirationTime') String? expirationTime,
      @JsonKey(name: 'from') Map<String, dynamic>? from,
      @JsonKey(name: 'to') Map<String, dynamic>? to,
      @JsonKey(name: 'pfiDid') String? pfiDid,
      @JsonKey(name: 'fee') String? fee});
}

/// @nodoc
class __$$QuotedTransactionModelImplCopyWithImpl<$Res>
    extends _$QuotedTransactionModelCopyWithImpl<$Res,
        _$QuotedTransactionModelImpl>
    implements _$$QuotedTransactionModelImplCopyWith<$Res> {
  __$$QuotedTransactionModelImplCopyWithImpl(
      _$QuotedTransactionModelImpl _value,
      $Res Function(_$QuotedTransactionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? payinAmount = freezed,
    Object? payinCurrency = freezed,
    Object? payoutAmount = freezed,
    Object? payoutCurrency = freezed,
    Object? status = freezed,
    Object? createdTime = freezed,
    Object? expirationTime = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? pfiDid = freezed,
    Object? fee = freezed,
  }) {
    return _then(_$QuotedTransactionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      payinAmount: freezed == payinAmount
          ? _value.payinAmount
          : payinAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      payinCurrency: freezed == payinCurrency
          ? _value.payinCurrency
          : payinCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutAmount: freezed == payoutAmount
          ? _value.payoutAmount
          : payoutAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutCurrency: freezed == payoutCurrency
          ? _value.payoutCurrency
          : payoutCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationTime: freezed == expirationTime
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value._from
          : from // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      to: freezed == to
          ? _value._to
          : to // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      pfiDid: freezed == pfiDid
          ? _value.pfiDid
          : pfiDid // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotedTransactionModelImpl
    with DiagnosticableTreeMixin
    implements _QuotedTransactionModel {
  const _$QuotedTransactionModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'payinAmount') this.payinAmount,
      @JsonKey(name: 'payinCurrency') this.payinCurrency,
      @JsonKey(name: 'payoutAmount') this.payoutAmount,
      @JsonKey(name: 'payoutCurrency') this.payoutCurrency,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'createdTime') this.createdTime,
      @JsonKey(name: 'expirationTime') this.expirationTime,
      @JsonKey(name: 'from') final Map<String, dynamic>? from,
      @JsonKey(name: 'to') final Map<String, dynamic>? to,
      @JsonKey(name: 'pfiDid') this.pfiDid,
      @JsonKey(name: 'fee') this.fee})
      : _from = from,
        _to = to;

  factory _$QuotedTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotedTransactionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'payinAmount')
  final String? payinAmount;
  @override
  @JsonKey(name: 'payinCurrency')
  final String? payinCurrency;
  @override
  @JsonKey(name: 'payoutAmount')
  final String? payoutAmount;
  @override
  @JsonKey(name: 'payoutCurrency')
  final String? payoutCurrency;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'createdTime')
  final String? createdTime;
  @override
  @JsonKey(name: 'expirationTime')
  final String? expirationTime;
  final Map<String, dynamic>? _from;
  @override
  @JsonKey(name: 'from')
  Map<String, dynamic>? get from {
    final value = _from;
    if (value == null) return null;
    if (_from is EqualUnmodifiableMapView) return _from;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _to;
  @override
  @JsonKey(name: 'to')
  Map<String, dynamic>? get to {
    final value = _to;
    if (value == null) return null;
    if (_to is EqualUnmodifiableMapView) return _to;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'pfiDid')
  final String? pfiDid;
  @override
  @JsonKey(name: 'fee')
  final String? fee;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuotedTransactionModel(id: $id, payinAmount: $payinAmount, payinCurrency: $payinCurrency, payoutAmount: $payoutAmount, payoutCurrency: $payoutCurrency, status: $status, createdTime: $createdTime, expirationTime: $expirationTime, from: $from, to: $to, pfiDid: $pfiDid, fee: $fee)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuotedTransactionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('payinAmount', payinAmount))
      ..add(DiagnosticsProperty('payinCurrency', payinCurrency))
      ..add(DiagnosticsProperty('payoutAmount', payoutAmount))
      ..add(DiagnosticsProperty('payoutCurrency', payoutCurrency))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createdTime', createdTime))
      ..add(DiagnosticsProperty('expirationTime', expirationTime))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('pfiDid', pfiDid))
      ..add(DiagnosticsProperty('fee', fee));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotedTransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.payinAmount, payinAmount) ||
                other.payinAmount == payinAmount) &&
            (identical(other.payinCurrency, payinCurrency) ||
                other.payinCurrency == payinCurrency) &&
            (identical(other.payoutAmount, payoutAmount) ||
                other.payoutAmount == payoutAmount) &&
            (identical(other.payoutCurrency, payoutCurrency) ||
                other.payoutCurrency == payoutCurrency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.expirationTime, expirationTime) ||
                other.expirationTime == expirationTime) &&
            const DeepCollectionEquality().equals(other._from, _from) &&
            const DeepCollectionEquality().equals(other._to, _to) &&
            (identical(other.pfiDid, pfiDid) || other.pfiDid == pfiDid) &&
            (identical(other.fee, fee) || other.fee == fee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      payinAmount,
      payinCurrency,
      payoutAmount,
      payoutCurrency,
      status,
      createdTime,
      expirationTime,
      const DeepCollectionEquality().hash(_from),
      const DeepCollectionEquality().hash(_to),
      pfiDid,
      fee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotedTransactionModelImplCopyWith<_$QuotedTransactionModelImpl>
      get copyWith => __$$QuotedTransactionModelImplCopyWithImpl<
          _$QuotedTransactionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotedTransactionModelImplToJson(
      this,
    );
  }
}

abstract class _QuotedTransactionModel implements QuotedTransactionModel {
  const factory _QuotedTransactionModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'payinAmount') final String? payinAmount,
      @JsonKey(name: 'payinCurrency') final String? payinCurrency,
      @JsonKey(name: 'payoutAmount') final String? payoutAmount,
      @JsonKey(name: 'payoutCurrency') final String? payoutCurrency,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'createdTime') final String? createdTime,
      @JsonKey(name: 'expirationTime') final String? expirationTime,
      @JsonKey(name: 'from') final Map<String, dynamic>? from,
      @JsonKey(name: 'to') final Map<String, dynamic>? to,
      @JsonKey(name: 'pfiDid') final String? pfiDid,
      @JsonKey(name: 'fee') final String? fee}) = _$QuotedTransactionModelImpl;

  factory _QuotedTransactionModel.fromJson(Map<String, dynamic> json) =
      _$QuotedTransactionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'payinAmount')
  String? get payinAmount;
  @override
  @JsonKey(name: 'payinCurrency')
  String? get payinCurrency;
  @override
  @JsonKey(name: 'payoutAmount')
  String? get payoutAmount;
  @override
  @JsonKey(name: 'payoutCurrency')
  String? get payoutCurrency;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'createdTime')
  String? get createdTime;
  @override
  @JsonKey(name: 'expirationTime')
  String? get expirationTime;
  @override
  @JsonKey(name: 'from')
  Map<String, dynamic>? get from;
  @override
  @JsonKey(name: 'to')
  Map<String, dynamic>? get to;
  @override
  @JsonKey(name: 'pfiDid')
  String? get pfiDid;
  @override
  @JsonKey(name: 'fee')
  String? get fee;
  @override
  @JsonKey(ignore: true)
  _$$QuotedTransactionModelImplCopyWith<_$QuotedTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
