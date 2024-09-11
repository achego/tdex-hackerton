// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'sell_price')
  int? get sellPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'direction')
  String? get direction => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_title')
  String? get subTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider')
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'privider_logo')
  String? get prividerLogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'fail_description')
  String? get failDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance_before')
  int? get balanceBefore => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance_after')
  int? get balanceAfter => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee')
  int? get fee => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  String? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'reversed_at')
  String? get reversedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ref_id')
  String? get refId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_ref')
  String? get customerRef => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'sell_price') int? sellPrice,
      @JsonKey(name: 'direction') String? direction,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'sub_title') String? subTitle,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'provider') String? provider,
      @JsonKey(name: 'privider_logo') String? prividerLogo,
      @JsonKey(name: 'fail_description') String? failDescription,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'balance_before') int? balanceBefore,
      @JsonKey(name: 'balance_after') int? balanceAfter,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'completed_at') String? completedAt,
      @JsonKey(name: 'reversed_at') String? reversedAt,
      @JsonKey(name: 'ref_id') String? refId,
      @JsonKey(name: 'customer_ref') String? customerRef,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? sellPrice = freezed,
    Object? direction = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? provider = freezed,
    Object? prividerLogo = freezed,
    Object? failDescription = freezed,
    Object? description = freezed,
    Object? balanceBefore = freezed,
    Object? balanceAfter = freezed,
    Object? fee = freezed,
    Object? currency = freezed,
    Object? completedAt = freezed,
    Object? reversedAt = freezed,
    Object? refId = freezed,
    Object? customerRef = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      prividerLogo: freezed == prividerLogo
          ? _value.prividerLogo
          : prividerLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      failDescription: freezed == failDescription
          ? _value.failDescription
          : failDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      balanceBefore: freezed == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as int?,
      balanceAfter: freezed == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as int?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      reversedAt: freezed == reversedAt
          ? _value.reversedAt
          : reversedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerRef: freezed == customerRef
          ? _value.customerRef
          : customerRef // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionModelImplCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$TransactionModelImplCopyWith(_$TransactionModelImpl value,
          $Res Function(_$TransactionModelImpl) then) =
      __$$TransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'sell_price') int? sellPrice,
      @JsonKey(name: 'direction') String? direction,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'sub_title') String? subTitle,
      @JsonKey(name: 'from') String? from,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'provider') String? provider,
      @JsonKey(name: 'privider_logo') String? prividerLogo,
      @JsonKey(name: 'fail_description') String? failDescription,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'balance_before') int? balanceBefore,
      @JsonKey(name: 'balance_after') int? balanceAfter,
      @JsonKey(name: 'fee') int? fee,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'completed_at') String? completedAt,
      @JsonKey(name: 'reversed_at') String? reversedAt,
      @JsonKey(name: 'ref_id') String? refId,
      @JsonKey(name: 'customer_ref') String? customerRef,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$TransactionModelImplCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$TransactionModelImpl>
    implements _$$TransactionModelImplCopyWith<$Res> {
  __$$TransactionModelImplCopyWithImpl(_$TransactionModelImpl _value,
      $Res Function(_$TransactionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? sellPrice = freezed,
    Object? direction = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? provider = freezed,
    Object? prividerLogo = freezed,
    Object? failDescription = freezed,
    Object? description = freezed,
    Object? balanceBefore = freezed,
    Object? balanceAfter = freezed,
    Object? fee = freezed,
    Object? currency = freezed,
    Object? completedAt = freezed,
    Object? reversedAt = freezed,
    Object? refId = freezed,
    Object? customerRef = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TransactionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      prividerLogo: freezed == prividerLogo
          ? _value.prividerLogo
          : prividerLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      failDescription: freezed == failDescription
          ? _value.failDescription
          : failDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      balanceBefore: freezed == balanceBefore
          ? _value.balanceBefore
          : balanceBefore // ignore: cast_nullable_to_non_nullable
              as int?,
      balanceAfter: freezed == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as int?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      reversedAt: freezed == reversedAt
          ? _value.reversedAt
          : reversedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerRef: freezed == customerRef
          ? _value.customerRef
          : customerRef // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionModelImpl
    with DiagnosticableTreeMixin
    implements _TransactionModel {
  const _$TransactionModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'sell_price') this.sellPrice,
      @JsonKey(name: 'direction') this.direction,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'sub_title') this.subTitle,
      @JsonKey(name: 'from') this.from,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'provider') this.provider,
      @JsonKey(name: 'privider_logo') this.prividerLogo,
      @JsonKey(name: 'fail_description') this.failDescription,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'balance_before') this.balanceBefore,
      @JsonKey(name: 'balance_after') this.balanceAfter,
      @JsonKey(name: 'fee') this.fee,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'completed_at') this.completedAt,
      @JsonKey(name: 'reversed_at') this.reversedAt,
      @JsonKey(name: 'ref_id') this.refId,
      @JsonKey(name: 'customer_ref') this.customerRef,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$TransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'sell_price')
  final int? sellPrice;
  @override
  @JsonKey(name: 'direction')
  final String? direction;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'sub_title')
  final String? subTitle;
  @override
  @JsonKey(name: 'from')
  final String? from;
  @override
  @JsonKey(name: 'to')
  final String? to;
  @override
  @JsonKey(name: 'provider')
  final String? provider;
  @override
  @JsonKey(name: 'privider_logo')
  final String? prividerLogo;
  @override
  @JsonKey(name: 'fail_description')
  final String? failDescription;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'balance_before')
  final int? balanceBefore;
  @override
  @JsonKey(name: 'balance_after')
  final int? balanceAfter;
  @override
  @JsonKey(name: 'fee')
  final int? fee;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'completed_at')
  final String? completedAt;
  @override
  @JsonKey(name: 'reversed_at')
  final String? reversedAt;
  @override
  @JsonKey(name: 'ref_id')
  final String? refId;
  @override
  @JsonKey(name: 'customer_ref')
  final String? customerRef;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionModel(id: $id, type: $type, amount: $amount, sellPrice: $sellPrice, direction: $direction, title: $title, subTitle: $subTitle, from: $from, to: $to, provider: $provider, prividerLogo: $prividerLogo, failDescription: $failDescription, description: $description, balanceBefore: $balanceBefore, balanceAfter: $balanceAfter, fee: $fee, currency: $currency, completedAt: $completedAt, reversedAt: $reversedAt, refId: $refId, customerRef: $customerRef, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('sellPrice', sellPrice))
      ..add(DiagnosticsProperty('direction', direction))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subTitle', subTitle))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('prividerLogo', prividerLogo))
      ..add(DiagnosticsProperty('failDescription', failDescription))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('balanceBefore', balanceBefore))
      ..add(DiagnosticsProperty('balanceAfter', balanceAfter))
      ..add(DiagnosticsProperty('fee', fee))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('completedAt', completedAt))
      ..add(DiagnosticsProperty('reversedAt', reversedAt))
      ..add(DiagnosticsProperty('refId', refId))
      ..add(DiagnosticsProperty('customerRef', customerRef))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.prividerLogo, prividerLogo) ||
                other.prividerLogo == prividerLogo) &&
            (identical(other.failDescription, failDescription) ||
                other.failDescription == failDescription) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.balanceBefore, balanceBefore) ||
                other.balanceBefore == balanceBefore) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.reversedAt, reversedAt) ||
                other.reversedAt == reversedAt) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.customerRef, customerRef) ||
                other.customerRef == customerRef) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        type,
        amount,
        sellPrice,
        direction,
        title,
        subTitle,
        from,
        to,
        provider,
        prividerLogo,
        failDescription,
        description,
        balanceBefore,
        balanceAfter,
        fee,
        currency,
        completedAt,
        reversedAt,
        refId,
        customerRef,
        status,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      __$$TransactionModelImplCopyWithImpl<_$TransactionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'amount') final int? amount,
          @JsonKey(name: 'sell_price') final int? sellPrice,
          @JsonKey(name: 'direction') final String? direction,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'sub_title') final String? subTitle,
          @JsonKey(name: 'from') final String? from,
          @JsonKey(name: 'to') final String? to,
          @JsonKey(name: 'provider') final String? provider,
          @JsonKey(name: 'privider_logo') final String? prividerLogo,
          @JsonKey(name: 'fail_description') final String? failDescription,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'balance_before') final int? balanceBefore,
          @JsonKey(name: 'balance_after') final int? balanceAfter,
          @JsonKey(name: 'fee') final int? fee,
          @JsonKey(name: 'currency') final String? currency,
          @JsonKey(name: 'completed_at') final String? completedAt,
          @JsonKey(name: 'reversed_at') final String? reversedAt,
          @JsonKey(name: 'ref_id') final String? refId,
          @JsonKey(name: 'customer_ref') final String? customerRef,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$TransactionModelImpl;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$TransactionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(name: 'sell_price')
  int? get sellPrice;
  @override
  @JsonKey(name: 'direction')
  String? get direction;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'sub_title')
  String? get subTitle;
  @override
  @JsonKey(name: 'from')
  String? get from;
  @override
  @JsonKey(name: 'to')
  String? get to;
  @override
  @JsonKey(name: 'provider')
  String? get provider;
  @override
  @JsonKey(name: 'privider_logo')
  String? get prividerLogo;
  @override
  @JsonKey(name: 'fail_description')
  String? get failDescription;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'balance_before')
  int? get balanceBefore;
  @override
  @JsonKey(name: 'balance_after')
  int? get balanceAfter;
  @override
  @JsonKey(name: 'fee')
  int? get fee;
  @override
  @JsonKey(name: 'currency')
  String? get currency;
  @override
  @JsonKey(name: 'completed_at')
  String? get completedAt;
  @override
  @JsonKey(name: 'reversed_at')
  String? get reversedAt;
  @override
  @JsonKey(name: 'ref_id')
  String? get refId;
  @override
  @JsonKey(name: 'customer_ref')
  String? get customerRef;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
