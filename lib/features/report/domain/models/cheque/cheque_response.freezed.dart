// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cheque_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChequeResponse _$ChequeResponseFromJson(Map<String, dynamic> json) {
  return _ChequeResponse.fromJson(json);
}

/// @nodoc
mixin _$ChequeResponse {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error_code")
  int? get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ChequeTrans>? get data => throw _privateConstructorUsedError;

  /// Serializes this ChequeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChequeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChequeResponseCopyWith<ChequeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChequeResponseCopyWith<$Res> {
  factory $ChequeResponseCopyWith(
    ChequeResponse value,
    $Res Function(ChequeResponse) then,
  ) = _$ChequeResponseCopyWithImpl<$Res, ChequeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "error_code") int? errorCode,
    @JsonKey(name: "data") List<ChequeTrans>? data,
  });
}

/// @nodoc
class _$ChequeResponseCopyWithImpl<$Res, $Val extends ChequeResponse>
    implements $ChequeResponseCopyWith<$Res> {
  _$ChequeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChequeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
    Object? data = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            errorCode: freezed == errorCode
                ? _value.errorCode
                : errorCode // ignore: cast_nullable_to_non_nullable
                      as int?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<ChequeTrans>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChequeResponseImplCopyWith<$Res>
    implements $ChequeResponseCopyWith<$Res> {
  factory _$$ChequeResponseImplCopyWith(
    _$ChequeResponseImpl value,
    $Res Function(_$ChequeResponseImpl) then,
  ) = __$$ChequeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "error_code") int? errorCode,
    @JsonKey(name: "data") List<ChequeTrans>? data,
  });
}

/// @nodoc
class __$$ChequeResponseImplCopyWithImpl<$Res>
    extends _$ChequeResponseCopyWithImpl<$Res, _$ChequeResponseImpl>
    implements _$$ChequeResponseImplCopyWith<$Res> {
  __$$ChequeResponseImplCopyWithImpl(
    _$ChequeResponseImpl _value,
    $Res Function(_$ChequeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChequeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
    Object? data = freezed,
  }) {
    return _then(
      _$ChequeResponseImpl(
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        errorCode: freezed == errorCode
            ? _value.errorCode
            : errorCode // ignore: cast_nullable_to_non_nullable
                  as int?,
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<ChequeTrans>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChequeResponseImpl implements _ChequeResponse {
  const _$ChequeResponseImpl({
    @JsonKey(name: "status") this.status,
    @JsonKey(name: "message") this.message,
    @JsonKey(name: "error_code") this.errorCode,
    @JsonKey(name: "data") final List<ChequeTrans>? data,
  }) : _data = data;

  factory _$ChequeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChequeResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "error_code")
  final int? errorCode;
  final List<ChequeTrans>? _data;
  @override
  @JsonKey(name: "data")
  List<ChequeTrans>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChequeResponse(status: $status, message: $message, errorCode: $errorCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChequeResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    errorCode,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of ChequeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChequeResponseImplCopyWith<_$ChequeResponseImpl> get copyWith =>
      __$$ChequeResponseImplCopyWithImpl<_$ChequeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChequeResponseImplToJson(this);
  }
}

abstract class _ChequeResponse implements ChequeResponse {
  const factory _ChequeResponse({
    @JsonKey(name: "status") final String? status,
    @JsonKey(name: "message") final String? message,
    @JsonKey(name: "error_code") final int? errorCode,
    @JsonKey(name: "data") final List<ChequeTrans>? data,
  }) = _$ChequeResponseImpl;

  factory _ChequeResponse.fromJson(Map<String, dynamic> json) =
      _$ChequeResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "error_code")
  int? get errorCode;
  @override
  @JsonKey(name: "data")
  List<ChequeTrans>? get data;

  /// Create a copy of ChequeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChequeResponseImplCopyWith<_$ChequeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChequeTrans _$ChequeTransFromJson(Map<String, dynamic> json) {
  return _ChequeTrans.fromJson(json);
}

/// @nodoc
mixin _$ChequeTrans {
  @JsonKey(name: "cheque_track_id")
  int? get chequeTrackId => throw _privateConstructorUsedError;
  @JsonKey(name: "outlet_name")
  String? get outletName => throw _privateConstructorUsedError;
  @JsonKey(name: "cheque_issue_date")
  String? get chequeIssueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_name")
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: "cheque_date")
  String? get chequeDate => throw _privateConstructorUsedError;
  @JsonKey(name: "cheque_number")
  String? get chequeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "narration")
  String? get narration => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  dynamic get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_by")
  dynamic get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  int? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_id")
  int? get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_name")
  String? get statusName => throw _privateConstructorUsedError;

  /// Serializes this ChequeTrans to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChequeTrans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChequeTransCopyWith<ChequeTrans> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChequeTransCopyWith<$Res> {
  factory $ChequeTransCopyWith(
    ChequeTrans value,
    $Res Function(ChequeTrans) then,
  ) = _$ChequeTransCopyWithImpl<$Res, ChequeTrans>;
  @useResult
  $Res call({
    @JsonKey(name: "cheque_track_id") int? chequeTrackId,
    @JsonKey(name: "outlet_name") String? outletName,
    @JsonKey(name: "cheque_issue_date") String? chequeIssueDate,
    @JsonKey(name: "bank_name") String? bankName,
    @JsonKey(name: "cheque_date") String? chequeDate,
    @JsonKey(name: "cheque_number") String? chequeNumber,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "narration") String? narration,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_by") dynamic createdBy,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "updated_by") dynamic updatedBy,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "bank_id") int? bankId,
    @JsonKey(name: "status_name") String? statusName,
  });
}

