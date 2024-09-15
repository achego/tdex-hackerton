// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailableCurrencyModel _$AvailableCurrencyModelFromJson(
    Map<String, dynamic> json) {
  return _AvailableCurrencyModel.fromJson(json);
}

/// @nodoc
mixin _$AvailableCurrencyModel {
  @JsonKey(name: 'symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableCurrencyModelCopyWith<AvailableCurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableCurrencyModelCopyWith<$Res> {
  factory $AvailableCurrencyModelCopyWith(AvailableCurrencyModel value,
          $Res Function(AvailableCurrencyModel) then) =
      _$AvailableCurrencyModelCopyWithImpl<$Res, AvailableCurrencyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'symbol') String? symbol,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'imageUrl') String? imageUrl});
}

/// @nodoc
class _$AvailableCurrencyModelCopyWithImpl<$Res,
        $Val extends AvailableCurrencyModel>
    implements $AvailableCurrencyModelCopyWith<$Res> {
  _$AvailableCurrencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? title = freezed,
    Object? icon = freezed,
    Object? imageUrl = freezed,
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
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableCurrencyModelImplCopyWith<$Res>
    implements $AvailableCurrencyModelCopyWith<$Res> {
  factory _$$AvailableCurrencyModelImplCopyWith(
          _$AvailableCurrencyModelImpl value,
          $Res Function(_$AvailableCurrencyModelImpl) then) =
      __$$AvailableCurrencyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'symbol') String? symbol,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'icon') String? icon,
      @JsonKey(name: 'imageUrl') String? imageUrl});
}

/// @nodoc
class __$$AvailableCurrencyModelImplCopyWithImpl<$Res>
    extends _$AvailableCurrencyModelCopyWithImpl<$Res,
        _$AvailableCurrencyModelImpl>
    implements _$$AvailableCurrencyModelImplCopyWith<$Res> {
  __$$AvailableCurrencyModelImplCopyWithImpl(
      _$AvailableCurrencyModelImpl _value,
      $Res Function(_$AvailableCurrencyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
    Object? title = freezed,
    Object? icon = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$AvailableCurrencyModelImpl(
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableCurrencyModelImpl
    with DiagnosticableTreeMixin
    implements _AvailableCurrencyModel {
  const _$AvailableCurrencyModelImpl(
      {@JsonKey(name: 'symbol') this.symbol,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'icon') this.icon,
      @JsonKey(name: 'imageUrl') this.imageUrl});

  factory _$AvailableCurrencyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableCurrencyModelImplFromJson(json);

  @override
  @JsonKey(name: 'symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'icon')
  final String? icon;
  @override
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AvailableCurrencyModel(symbol: $symbol, title: $title, icon: $icon, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AvailableCurrencyModel'))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableCurrencyModelImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, title, icon, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableCurrencyModelImplCopyWith<_$AvailableCurrencyModelImpl>
      get copyWith => __$$AvailableCurrencyModelImplCopyWithImpl<
          _$AvailableCurrencyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableCurrencyModelImplToJson(
      this,
    );
  }
}

abstract class _AvailableCurrencyModel implements AvailableCurrencyModel {
  const factory _AvailableCurrencyModel(
          {@JsonKey(name: 'symbol') final String? symbol,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'icon') final String? icon,
          @JsonKey(name: 'imageUrl') final String? imageUrl}) =
      _$AvailableCurrencyModelImpl;

  factory _AvailableCurrencyModel.fromJson(Map<String, dynamic> json) =
      _$AvailableCurrencyModelImpl.fromJson;

  @override
  @JsonKey(name: 'symbol')
  String? get symbol;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'icon')
  String? get icon;
  @override
  @JsonKey(name: 'imageUrl')
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$AvailableCurrencyModelImplCopyWith<_$AvailableCurrencyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
