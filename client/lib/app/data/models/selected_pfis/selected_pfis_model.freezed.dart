// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_pfis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectedPfisModel _$SelectedPfisModelFromJson(Map<String, dynamic> json) {
  return _SelectedPfisModel.fromJson(json);
}

/// @nodoc
mixin _$SelectedPfisModel {
  @JsonKey(name: 'uri')
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedPfisModelCopyWith<SelectedPfisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedPfisModelCopyWith<$Res> {
  factory $SelectedPfisModelCopyWith(
          SelectedPfisModel value, $Res Function(SelectedPfisModel) then) =
      _$SelectedPfisModelCopyWithImpl<$Res, SelectedPfisModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String? uri, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$SelectedPfisModelCopyWithImpl<$Res, $Val extends SelectedPfisModel>
    implements $SelectedPfisModelCopyWith<$Res> {
  _$SelectedPfisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedPfisModelImplCopyWith<$Res>
    implements $SelectedPfisModelCopyWith<$Res> {
  factory _$$SelectedPfisModelImplCopyWith(_$SelectedPfisModelImpl value,
          $Res Function(_$SelectedPfisModelImpl) then) =
      __$$SelectedPfisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String? uri, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$SelectedPfisModelImplCopyWithImpl<$Res>
    extends _$SelectedPfisModelCopyWithImpl<$Res, _$SelectedPfisModelImpl>
    implements _$$SelectedPfisModelImplCopyWith<$Res> {
  __$$SelectedPfisModelImplCopyWithImpl(_$SelectedPfisModelImpl _value,
      $Res Function(_$SelectedPfisModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SelectedPfisModelImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedPfisModelImpl
    with DiagnosticableTreeMixin
    implements _SelectedPfisModel {
  const _$SelectedPfisModelImpl(
      {@JsonKey(name: 'uri') this.uri, @JsonKey(name: 'name') this.name});

  factory _$SelectedPfisModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedPfisModelImplFromJson(json);

  @override
  @JsonKey(name: 'uri')
  final String? uri;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectedPfisModel(uri: $uri, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelectedPfisModel'))
      ..add(DiagnosticsProperty('uri', uri))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPfisModelImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedPfisModelImplCopyWith<_$SelectedPfisModelImpl> get copyWith =>
      __$$SelectedPfisModelImplCopyWithImpl<_$SelectedPfisModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedPfisModelImplToJson(
      this,
    );
  }
}

abstract class _SelectedPfisModel implements SelectedPfisModel {
  const factory _SelectedPfisModel(
      {@JsonKey(name: 'uri') final String? uri,
      @JsonKey(name: 'name') final String? name}) = _$SelectedPfisModelImpl;

  factory _SelectedPfisModel.fromJson(Map<String, dynamic> json) =
      _$SelectedPfisModelImpl.fromJson;

  @override
  @JsonKey(name: 'uri')
  String? get uri;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$SelectedPfisModelImplCopyWith<_$SelectedPfisModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