/// @nodoc
class _$ChequeTransCopyWithImpl<$Res, $Val extends ChequeTrans>
    implements $ChequeTransCopyWith<$Res> {
  _$ChequeTransCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChequeTrans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chequeTrackId = freezed,
    Object? outletName = freezed,
    Object? chequeIssueDate = freezed,
    Object? bankName = freezed,
    Object? chequeDate = freezed,
    Object? chequeNumber = freezed,
    Object? amount = freezed,
    Object? narration = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? isActive = freezed,
    Object? storeId = freezed,
    Object? createdAt = freezed,
    Object? bankId = freezed,
    Object? statusName = freezed,
  }) {
    return _then(
      _value.copyWith(
            chequeTrackId: freezed == chequeTrackId
                ? _value.chequeTrackId
                : chequeTrackId // ignore: cast_nullable_to_non_nullable
                      as int?,
            outletName: freezed == outletName
                ? _value.outletName
                : outletName // ignore: cast_nullable_to_non_nullable
                      as String?,
            chequeIssueDate: freezed == chequeIssueDate
                ? _value.chequeIssueDate
                : chequeIssueDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            bankName: freezed == bankName
                ? _value.bankName
                : bankName // ignore: cast_nullable_to_non_nullable
                      as String?,
            chequeDate: freezed == chequeDate
                ? _value.chequeDate
                : chequeDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            chequeNumber: freezed == chequeNumber
                ? _value.chequeNumber
                : chequeNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as String?,
            narration: freezed == narration
                ? _value.narration
                : narration // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedBy: freezed == updatedBy
                ? _value.updatedBy
                : updatedBy // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            bankId: freezed == bankId
                ? _value.bankId
                : bankId // ignore: cast_nullable_to_non_nullable
                      as int?,
            statusName: freezed == statusName
                ? _value.statusName
                : statusName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChequeTransImplCopyWith<$Res>
    implements $ChequeTransCopyWith<$Res> {
  factory _$$ChequeTransImplCopyWith(
    _$ChequeTransImpl value,
    $Res Function(_$ChequeTransImpl) then,
  ) = __$$ChequeTransImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "cheque_track_id") int? chequeTrackId,
    @JsonKey(name: "outlet_name") String? outletName,
    @JsonKey(name: "cheque_issue_date") String? chequeIssueDate,
    @JsonKey(name: "bank_name") String? bankName,
    @JsonKey(name: "cheque_date") String? chequeDate,
    @JsonKey(name: "cheque_number") String? chequeNumber,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "narration") String? narration,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_by") dynamic createdBy,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "updated_by") dynamic updatedBy,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "bank_id") int? bankId,
    @JsonKey(name: "status_name") String? statusName,
  });
}

