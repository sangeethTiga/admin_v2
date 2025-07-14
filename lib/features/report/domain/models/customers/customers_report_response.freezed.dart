// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomersResponse _$CustomersResponseFromJson(Map<String, dynamic> json) {
  return _CustomersResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomersResponse {
  @JsonKey(name: "cust_id", fromJson: parseInt)
  int? get custId => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_name")
  String? get custName => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_mobile")
  String? get custMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_email")
  String? get custEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "created_date")
  String? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", fromJson: parseInt)
  int? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "rowcount", fromJson: parseInt)
  int? get rowcount => throw _privateConstructorUsedError;
  @JsonKey(name: "account_id", fromJson: parseInt)
  int? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: "balance_amt", fromJson: parseDouble)
  double? get balanceAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "order_count", fromJson: parseInt)
  int? get orderCount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_purchase_amount", fromJson: parseDouble)
  double? get totalPurchaseAmount => throw _privateConstructorUsedError;

  /// Serializes this CustomersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomersResponseCopyWith<CustomersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersResponseCopyWith<$Res> {
  factory $CustomersResponseCopyWith(
    CustomersResponse value,
    $Res Function(CustomersResponse) then,
  ) = _$CustomersResponseCopyWithImpl<$Res, CustomersResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "cust_id", fromJson: parseInt) int? custId,
    @JsonKey(name: "cust_name") String? custName,
    @JsonKey(name: "cust_mobile") String? custMobile,
    @JsonKey(name: "cust_email") String? custEmail,
    @JsonKey(name: "created_date") String? createdDate,
    @JsonKey(name: "is_active", fromJson: parseInt) int? isActive,
    @JsonKey(name: "rowcount", fromJson: parseInt) int? rowcount,
    @JsonKey(name: "account_id", fromJson: parseInt) int? accountId,
    @JsonKey(name: "balance_amt", fromJson: parseDouble) double? balanceAmt,
    @JsonKey(name: "order_count", fromJson: parseInt) int? orderCount,
    @JsonKey(name: "total_purchase_amount", fromJson: parseDouble)
    double? totalPurchaseAmount,
  });
}

/// @nodoc
class _$CustomersResponseCopyWithImpl<$Res, $Val extends CustomersResponse>
    implements $CustomersResponseCopyWith<$Res> {
  _$CustomersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custId = freezed,
    Object? custName = freezed,
    Object? custMobile = freezed,
    Object? custEmail = freezed,
    Object? createdDate = freezed,
    Object? isActive = freezed,
    Object? rowcount = freezed,
    Object? accountId = freezed,
    Object? balanceAmt = freezed,
    Object? orderCount = freezed,
    Object? totalPurchaseAmount = freezed,
  }) {
    return _then(
      _value.copyWith(
            custId: freezed == custId
                ? _value.custId
                : custId // ignore: cast_nullable_to_non_nullable
                      as int?,
            custName: freezed == custName
                ? _value.custName
                : custName // ignore: cast_nullable_to_non_nullable
                      as String?,
            custMobile: freezed == custMobile
                ? _value.custMobile
                : custMobile // ignore: cast_nullable_to_non_nullable
                      as String?,
            custEmail: freezed == custEmail
                ? _value.custEmail
                : custEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdDate: freezed == createdDate
                ? _value.createdDate
                : createdDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as int?,
            rowcount: freezed == rowcount
                ? _value.rowcount
                : rowcount // ignore: cast_nullable_to_non_nullable
                      as int?,
            accountId: freezed == accountId
                ? _value.accountId
                : accountId // ignore: cast_nullable_to_non_nullable
                      as int?,
            balanceAmt: freezed == balanceAmt
                ? _value.balanceAmt
                : balanceAmt // ignore: cast_nullable_to_non_nullable
                      as double?,
            orderCount: freezed == orderCount
                ? _value.orderCount
                : orderCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPurchaseAmount: freezed == totalPurchaseAmount
                ? _value.totalPurchaseAmount
                : totalPurchaseAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomersResponseImplCopyWith<$Res>
    implements $CustomersResponseCopyWith<$Res> {
  factory _$$CustomersResponseImplCopyWith(
    _$CustomersResponseImpl value,
    $Res Function(_$CustomersResponseImpl) then,
  ) = __$$CustomersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "cust_id", fromJson: parseInt) int? custId,
    @JsonKey(name: "cust_name") String? custName,
    @JsonKey(name: "cust_mobile") String? custMobile,
    @JsonKey(name: "cust_email") String? custEmail,
    @JsonKey(name: "created_date") String? createdDate,
    @JsonKey(name: "is_active", fromJson: parseInt) int? isActive,
    @JsonKey(name: "rowcount", fromJson: parseInt) int? rowcount,
    @JsonKey(name: "account_id", fromJson: parseInt) int? accountId,
    @JsonKey(name: "balance_amt", fromJson: parseDouble) double? balanceAmt,
    @JsonKey(name: "order_count", fromJson: parseInt) int? orderCount,
    @JsonKey(name: "total_purchase_amount", fromJson: parseDouble)
    double? totalPurchaseAmount,
  });
}

