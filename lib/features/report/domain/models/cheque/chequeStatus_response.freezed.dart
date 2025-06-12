// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chequeStatus_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChequestatusResponse _$ChequestatusResponseFromJson(Map<String, dynamic> json) {
  return _ChequestatusResponse.fromJson(json);
}

/// @nodoc
mixin _$ChequestatusResponse {
  @JsonKey(name: "cheque_status_id")
  int? get chequeStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "cheque_status_name")
  String? get chequeStatusName => throw _privateConstructorUsedError;
  @JsonKey(name: "cheque_status_arabic_name")
  String? get chequeStatusArabicName => throw _privateConstructorUsedError;
  @JsonKey(name: "menu_order")
  int? get menuOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  int? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  dynamic get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ChequestatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChequestatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChequestatusResponseCopyWith<ChequestatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChequestatusResponseCopyWith<$Res> {
  factory $ChequestatusResponseCopyWith(
    ChequestatusResponse value,
    $Res Function(ChequestatusResponse) then,
  ) = _$ChequestatusResponseCopyWithImpl<$Res, ChequestatusResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "cheque_status_id") int? chequeStatusId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "cheque_status_name") String? chequeStatusName,
    @JsonKey(name: "cheque_status_arabic_name") String? chequeStatusArabicName,
    @JsonKey(name: "menu_order") int? menuOrder,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") dynamic updatedAt,
  });
}

/// @nodoc
class _$ChequestatusResponseCopyWithImpl<
  $Res,
  $Val extends ChequestatusResponse
>
    implements $ChequestatusResponseCopyWith<$Res> {
  _$ChequestatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChequestatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chequeStatusId = freezed,
    Object? storeId = freezed,
    Object? chequeStatusName = freezed,
    Object? chequeStatusArabicName = freezed,
    Object? menuOrder = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            chequeStatusId: freezed == chequeStatusId
                ? _value.chequeStatusId
                : chequeStatusId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            chequeStatusName: freezed == chequeStatusName
                ? _value.chequeStatusName
                : chequeStatusName // ignore: cast_nullable_to_non_nullable
                      as String?,
            chequeStatusArabicName: freezed == chequeStatusArabicName
                ? _value.chequeStatusArabicName
                : chequeStatusArabicName // ignore: cast_nullable_to_non_nullable
                      as String?,
            menuOrder: freezed == menuOrder
                ? _value.menuOrder
                : menuOrder // ignore: cast_nullable_to_non_nullable
                      as int?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChequestatusResponseImplCopyWith<$Res>
    implements $ChequestatusResponseCopyWith<$Res> {
  factory _$$ChequestatusResponseImplCopyWith(
    _$ChequestatusResponseImpl value,
    $Res Function(_$ChequestatusResponseImpl) then,
  ) = __$$ChequestatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "cheque_status_id") int? chequeStatusId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "cheque_status_name") String? chequeStatusName,
    @JsonKey(name: "cheque_status_arabic_name") String? chequeStatusArabicName,
    @JsonKey(name: "menu_order") int? menuOrder,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") dynamic updatedAt,
  });
}