/// @nodoc
class __$$ChequeTransImplCopyWithImpl<$Res>
    extends _$ChequeTransCopyWithImpl<$Res, _$ChequeTransImpl>
    implements _$$ChequeTransImplCopyWith<$Res> {
  __$$ChequeTransImplCopyWithImpl(
    _$ChequeTransImpl _value,
    $Res Function(_$ChequeTransImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChequeTrans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chequeTrackId = freezed,
    Object? outletName = freezed,
    Object? chequeIssueDate = freezed,
    Object? bankName = freezed,
    Object? chequeDate = freezed,
    Object? chequeNumber = freezed,
    Object? amount = freezed,
    Object? narration = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? isActive = freezed,
    Object? storeId = freezed,
    Object? createdAt = freezed,
    Object? bankId = freezed,
    Object? statusName = freezed,
  }) {
    return _then(
      _$ChequeTransImpl(
        chequeTrackId: freezed == chequeTrackId
            ? _value.chequeTrackId
            : chequeTrackId // ignore: cast_nullable_to_non_nullable
                  as int?,
        outletName: freezed == outletName
            ? _value.outletName
            : outletName // ignore: cast_nullable_to_non_nullable
                  as String?,
        chequeIssueDate: freezed == chequeIssueDate
            ? _value.chequeIssueDate
            : chequeIssueDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        bankName: freezed == bankName
            ? _value.bankName
            : bankName // ignore: cast_nullable_to_non_nullable
                  as String?,
        chequeDate: freezed == chequeDate
            ? _value.chequeDate
            : chequeDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        chequeNumber: freezed == chequeNumber
            ? _value.chequeNumber
            : chequeNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String?,
        narration: freezed == narration
            ? _value.narration
            : narration // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedBy: freezed == updatedBy
            ? _value.updatedBy
            : updatedBy // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        bankId: freezed == bankId
            ? _value.bankId
            : bankId // ignore: cast_nullable_to_non_nullable
                  as int?,
        statusName: freezed == statusName
            ? _value.statusName
            : statusName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChequeTransImpl implements _ChequeTrans {
  const _$ChequeTransImpl({
    @JsonKey(name: "cheque_track_id") this.chequeTrackId,
    @JsonKey(name: "outlet_name") this.outletName,
    @JsonKey(name: "cheque_issue_date") this.chequeIssueDate,
    @JsonKey(name: "bank_name") this.bankName,
    @JsonKey(name: "cheque_date") this.chequeDate,
    @JsonKey(name: "cheque_number") this.chequeNumber,
    @JsonKey(name: "amount") this.amount,
    @JsonKey(name: "narration") this.narration,
    @JsonKey(name: "status") this.status,
    @JsonKey(name: "created_by") this.createdBy,
    @JsonKey(name: "updated_at") this.updatedAt,
    @JsonKey(name: "updated_by") this.updatedBy,
    @JsonKey(name: "is_active") this.isActive,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "bank_id") this.bankId,
    @JsonKey(name: "status_name") this.statusName,
  });

  factory _$ChequeTransImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChequeTransImplFromJson(json);

  @override
  @JsonKey(name: "cheque_track_id")
  final int? chequeTrackId;
  @override
  @JsonKey(name: "outlet_name")
  final String? outletName;
  @override
  @JsonKey(name: "cheque_issue_date")
  final String? chequeIssueDate;
  @override
  @JsonKey(name: "bank_name")
  final String? bankName;
  @override
  @JsonKey(name: "cheque_date")
  final String? chequeDate;
  @override
  @JsonKey(name: "cheque_number")
  final String? chequeNumber;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "narration")
  final String? narration;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "created_by")
  final dynamic createdBy;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "updated_by")
  final dynamic updatedBy;
  @override
  @JsonKey(name: "is_active")
  final int? isActive;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "bank_id")
  final int? bankId;
  @override
  @JsonKey(name: "status_name")
  final String? statusName;

  @override
  String toString() {
    return 'ChequeTrans(chequeTrackId: $chequeTrackId, outletName: $outletName, chequeIssueDate: $chequeIssueDate, bankName: $bankName, chequeDate: $chequeDate, chequeNumber: $chequeNumber, amount: $amount, narration: $narration, status: $status, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, isActive: $isActive, storeId: $storeId, createdAt: $createdAt, bankId: $bankId, statusName: $statusName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChequeTransImpl &&
            (identical(other.chequeTrackId, chequeTrackId) ||
                other.chequeTrackId == chequeTrackId) &&
            (identical(other.outletName, outletName) ||
                other.outletName == outletName) &&
            (identical(other.chequeIssueDate, chequeIssueDate) ||
                other.chequeIssueDate == chequeIssueDate) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.chequeDate, chequeDate) ||
                other.chequeDate == chequeDate) &&
            (identical(other.chequeNumber, chequeNumber) ||
                other.chequeNumber == chequeNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.narration, narration) ||
                other.narration == narration) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    chequeTrackId,
    outletName,
    chequeIssueDate,
    bankName,
    chequeDate,
    chequeNumber,
    amount,
    narration,
    status,
    const DeepCollectionEquality().hash(createdBy),
    updatedAt,
    const DeepCollectionEquality().hash(updatedBy),
    isActive,
    storeId,
    createdAt,
    bankId,
    statusName,
  );

  /// Create a copy of ChequeTrans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChequeTransImplCopyWith<_$ChequeTransImpl> get copyWith =>
      __$$ChequeTransImplCopyWithImpl<_$ChequeTransImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChequeTransImplToJson(this);
  }
}

