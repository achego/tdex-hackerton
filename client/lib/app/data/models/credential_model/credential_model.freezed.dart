// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credential_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CredentialModel _$CredentialModelFromJson(Map<String, dynamic> json) {
  return _CredentialModel.fromJson(json);
}

/// @nodoc
mixin _$CredentialModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuer')
  String? get issuer => throw _privateConstructorUsedError;
  @JsonKey(name: 'credential')
  String? get credential => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialModelCopyWith<CredentialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialModelCopyWith<$Res> {
  factory $CredentialModelCopyWith(
          CredentialModel value, $Res Function(CredentialModel) then) =
      _$CredentialModelCopyWithImpl<$Res, CredentialModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'issuer') String? issuer,
      @JsonKey(name: 'credential') String? credential,
      @JsonKey(name: 'userId') String? userId});
}

/// @nodoc
class _$CredentialModelCopyWithImpl<$Res, $Val extends CredentialModel>
    implements $CredentialModelCopyWith<$Res> {
  _$CredentialModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? issuer = freezed,
    Object? credential = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String?,
      credential: freezed == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CredentialModelImplCopyWith<$Res>
    implements $CredentialModelCopyWith<$Res> {
  factory _$$CredentialModelImplCopyWith(_$CredentialModelImpl value,
          $Res Function(_$CredentialModelImpl) then) =
      __$$CredentialModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'issuer') String? issuer,
      @JsonKey(name: 'credential') String? credential,
      @JsonKey(name: 'userId') String? userId});
}

/// @nodoc
class __$$CredentialModelImplCopyWithImpl<$Res>
    extends _$CredentialModelCopyWithImpl<$Res, _$CredentialModelImpl>
    implements _$$CredentialModelImplCopyWith<$Res> {
  __$$CredentialModelImplCopyWithImpl(
      _$CredentialModelImpl _value, $Res Function(_$CredentialModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? issuer = freezed,
    Object? credential = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$CredentialModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String?,
      credential: freezed == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialModelImpl
    with DiagnosticableTreeMixin
    implements _CredentialModel {
  const _$CredentialModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'issuer') this.issuer,
      @JsonKey(name: 'credential') this.credential,
      @JsonKey(name: 'userId') this.userId});

  factory _$CredentialModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CredentialModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'issuer')
  final String? issuer;
  @override
  @JsonKey(name: 'credential')
  final String? credential;
  @override
  @JsonKey(name: 'userId')
  final String? userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CredentialModel(id: $id, issuer: $issuer, credential: $credential, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CredentialModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('issuer', issuer))
      ..add(DiagnosticsProperty('credential', credential))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.credential, credential) ||
                other.credential == credential) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, issuer, credential, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialModelImplCopyWith<_$CredentialModelImpl> get copyWith =>
      __$$CredentialModelImplCopyWithImpl<_$CredentialModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialModelImplToJson(
      this,
    );
  }
}

abstract class _CredentialModel implements CredentialModel {
  const factory _CredentialModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'issuer') final String? issuer,
      @JsonKey(name: 'credential') final String? credential,
      @JsonKey(name: 'userId') final String? userId}) = _$CredentialModelImpl;

  factory _CredentialModel.fromJson(Map<String, dynamic> json) =
      _$CredentialModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'issuer')
  String? get issuer;
  @override
  @JsonKey(name: 'credential')
  String? get credential;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$CredentialModelImplCopyWith<_$CredentialModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