/// @nodoc
class __$$CustomersResponseImplCopyWithImpl<$Res>
    extends _$CustomersResponseCopyWithImpl<$Res, _$CustomersResponseImpl>
    implements _$$CustomersResponseImplCopyWith<$Res> {
  __$$CustomersResponseImplCopyWithImpl(
    _$CustomersResponseImpl _value,
    $Res Function(_$CustomersResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custId = freezed,
    Object? custName = freezed,
    Object? custMobile = freezed,
    Object? custEmail = freezed,
    Object? createdDate = freezed,
    Object? isActive = freezed,
    Object? rowcount = freezed,
    Object? accountId = freezed,
    Object? balanceAmt = freezed,
    Object? orderCount = freezed,
    Object? totalPurchaseAmount = freezed,
  }) {
    return _then(
      _$CustomersResponseImpl(
        custId: freezed == custId
            ? _value.custId
            : custId // ignore: cast_nullable_to_non_nullable
                  as int?,
        custName: freezed == custName
            ? _value.custName
            : custName // ignore: cast_nullable_to_non_nullable
                  as String?,
        custMobile: freezed == custMobile
            ? _value.custMobile
            : custMobile // ignore: cast_nullable_to_non_nullable
                  as String?,
        custEmail: freezed == custEmail
            ? _value.custEmail
            : custEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdDate: freezed == createdDate
            ? _value.createdDate
            : createdDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as int?,
        rowcount: freezed == rowcount
            ? _value.rowcount
            : rowcount // ignore: cast_nullable_to_non_nullable
                  as int?,
        accountId: freezed == accountId
            ? _value.accountId
            : accountId // ignore: cast_nullable_to_non_nullable
                  as int?,
        balanceAmt: freezed == balanceAmt
            ? _value.balanceAmt
            : balanceAmt // ignore: cast_nullable_to_non_nullable
                  as double?,
        orderCount: freezed == orderCount
            ? _value.orderCount
            : orderCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPurchaseAmount: freezed == totalPurchaseAmount
            ? _value.totalPurchaseAmount
            : totalPurchaseAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomersResponseImpl implements _CustomersResponse {
  const _$CustomersResponseImpl({
    @JsonKey(name: "cust_id", fromJson: parseInt) this.custId,
    @JsonKey(name: "cust_name") this.custName,
    @JsonKey(name: "cust_mobile") this.custMobile,
    @JsonKey(name: "cust_email") this.custEmail,
    @JsonKey(name: "created_date") this.createdDate,
    @JsonKey(name: "is_active", fromJson: parseInt) this.isActive,
    @JsonKey(name: "rowcount", fromJson: parseInt) this.rowcount,
    @JsonKey(name: "account_id", fromJson: parseInt) this.accountId,
    @JsonKey(name: "balance_amt", fromJson: parseDouble) this.balanceAmt,
    @JsonKey(name: "order_count", fromJson: parseInt) this.orderCount,
    @JsonKey(name: "total_purchase_amount", fromJson: parseDouble)
    this.totalPurchaseAmount,
  });

  factory _$CustomersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomersResponseImplFromJson(json);

  @override
  @JsonKey(name: "cust_id", fromJson: parseInt)
  final int? custId;
  @override
  @JsonKey(name: "cust_name")
  final String? custName;
  @override
  @JsonKey(name: "cust_mobile")
  final String? custMobile;
  @override
  @JsonKey(name: "cust_email")
  final String? custEmail;
  @override
  @JsonKey(name: "created_date")
  final String? createdDate;
  @override
  @JsonKey(name: "is_active", fromJson: parseInt)
  final int? isActive;
  @override
  @JsonKey(name: "rowcount", fromJson: parseInt)
  final int? rowcount;
  @override
  @JsonKey(name: "account_id", fromJson: parseInt)
  final int? accountId;
  @override
  @JsonKey(name: "balance_amt", fromJson: parseDouble)
  final double? balanceAmt;
  @override
  @JsonKey(name: "order_count", fromJson: parseInt)
  final int? orderCount;
  @override
  @JsonKey(name: "total_purchase_amount", fromJson: parseDouble)
  final double? totalPurchaseAmount;

  @override
  String toString() {
    return 'CustomersResponse(custId: $custId, custName: $custName, custMobile: $custMobile, custEmail: $custEmail, createdDate: $createdDate, isActive: $isActive, rowcount: $rowcount, accountId: $accountId, balanceAmt: $balanceAmt, orderCount: $orderCount, totalPurchaseAmount: $totalPurchaseAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersResponseImpl &&
            (identical(other.custId, custId) || other.custId == custId) &&
            (identical(other.custName, custName) ||
                other.custName == custName) &&
            (identical(other.custMobile, custMobile) ||
                other.custMobile == custMobile) &&
            (identical(other.custEmail, custEmail) ||
                other.custEmail == custEmail) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.rowcount, rowcount) ||
                other.rowcount == rowcount) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.balanceAmt, balanceAmt) ||
                other.balanceAmt == balanceAmt) &&
            (identical(other.orderCount, orderCount) ||
                other.orderCount == orderCount) &&
            (identical(other.totalPurchaseAmount, totalPurchaseAmount) ||
                other.totalPurchaseAmount == totalPurchaseAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    custId,
    custName,
    custMobile,
    custEmail,
    createdDate,
    isActive,
    rowcount,
    accountId,
    balanceAmt,
    orderCount,
    totalPurchaseAmount,
  );

  /// Create a copy of CustomersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersResponseImplCopyWith<_$CustomersResponseImpl> get copyWith =>
      __$$CustomersResponseImplCopyWithImpl<_$CustomersResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomersResponseImplToJson(this);
  }
}