/// @nodoc
class __$$ChequestatusResponseImplCopyWithImpl<$Res>
    extends _$ChequestatusResponseCopyWithImpl<$Res, _$ChequestatusResponseImpl>
    implements _$$ChequestatusResponseImplCopyWith<$Res> {
  __$$ChequestatusResponseImplCopyWithImpl(
    _$ChequestatusResponseImpl _value,
    $Res Function(_$ChequestatusResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChequestatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chequeStatusId = freezed,
    Object? storeId = freezed,
    Object? chequeStatusName = freezed,
    Object? chequeStatusArabicName = freezed,
    Object? menuOrder = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ChequestatusResponseImpl(
        chequeStatusId: freezed == chequeStatusId
            ? _value.chequeStatusId
            : chequeStatusId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        chequeStatusName: freezed == chequeStatusName
            ? _value.chequeStatusName
            : chequeStatusName // ignore: cast_nullable_to_non_nullable
                  as String?,
        chequeStatusArabicName: freezed == chequeStatusArabicName
            ? _value.chequeStatusArabicName
            : chequeStatusArabicName // ignore: cast_nullable_to_non_nullable
                  as String?,
        menuOrder: freezed == menuOrder
            ? _value.menuOrder
            : menuOrder // ignore: cast_nullable_to_non_nullable
                  as int?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChequestatusResponseImpl implements _ChequestatusResponse {
  const _$ChequestatusResponseImpl({
    @JsonKey(name: "cheque_status_id") this.chequeStatusId,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "cheque_status_name") this.chequeStatusName,
    @JsonKey(name: "cheque_status_arabic_name") this.chequeStatusArabicName,
    @JsonKey(name: "menu_order") this.menuOrder,
    @JsonKey(name: "is_active") this.isActive,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
  });

  factory _$ChequestatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChequestatusResponseImplFromJson(json);

  @override
  @JsonKey(name: "cheque_status_id")
  final int? chequeStatusId;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "cheque_status_name")
  final String? chequeStatusName;
  @override
  @JsonKey(name: "cheque_status_arabic_name")
  final String? chequeStatusArabicName;
  @override
  @JsonKey(name: "menu_order")
  final int? menuOrder;
  @override
  @JsonKey(name: "is_active")
  final int? isActive;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final dynamic updatedAt;

  @override
  String toString() {
    return 'ChequestatusResponse(chequeStatusId: $chequeStatusId, storeId: $storeId, chequeStatusName: $chequeStatusName, chequeStatusArabicName: $chequeStatusArabicName, menuOrder: $menuOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChequestatusResponseImpl &&
            (identical(other.chequeStatusId, chequeStatusId) ||
                other.chequeStatusId == chequeStatusId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.chequeStatusName, chequeStatusName) ||
                other.chequeStatusName == chequeStatusName) &&
            (identical(other.chequeStatusArabicName, chequeStatusArabicName) ||
                other.chequeStatusArabicName == chequeStatusArabicName) &&
            (identical(other.menuOrder, menuOrder) ||
                other.menuOrder == menuOrder) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    chequeStatusId,
    storeId,
    chequeStatusName,
    chequeStatusArabicName,
    menuOrder,
    isActive,
    createdAt,
    const DeepCollectionEquality().hash(updatedAt),
  );

  /// Create a copy of ChequestatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChequestatusResponseImplCopyWith<_$ChequestatusResponseImpl>
  get copyWith =>
      __$$ChequestatusResponseImplCopyWithImpl<_$ChequestatusResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChequestatusResponseImplToJson(this);
  }
}

abstract class _ChequestatusResponse implements ChequestatusResponse {
  const factory _ChequestatusResponse({
    @JsonKey(name: "cheque_status_id") final int? chequeStatusId,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "cheque_status_name") final String? chequeStatusName,
    @JsonKey(name: "cheque_status_arabic_name")
    final String? chequeStatusArabicName,
    @JsonKey(name: "menu_order") final int? menuOrder,
    @JsonKey(name: "is_active") final int? isActive,
    @JsonKey(name: "created_at") final DateTime? createdAt,
    @JsonKey(name: "updated_at") final dynamic updatedAt,
  }) = _$ChequestatusResponseImpl;

  factory _ChequestatusResponse.fromJson(Map<String, dynamic> json) =
      _$ChequestatusResponseImpl.fromJson;

  @override
  @JsonKey(name: "cheque_status_id")
  int? get chequeStatusId;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "cheque_status_name")
  String? get chequeStatusName;
  @override
  @JsonKey(name: "cheque_status_arabic_name")
  String? get chequeStatusArabicName;
  @override
  @JsonKey(name: "menu_order")
  int? get menuOrder;
  @override
  @JsonKey(name: "is_active")
  int? get isActive;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  dynamic get updatedAt;

  /// Create a copy of ChequestatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChequestatusResponseImplCopyWith<_$ChequestatusResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
