// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pfi_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PfiRateModel _$PfiRateModelFromJson(Map<String, dynamic> json) {
  return _PfiRateModel.fromJson(json);
}

/// @nodoc
mixin _$PfiRateModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'rater_id')
  String? get raterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rater_name')
  String? get raterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'pfi_did')
  String? get pfiDid => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  double? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'quote_id')
  String? get quoteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PfiRateModelCopyWith<PfiRateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PfiRateModelCopyWith<$Res> {
  factory $PfiRateModelCopyWith(
          PfiRateModel value, $Res Function(PfiRateModel) then) =
      _$PfiRateModelCopyWithImpl<$Res, PfiRateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'rater_id') String? raterId,
      @JsonKey(name: 'rater_name') String? raterName,
      @JsonKey(name: 'pfi_did') String? pfiDid,
      @JsonKey(name: 'rate') double? rate,
      @JsonKey(name: 'quote_id') String? quoteId,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$PfiRateModelCopyWithImpl<$Res, $Val extends PfiRateModel>
    implements $PfiRateModelCopyWith<$Res> {
  _$PfiRateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? raterId = freezed,
    Object? raterName = freezed,
    Object? pfiDid = freezed,
    Object? rate = freezed,
    Object? quoteId = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      raterId: freezed == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as String?,
      raterName: freezed == raterName
          ? _value.raterName
          : raterName // ignore: cast_nullable_to_non_nullable
              as String?,
      pfiDid: freezed == pfiDid
          ? _value.pfiDid
          : pfiDid // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      quoteId: freezed == quoteId
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PfiRateModelImplCopyWith<$Res>
    implements $PfiRateModelCopyWith<$Res> {
  factory _$$PfiRateModelImplCopyWith(
          _$PfiRateModelImpl value, $Res Function(_$PfiRateModelImpl) then) =
      __$$PfiRateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'rater_id') String? raterId,
      @JsonKey(name: 'rater_name') String? raterName,
      @JsonKey(name: 'pfi_did') String? pfiDid,
      @JsonKey(name: 'rate') double? rate,
      @JsonKey(name: 'quote_id') String? quoteId,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$PfiRateModelImplCopyWithImpl<$Res>
    extends _$PfiRateModelCopyWithImpl<$Res, _$PfiRateModelImpl>
    implements _$$PfiRateModelImplCopyWith<$Res> {
  __$$PfiRateModelImplCopyWithImpl(
      _$PfiRateModelImpl _value, $Res Function(_$PfiRateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? raterId = freezed,
    Object? raterName = freezed,
    Object? pfiDid = freezed,
    Object? rate = freezed,
    Object? quoteId = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PfiRateModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      raterId: freezed == raterId
          ? _value.raterId
          : raterId // ignore: cast_nullable_to_non_nullable
              as String?,
      raterName: freezed == raterName
          ? _value.raterName
          : raterName // ignore: cast_nullable_to_non_nullable
              as String?,
      pfiDid: freezed == pfiDid
          ? _value.pfiDid
          : pfiDid // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      quoteId: freezed == quoteId
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
class _$PfiRateModelImpl with DiagnosticableTreeMixin implements _PfiRateModel {
  const _$PfiRateModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'rater_id') this.raterId,
      @JsonKey(name: 'rater_name') this.raterName,
      @JsonKey(name: 'pfi_did') this.pfiDid,
      @JsonKey(name: 'rate') this.rate,
      @JsonKey(name: 'quote_id') this.quoteId,
      @JsonKey(name: 'comment') this.comment,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$PfiRateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PfiRateModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'rater_id')
  final String? raterId;
  @override
  @JsonKey(name: 'rater_name')
  final String? raterName;
  @override
  @JsonKey(name: 'pfi_did')
  final String? pfiDid;
  @override
  @JsonKey(name: 'rate')
  final double? rate;
  @override
  @JsonKey(name: 'quote_id')
  final String? quoteId;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PfiRateModel(id: $id, raterId: $raterId, raterName: $raterName, pfiDid: $pfiDid, rate: $rate, quoteId: $quoteId, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PfiRateModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('raterId', raterId))
      ..add(DiagnosticsProperty('raterName', raterName))
      ..add(DiagnosticsProperty('pfiDid', pfiDid))
      ..add(DiagnosticsProperty('rate', rate))
      ..add(DiagnosticsProperty('quoteId', quoteId))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PfiRateModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.raterId, raterId) || other.raterId == raterId) &&
            (identical(other.raterName, raterName) ||
                other.raterName == raterName) &&
            (identical(other.pfiDid, pfiDid) || other.pfiDid == pfiDid) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.quoteId, quoteId) || other.quoteId == quoteId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, raterId, raterName, pfiDid,
      rate, quoteId, comment, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PfiRateModelImplCopyWith<_$PfiRateModelImpl> get copyWith =>
      __$$PfiRateModelImplCopyWithImpl<_$PfiRateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PfiRateModelImplToJson(
      this,
    );
  }
}

abstract class _PfiRateModel implements PfiRateModel {
  const factory _PfiRateModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'rater_id') final String? raterId,
          @JsonKey(name: 'rater_name') final String? raterName,
          @JsonKey(name: 'pfi_did') final String? pfiDid,
          @JsonKey(name: 'rate') final double? rate,
          @JsonKey(name: 'quote_id') final String? quoteId,
          @JsonKey(name: 'comment') final String? comment,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$PfiRateModelImpl;

  factory _PfiRateModel.fromJson(Map<String, dynamic> json) =
      _$PfiRateModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'rater_id')
  String? get raterId;
  @override
  @JsonKey(name: 'rater_name')
  String? get raterName;
  @override
  @JsonKey(name: 'pfi_did')
  String? get pfiDid;
  @override
  @JsonKey(name: 'rate')
  double? get rate;
  @override
  @JsonKey(name: 'quote_id')
  String? get quoteId;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PfiRateModelImplCopyWith<_$PfiRateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
