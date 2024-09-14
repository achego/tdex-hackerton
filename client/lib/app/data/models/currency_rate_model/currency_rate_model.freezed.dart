// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrencyRateModel _$CurrencyRateModelFromJson(Map<String, dynamic> json) {
  return _CurrencyRateModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyRateModel {
  @JsonKey(name: 'symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  int? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyRateModelCopyWith<CurrencyRateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyRateModelCopyWith<$Res> {
  factory $CurrencyRateModelCopyWith(
          CurrencyRateModel value, $Res Function(CurrencyRateModel) then) =
      _$CurrencyRateModelCopyWithImpl<$Res, CurrencyRateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'symbol') String? symbol,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'rate') int? rate,
      @JsonKey(name: 'icon') String? icon});
}

/// @nodoc
class _$CurrencyRateModelCopyWithImpl<$Res, $Val extends CurrencyRateModel>
    implements $CurrencyRateModelCopyWith<$Res> {
  _$CurrencyRateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? title = freezed,
    Object? rate = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyRateModelImplCopyWith<$Res>
    implements $CurrencyRateModelCopyWith<$Res> {
  factory _$$CurrencyRateModelImplCopyWith(_$CurrencyRateModelImpl value,
          $Res Function(_$CurrencyRateModelImpl) then) =
      __$$CurrencyRateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'symbol') String? symbol,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'rate') int? rate,
      @JsonKey(name: 'icon') String? icon});
}

/// @nodoc
class __$$CurrencyRateModelImplCopyWithImpl<$Res>
    extends _$CurrencyRateModelCopyWithImpl<$Res, _$CurrencyRateModelImpl>
    implements _$$CurrencyRateModelImplCopyWith<$Res> {
  __$$CurrencyRateModelImplCopyWithImpl(_$CurrencyRateModelImpl _value,
      $Res Function(_$CurrencyRateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? title = freezed,
    Object? rate = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$CurrencyRateModelImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyRateModelImpl
    with DiagnosticableTreeMixin
    implements _CurrencyRateModel {
  const _$CurrencyRateModelImpl(
      {@JsonKey(name: 'symbol') this.symbol,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'rate') this.rate,
      @JsonKey(name: 'icon') this.icon});

  factory _$CurrencyRateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyRateModelImplFromJson(json);

  @override
  @JsonKey(name: 'symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'rate')
  final int? rate;
  @override
  @JsonKey(name: 'icon')
  final String? icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyRateModel(symbol: $symbol, title: $title, rate: $rate, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencyRateModel'))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('rate', rate))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyRateModelImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, title, rate, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyRateModelImplCopyWith<_$CurrencyRateModelImpl> get copyWith =>
      __$$CurrencyRateModelImplCopyWithImpl<_$CurrencyRateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyRateModelImplToJson(
      this,
    );
  }
}

abstract class _CurrencyRateModel implements CurrencyRateModel {
  const factory _CurrencyRateModel(
      {@JsonKey(name: 'symbol') final String? symbol,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'rate') final int? rate,
      @JsonKey(name: 'icon') final String? icon}) = _$CurrencyRateModelImpl;

  factory _CurrencyRateModel.fromJson(Map<String, dynamic> json) =
      _$CurrencyRateModelImpl.fromJson;

  @override
  @JsonKey(name: 'symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'rate')
  int? get rate;
  @override
  @JsonKey(name: 'icon')
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyRateModelImplCopyWith<_$CurrencyRateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