abstract class _CustomersResponse implements CustomersResponse {
  const factory _CustomersResponse({
    @JsonKey(name: "cust_id", fromJson: parseInt) final int? custId,
    @JsonKey(name: "cust_name") final String? custName,
    @JsonKey(name: "cust_mobile") final String? custMobile,
    @JsonKey(name: "cust_email") final String? custEmail,
    @JsonKey(name: "created_date") final String? createdDate,
    @JsonKey(name: "is_active", fromJson: parseInt) final int? isActive,
    @JsonKey(name: "rowcount", fromJson: parseInt) final int? rowcount,
    @JsonKey(name: "account_id", fromJson: parseInt) final int? accountId,
    @JsonKey(name: "balance_amt", fromJson: parseDouble)
    final double? balanceAmt,
    @JsonKey(name: "order_count", fromJson: parseInt) final int? orderCount,
    @JsonKey(name: "total_purchase_amount", fromJson: parseDouble)
    final double? totalPurchaseAmount,
  }) = _$CustomersResponseImpl;

  factory _CustomersResponse.fromJson(Map<String, dynamic> json) =
      _$CustomersResponseImpl.fromJson;

  @override
  @JsonKey(name: "cust_id", fromJson: parseInt)
  int? get custId;
  @override
  @JsonKey(name: "cust_name")
  String? get custName;
  @override
  @JsonKey(name: "cust_mobile")
  String? get custMobile;
  @override
  @JsonKey(name: "cust_email")
  String? get custEmail;
  @override
  @JsonKey(name: "created_date")
  String? get createdDate;
  @override
  @JsonKey(name: "is_active", fromJson: parseInt)
  int? get isActive;
  @override
  @JsonKey(name: "rowcount", fromJson: parseInt)
  int? get rowcount;
  @override
  @JsonKey(name: "account_id", fromJson: parseInt)
  int? get accountId;
  @override
  @JsonKey(name: "balance_amt", fromJson: parseDouble)
  double? get balanceAmt;
  @override
  @JsonKey(name: "order_count", fromJson: parseInt)
  int? get orderCount;
  @override
  @JsonKey(name: "total_purchase_amount", fromJson: parseDouble)
  double? get totalPurchaseAmount;

  /// Create a copy of CustomersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomersResponseImplCopyWith<_$CustomersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
