// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custSearch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerSearchResponse _$CustomerSearchResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CustomerSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomerSearchResponse {
  @JsonKey(name: "cust_id")
  int? get custId => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_name")
  String? get custName => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_mobile")
  String? get custMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_email")
  String? get custEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "created_date")
  String? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  int? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "rowcount")
  int? get rowcount => throw _privateConstructorUsedError;
  @JsonKey(name: "account_id")
  int? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: "balance_amt")
  String? get balanceAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "order_count")
  int? get orderCount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_purchase_amount")
  String? get totalPurchaseAmount => throw _privateConstructorUsedError;

  /// Serializes this CustomerSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerSearchResponseCopyWith<CustomerSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerSearchResponseCopyWith<$Res> {
  factory $CustomerSearchResponseCopyWith(
    CustomerSearchResponse value,
    $Res Function(CustomerSearchResponse) then,
  ) = _$CustomerSearchResponseCopyWithImpl<$Res, CustomerSearchResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "cust_id") int? custId,
    @JsonKey(name: "cust_name") String? custName,
    @JsonKey(name: "cust_mobile") String? custMobile,
    @JsonKey(name: "cust_email") String? custEmail,
    @JsonKey(name: "created_date") String? createdDate,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "account_id") int? accountId,
    @JsonKey(name: "balance_amt") String? balanceAmt,
    @JsonKey(name: "order_count") int? orderCount,
    @JsonKey(name: "total_purchase_amount") String? totalPurchaseAmount,
  });
}

/// @nodoc
class _$CustomerSearchResponseCopyWithImpl<
  $Res,
  $Val extends CustomerSearchResponse
>
    implements $CustomerSearchResponseCopyWith<$Res> {
  _$CustomerSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerSearchResponse
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
                      as String?,
            orderCount: freezed == orderCount
                ? _value.orderCount
                : orderCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPurchaseAmount: freezed == totalPurchaseAmount
                ? _value.totalPurchaseAmount
                : totalPurchaseAmount // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerSearchResponseImplCopyWith<$Res>
    implements $CustomerSearchResponseCopyWith<$Res> {
  factory _$$CustomerSearchResponseImplCopyWith(
    _$CustomerSearchResponseImpl value,
    $Res Function(_$CustomerSearchResponseImpl) then,
  ) = __$$CustomerSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "cust_id") int? custId,
    @JsonKey(name: "cust_name") String? custName,
    @JsonKey(name: "cust_mobile") String? custMobile,
    @JsonKey(name: "cust_email") String? custEmail,
    @JsonKey(name: "created_date") String? createdDate,
    @JsonKey(name: "is_active") int? isActive,
    @JsonKey(name: "rowcount") int? rowcount,
    @JsonKey(name: "account_id") int? accountId,
    @JsonKey(name: "balance_amt") String? balanceAmt,
    @JsonKey(name: "order_count") int? orderCount,
    @JsonKey(name: "total_purchase_amount") String? totalPurchaseAmount,
  });
}

/// @nodoc
class __$$CustomerSearchResponseImplCopyWithImpl<$Res>
    extends
        _$CustomerSearchResponseCopyWithImpl<$Res, _$CustomerSearchResponseImpl>
    implements _$$CustomerSearchResponseImplCopyWith<$Res> {
  __$$CustomerSearchResponseImplCopyWithImpl(
    _$CustomerSearchResponseImpl _value,
    $Res Function(_$CustomerSearchResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerSearchResponse
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
      _$CustomerSearchResponseImpl(
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
                  as String?,
        orderCount: freezed == orderCount
            ? _value.orderCount
            : orderCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPurchaseAmount: freezed == totalPurchaseAmount
            ? _value.totalPurchaseAmount
            : totalPurchaseAmount // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerSearchResponseImpl implements _CustomerSearchResponse {
  const _$CustomerSearchResponseImpl({
    @JsonKey(name: "cust_id") this.custId,
    @JsonKey(name: "cust_name") this.custName,
    @JsonKey(name: "cust_mobile") this.custMobile,
    @JsonKey(name: "cust_email") this.custEmail,
    @JsonKey(name: "created_date") this.createdDate,
    @JsonKey(name: "is_active") this.isActive,
    @JsonKey(name: "rowcount") this.rowcount,
    @JsonKey(name: "account_id") this.accountId,
    @JsonKey(name: "balance_amt") this.balanceAmt,
    @JsonKey(name: "order_count") this.orderCount,
    @JsonKey(name: "total_purchase_amount") this.totalPurchaseAmount,
  });

  factory _$CustomerSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerSearchResponseImplFromJson(json);

  @override
  @JsonKey(name: "cust_id")
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
  @JsonKey(name: "is_active")
  final int? isActive;
  @override
  @JsonKey(name: "rowcount")
  final int? rowcount;
  @override
  @JsonKey(name: "account_id")
  final int? accountId;
  @override
  @JsonKey(name: "balance_amt")
  final String? balanceAmt;
  @override
  @JsonKey(name: "order_count")
  final int? orderCount;
  @override
  @JsonKey(name: "total_purchase_amount")
  final String? totalPurchaseAmount;

  @override
  String toString() {
    return 'CustomerSearchResponse(custId: $custId, custName: $custName, custMobile: $custMobile, custEmail: $custEmail, createdDate: $createdDate, isActive: $isActive, rowcount: $rowcount, accountId: $accountId, balanceAmt: $balanceAmt, orderCount: $orderCount, totalPurchaseAmount: $totalPurchaseAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerSearchResponseImpl &&
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

  /// Create a copy of CustomerSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerSearchResponseImplCopyWith<_$CustomerSearchResponseImpl>
  get copyWith =>
      __$$CustomerSearchResponseImplCopyWithImpl<_$CustomerSearchResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerSearchResponseImplToJson(this);
  }
}

abstract class _CustomerSearchResponse implements CustomerSearchResponse {
  const factory _CustomerSearchResponse({
    @JsonKey(name: "cust_id") final int? custId,
    @JsonKey(name: "cust_name") final String? custName,
    @JsonKey(name: "cust_mobile") final String? custMobile,
    @JsonKey(name: "cust_email") final String? custEmail,
    @JsonKey(name: "created_date") final String? createdDate,
    @JsonKey(name: "is_active") final int? isActive,
    @JsonKey(name: "rowcount") final int? rowcount,
    @JsonKey(name: "account_id") final int? accountId,
    @JsonKey(name: "balance_amt") final String? balanceAmt,
    @JsonKey(name: "order_count") final int? orderCount,
    @JsonKey(name: "total_purchase_amount") final String? totalPurchaseAmount,
  }) = _$CustomerSearchResponseImpl;

  factory _CustomerSearchResponse.fromJson(Map<String, dynamic> json) =
      _$CustomerSearchResponseImpl.fromJson;

  @override
  @JsonKey(name: "cust_id")
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
  @JsonKey(name: "is_active")
  int? get isActive;
  @override
  @JsonKey(name: "rowcount")
  int? get rowcount;
  @override
  @JsonKey(name: "account_id")
  int? get accountId;
  @override
  @JsonKey(name: "balance_amt")
  String? get balanceAmt;
  @override
  @JsonKey(name: "order_count")
  int? get orderCount;
  @override
  @JsonKey(name: "total_purchase_amount")
  String? get totalPurchaseAmount;

  /// Create a copy of CustomerSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerSearchResponseImplCopyWith<_$CustomerSearchResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
