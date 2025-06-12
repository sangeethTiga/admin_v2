// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MessReportResponse _$MessReportResponseFromJson(Map<String, dynamic> json) {
  return _MessReportResponse.fromJson(json);
}

/// @nodoc
mixin _$MessReportResponse {
  @JsonKey(name: "mess_id")
  int? get messId => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_id")
  int? get custId => throw _privateConstructorUsedError;
  @JsonKey(name: "store_id")
  int? get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: "advance_amount")
  int? get advanceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_name")
  String? get custName => throw _privateConstructorUsedError;
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;
  @JsonKey(name: "rowcount")
  int? get rowcount => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "plans")
  List<dynamic>? get plans => throw _privateConstructorUsedError;
  @JsonKey(name: "balance_amt")
  int? get balanceAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "is_expired")
  int? get isExpired => throw _privateConstructorUsedError;

  /// Serializes this MessReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessReportResponseCopyWith<MessReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessReportResponseCopyWith<$Res> {
  factory $MessReportResponseCopyWith(
    MessReportResponse value,
    $Res Function(MessReportResponse) then,
  ) = _$MessReportResponseCopyWithImpl<$Res, MessReportResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "mess_id") int? messId,
    @JsonKey(name: "cust_id") int? custId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "advance_amount") int? advanceAmount,
    @JsonKey(name: "cust_name") String? custName,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "start_date") DateTime? startDate,
    @JsonKey(name: "end_date") DateTime? endDate,
    @JsonKey(name: "plans") List<dynamic>? plans,
    @JsonKey(name: "balance_amt") int? balanceAmt,
    @JsonKey(name: "is_expired") int? isExpired,
  });
}

/// @nodoc
class _$MessReportResponseCopyWithImpl<$Res, $Val extends MessReportResponse>
    implements $MessReportResponseCopyWith<$Res> {
  _$MessReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messId = freezed,
    Object? custId = freezed,
    Object? storeId = freezed,
    Object? advanceAmount = freezed,
    Object? custName = freezed,
    Object? storeName = freezed,
    Object? rowcount = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? plans = freezed,
    Object? balanceAmt = freezed,
    Object? isExpired = freezed,
  }) {
    return _then(
      _value.copyWith(
            messId: freezed == messId
                ? _value.messId
                : messId // ignore: cast_nullable_to_non_nullable
                      as int?,
            custId: freezed == custId
                ? _value.custId
                : custId // ignore: cast_nullable_to_non_nullable
                      as int?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            advanceAmount: freezed == advanceAmount
                ? _value.advanceAmount
                : advanceAmount // ignore: cast_nullable_to_non_nullable
                      as int?,
            custName: freezed == custName
                ? _value.custName
                : custName // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeName: freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            rowcount: freezed == rowcount
                ? _value.rowcount
                : rowcount // ignore: cast_nullable_to_non_nullable
                      as int?,
            startDate: freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            plans: freezed == plans
                ? _value.plans
                : plans // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            balanceAmt: freezed == balanceAmt
                ? _value.balanceAmt
                : balanceAmt // ignore: cast_nullable_to_non_nullable
                      as int?,
            isExpired: freezed == isExpired
                ? _value.isExpired
                : isExpired // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MessReportResponseImplCopyWith<$Res>
    implements $MessReportResponseCopyWith<$Res> {
  factory _$$MessReportResponseImplCopyWith(
    _$MessReportResponseImpl value,
    $Res Function(_$MessReportResponseImpl) then,
  ) = __$$MessReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "mess_id") int? messId,
    @JsonKey(name: "cust_id") int? custId,
    @JsonKey(name: "store_id") int? storeId,
    @JsonKey(name: "advance_amount") int? advanceAmount,
    @JsonKey(name: "cust_name") String? custName,
    @JsonKey(name: "store_name") String? storeName,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "start_date") DateTime? startDate,
    @JsonKey(name: "end_date") DateTime? endDate,
    @JsonKey(name: "plans") List<dynamic>? plans,
    @JsonKey(name: "balance_amt") int? balanceAmt,
    @JsonKey(name: "is_expired") int? isExpired,
  });
}