abstract class _ChequeTrans implements ChequeTrans {
  const factory _ChequeTrans({
    @JsonKey(name: "cheque_track_id") final int? chequeTrackId,
    @JsonKey(name: "outlet_name") final String? outletName,
    @JsonKey(name: "cheque_issue_date") final String? chequeIssueDate,
    @JsonKey(name: "bank_name") final String? bankName,
    @JsonKey(name: "cheque_date") final String? chequeDate,
    @JsonKey(name: "cheque_number") final String? chequeNumber,
    @JsonKey(name: "amount") final String? amount,
    @JsonKey(name: "narration") final String? narration,
    @JsonKey(name: "status") final int? status,
    @JsonKey(name: "created_by") final dynamic createdBy,
    @JsonKey(name: "updated_at") final DateTime? updatedAt,
    @JsonKey(name: "updated_by") final dynamic updatedBy,
    @JsonKey(name: "is_active") final int? isActive,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "created_at") final DateTime? createdAt,
    @JsonKey(name: "bank_id") final int? bankId,
    @JsonKey(name: "status_name") final String? statusName,
  }) = _$ChequeTransImpl;

  factory _ChequeTrans.fromJson(Map<String, dynamic> json) =
      _$ChequeTransImpl.fromJson;

  @override
  @JsonKey(name: "cheque_track_id")
  int? get chequeTrackId;
  @override
  @JsonKey(name: "outlet_name")
  String? get outletName;
  @override
  @JsonKey(name: "cheque_issue_date")
  String? get chequeIssueDate;
  @override
  @JsonKey(name: "bank_name")
  String? get bankName;
  @override
  @JsonKey(name: "cheque_date")
  String? get chequeDate;
  @override
  @JsonKey(name: "cheque_number")
  String? get chequeNumber;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "narration")
  String? get narration;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "created_by")
  dynamic get createdBy;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "updated_by")
  dynamic get updatedBy;
  @override
  @JsonKey(name: "is_active")
  int? get isActive;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "bank_id")
  int? get bankId;
  @override
  @JsonKey(name: "status_name")
  String? get statusName;

  /// Create a copy of ChequeTrans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChequeTransImplCopyWith<_$ChequeTransImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
