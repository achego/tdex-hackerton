// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BalanceModel _$BalanceModelFromJson(Map<String, dynamic> json) {
  return _BalanceModel.fromJson(json);
}

/// @nodoc
mixin _$BalanceModel {
  @JsonKey(name: 'balance')
  String? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_currency')
  String? get userCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceModelCopyWith<BalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceModelCopyWith<$Res> {
  factory $BalanceModelCopyWith(
          BalanceModel value, $Res Function(BalanceModel) then) =
      _$BalanceModelCopyWithImpl<$Res, BalanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'user_currency') String? userCurrency,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deleted_at') String? deletedAt});
}

/// @nodoc
class _$BalanceModelCopyWithImpl<$Res, $Val extends BalanceModel>
    implements $BalanceModelCopyWith<$Res> {
  _$BalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = freezed,
    Object? type = freezed,
    Object? currency = freezed,
    Object? userCurrency = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      userCurrency: freezed == userCurrency
          ? _value.userCurrency
          : userCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalanceModelImplCopyWith<$Res>
    implements $BalanceModelCopyWith<$Res> {
  factory _$$BalanceModelImplCopyWith(
          _$BalanceModelImpl value, $Res Function(_$BalanceModelImpl) then) =
      __$$BalanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'user_currency') String? userCurrency,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deleted_at') String? deletedAt});
}

/// @nodoc
class __$$BalanceModelImplCopyWithImpl<$Res>
    extends _$BalanceModelCopyWithImpl<$Res, _$BalanceModelImpl>
    implements _$$BalanceModelImplCopyWith<$Res> {
  __$$BalanceModelImplCopyWithImpl(
      _$BalanceModelImpl _value, $Res Function(_$BalanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = freezed,
    Object? type = freezed,
    Object? currency = freezed,
    Object? userCurrency = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$BalanceModelImpl(
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      userCurrency: freezed == userCurrency
          ? _value.userCurrency
          : userCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceModelImpl with DiagnosticableTreeMixin implements _BalanceModel {
  const _$BalanceModelImpl(
      {@JsonKey(name: 'balance') this.balance,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'user_currency') this.userCurrency,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt});

  factory _$BalanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceModelImplFromJson(json);

  @override
  @JsonKey(name: 'balance')
  final String? balance;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'user_currency')
  final String? userCurrency;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BalanceModel(balance: $balance, type: $type, currency: $currency, userCurrency: $userCurrency, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BalanceModel'))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('userCurrency', userCurrency))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceModelImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.userCurrency, userCurrency) ||
                other.userCurrency == userCurrency) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, balance, type, currency, userCurrency, updatedAt, deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceModelImplCopyWith<_$BalanceModelImpl> get copyWith =>
      __$$BalanceModelImplCopyWithImpl<_$BalanceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceModelImplToJson(
      this,
    );
  }
}

abstract class _BalanceModel implements BalanceModel {
  const factory _BalanceModel(
          {@JsonKey(name: 'balance') final String? balance,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'currency') final String? currency,
          @JsonKey(name: 'user_currency') final String? userCurrency,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'deleted_at') final String? deletedAt}) =
      _$BalanceModelImpl;

  factory _BalanceModel.fromJson(Map<String, dynamic> json) =
      _$BalanceModelImpl.fromJson;

  @override
  @JsonKey(name: 'balance')
  String? get balance;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'currency')
  String? get currency;
  @override
  @JsonKey(name: 'user_currency')
  String? get userCurrency;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$BalanceModelImplCopyWith<_$BalanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