/// @nodoc
class __$$MessReportResponseImplCopyWithImpl<$Res>
    extends _$MessReportResponseCopyWithImpl<$Res, _$MessReportResponseImpl>
    implements _$$MessReportResponseImplCopyWith<$Res> {
  __$$MessReportResponseImplCopyWithImpl(
    _$MessReportResponseImpl _value,
    $Res Function(_$MessReportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MessReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messId = freezed,
    Object? custId = freezed,
    Object? storeId = freezed,
    Object? advanceAmount = freezed,
    Object? custName = freezed,
    Object? storeName = freezed,
    Object? rowcount = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? plans = freezed,
    Object? balanceAmt = freezed,
    Object? isExpired = freezed,
  }) {
    return _then(
      _$MessReportResponseImpl(
        messId: freezed == messId
            ? _value.messId
            : messId // ignore: cast_nullable_to_non_nullable
                  as int?,
        custId: freezed == custId
            ? _value.custId
            : custId // ignore: cast_nullable_to_non_nullable
                  as int?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        advanceAmount: freezed == advanceAmount
            ? _value.advanceAmount
            : advanceAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
        custName: freezed == custName
            ? _value.custName
            : custName // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeName: freezed == storeName
            ? _value.storeName
            : storeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        rowcount: freezed == rowcount
            ? _value.rowcount
            : rowcount // ignore: cast_nullable_to_non_nullable
                  as int?,
        startDate: freezed == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        plans: freezed == plans
            ? _value._plans
            : plans // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        balanceAmt: freezed == balanceAmt
            ? _value.balanceAmt
            : balanceAmt // ignore: cast_nullable_to_non_nullable
                  as int?,
        isExpired: freezed == isExpired
            ? _value.isExpired
            : isExpired // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessReportResponseImpl implements _MessReportResponse {
  const _$MessReportResponseImpl({
    @JsonKey(name: "mess_id") this.messId,
    @JsonKey(name: "cust_id") this.custId,
    @JsonKey(name: "store_id") this.storeId,
    @JsonKey(name: "advance_amount") this.advanceAmount,
    @JsonKey(name: "cust_name") this.custName,
    @JsonKey(name: "store_name") this.storeName,
    @JsonKey(name: "rowcount") this.rowcount,
    @JsonKey(name: "start_date") this.startDate,
    @JsonKey(name: "end_date") this.endDate,
    @JsonKey(name: "plans") final List<dynamic>? plans,
    @JsonKey(name: "balance_amt") this.balanceAmt,
    @JsonKey(name: "is_expired") this.isExpired,
  }) : _plans = plans;

  factory _$MessReportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessReportResponseImplFromJson(json);

  @override
  @JsonKey(name: "mess_id")
  final int? messId;
  @override
  @JsonKey(name: "cust_id")
  final int? custId;
  @override
  @JsonKey(name: "store_id")
  final int? storeId;
  @override
  @JsonKey(name: "advance_amount")
  final int? advanceAmount;
  @override
  @JsonKey(name: "cust_name")
  final String? custName;
  @override
  @JsonKey(name: "store_name")
  final String? storeName;
  @override
  @JsonKey(name: "rowcount")
  final int? rowcount;
  @override
  @JsonKey(name: "start_date")
  final DateTime? startDate;
  @override
  @JsonKey(name: "end_date")
  final DateTime? endDate;
  final List<dynamic>? _plans;
  @override
  @JsonKey(name: "plans")
  List<dynamic>? get plans {
    final value = _plans;
    if (value == null) return null;
    if (_plans is EqualUnmodifiableListView) return _plans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "balance_amt")
  final int? balanceAmt;
  @override
  @JsonKey(name: "is_expired")
  final int? isExpired;

  @override
  String toString() {
    return 'MessReportResponse(messId: $messId, custId: $custId, storeId: $storeId, advanceAmount: $advanceAmount, custName: $custName, storeName: $storeName, rowcount: $rowcount, startDate: $startDate, endDate: $endDate, plans: $plans, balanceAmt: $balanceAmt, isExpired: $isExpired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessReportResponseImpl &&
            (identical(other.messId, messId) || other.messId == messId) &&
            (identical(other.custId, custId) || other.custId == custId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.advanceAmount, advanceAmount) ||
                other.advanceAmount == advanceAmount) &&
            (identical(other.custName, custName) ||
                other.custName == custName) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.rowcount, rowcount) ||
                other.rowcount == rowcount) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._plans, _plans) &&
            (identical(other.balanceAmt, balanceAmt) ||
                other.balanceAmt == balanceAmt) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    messId,
    custId,
    storeId,
    advanceAmount,
    custName,
    storeName,
    rowcount,
    startDate,
    endDate,
    const DeepCollectionEquality().hash(_plans),
    balanceAmt,
    isExpired,
  );

  /// Create a copy of MessReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessReportResponseImplCopyWith<_$MessReportResponseImpl> get copyWith =>
      __$$MessReportResponseImplCopyWithImpl<_$MessReportResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MessReportResponseImplToJson(this);
  }
}

abstract class _MessReportResponse implements MessReportResponse {
  const factory _MessReportResponse({
    @JsonKey(name: "mess_id") final int? messId,
    @JsonKey(name: "cust_id") final int? custId,
    @JsonKey(name: "store_id") final int? storeId,
    @JsonKey(name: "advance_amount") final int? advanceAmount,
    @JsonKey(name: "cust_name") final String? custName,
    @JsonKey(name: "store_name") final String? storeName,
    @JsonKey(name: "rowcount") final int? rowcount,
    @JsonKey(name: "start_date") final DateTime? startDate,
    @JsonKey(name: "end_date") final DateTime? endDate,
    @JsonKey(name: "plans") final List<dynamic>? plans,
    @JsonKey(name: "balance_amt") final int? balanceAmt,
    @JsonKey(name: "is_expired") final int? isExpired,
  }) = _$MessReportResponseImpl;

  factory _MessReportResponse.fromJson(Map<String, dynamic> json) =
      _$MessReportResponseImpl.fromJson;

  @override
  @JsonKey(name: "mess_id")
  int? get messId;
  @override
  @JsonKey(name: "cust_id")
  int? get custId;
  @override
  @JsonKey(name: "store_id")
  int? get storeId;
  @override
  @JsonKey(name: "advance_amount")
  int? get advanceAmount;
  @override
  @JsonKey(name: "cust_name")
  String? get custName;
  @override
  @JsonKey(name: "store_name")
  String? get storeName;
  @override
  @JsonKey(name: "rowcount")
  int? get rowcount;
  @override
  @JsonKey(name: "start_date")
  DateTime? get startDate;
  @override
  @JsonKey(name: "end_date")
  DateTime? get endDate;
  @override
  @JsonKey(name: "plans")
  List<dynamic>? get plans;
  @override
  @JsonKey(name: "balance_amt")
  int? get balanceAmt;
  @override
  @JsonKey(name: "is_expired")
  int? get isExpired;

  /// Create a copy of MessReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessReportResponseImplCopyWith<_$MessReportResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
